
include(nuttx_parse_function_args)

define_property(GLOBAL PROPERTY NUTTX_APP_LIBS
	BRIEF_DOCS "NuttX application libs"
	FULL_DOCS "List of all NuttX application libraries"
)

#=============================================================================
#
#	nuttx_add_application
#
#	This function builds a static library from a module description.
#
#	Usage:
#		nuttx_add_application(
#			APPLICATION <string>
#			[ PRIORITY <string> ]
#			[ STACKSIZE <string> ]
#			[ COMPILE_FLAGS <list> ]
#			[ INCLUDES <list> ]
#			[ DEPENDS <string> ]
#			[ SRCS <list> ]
#			)
#
#	Input:
#		APPLICATION		: unique name of application
#		PRIORITY		: priority
#		STACKSIZE		: stack size
#		COMPILE_FLAGS	: compile flags
#		SRCS			: source files
#		INCLUDES		: include directories
#		DEPENDS			: targets which this module depends on
#
#	Output:
#		Static library with name matching MODULE.
#		(Or a shared library when DYNAMIC is specified.)
#
#	Example:
#		nuttx_add_application(APPLICATION test
#			SRCS
#				file.cpp
#			STACKSIZE
#				1024
#			DEPENDS
#				nshlib
#			)
#
function(nuttx_add_application)

	nuttx_parse_function_args(
		NAME nuttx_add_application
		ONE_VALUE
			APPLICATION PRIORITY STACKSIZE
		MULTI_VALUE
			COMPILE_FLAGS SRCS INCLUDES DEPENDS
		OPTIONS
		REQUIRED
			APPLICATION SRCS
		ARGN ${ARGN})

	set(TARGET apps_${APPLICATION})

	add_library(${TARGET} EXCLUDE_FROM_ALL ${SRCS})
	add_dependencies(${TARGET} nuttx_context)

	set_property(GLOBAL APPEND PROPERTY NUTTX_APP_LIBS ${TARGET})

	set_target_properties(${TARGET} PROPERTIES APP_MAIN ${APPLICATION}_main)
	set_target_properties(${TARGET} PROPERTIES APP_NAME ${APPLICATION})

	if(PRIORITY)
		set_target_properties(${TARGET} PROPERTIES APP_PRIORITY ${PRIORITY})
	else()
		set_target_properties(${TARGET} PROPERTIES APP_PRIORITY SCHED_PRIORITY_DEFAULT)
	endif()

	if(STACKSIZE)
		set_target_properties(${TARGET} PROPERTIES APP_STACK ${STACKSIZE})
	else()
		set_target_properties(${TARGET} PROPERTIES APP_STACK 1024)
	endif()

	if(COMPILE_FLAGS)
		target_compile_options(${TARGET} PRIVATE ${COMPILE_FLAGS})
	endif()

	if(DEPENDS)
		# using target_link_libraries for dependencies provides linking
		#  as well as interface include and libraries
		foreach(dep ${DEPENDS})
			get_target_property(dep_type ${dep} TYPE)
			if (${dep_type} STREQUAL "STATIC_LIBRARY")
				target_link_libraries(${TARGET} PRIVATE ${dep})
			else()
				add_dependencies(${TARGET} ${dep})
			endif()
		endforeach()
	endif()

endfunction()
