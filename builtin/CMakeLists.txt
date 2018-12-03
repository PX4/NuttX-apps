############################################################################
# apps/builtin/CMakeLists.txt
# Adds selected applications to apps/ build
#
#   Copyright (C) 2012 Gregory Nutt. All rights reserved.
#   Author: Gregory Nutt <gnutt@nuttx.org>
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
#
# 1. Redistributions of source code must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
# 2. Redistributions in binary form must reproduce the above copyright
#    notice, this list of conditions and the following disclaimer in
#    the documentation and/or other materials provided with the
#    distribution.
# 3. Neither the name NuttX nor the names of its contributors may be
#    used to endorse or promote products derived from this software
#    without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
# FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
# COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
# INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
# BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
# OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
# AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
# LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
# ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.
#
############################################################################

if("${CONFIG_BUILTIN}" STREQUAL "y")

	include_directories(${CMAKE_CURRENT_BINARY_DIR})

	# generate registry
	get_property(nuttx_app_libs GLOBAL PROPERTY NUTTX_APP_LIBS)
	set(builtin_list_string)
	set(builtin_proto_string)
	foreach(module ${nuttx_app_libs})

		# builtin_list.h
		#  Example:
		#   { "hello", SCHED_PRIORITY_DEFAULT, 2048, hello_main },
		#
		get_target_property(APP_MAIN ${module} APP_MAIN)
		get_target_property(APP_NAME ${module} APP_NAME)
		get_target_property(APP_PRIORITY ${module} APP_PRIORITY)
		get_target_property(APP_STACK ${module} APP_STACK)
		set(builtin_list_string "${builtin_list_string}\{ \"${APP_NAME}\", ${APP_PRIORITY}, ${APP_STACK}, ${APP_MAIN} \},  \n")

		# builtin_proto.h
		#  Example:
		#   int hello_main(int argc, char *argv[]);
		set(builtin_proto_string "${builtin_proto_string}int ${APP_MAIN}(int argc, char *argv[]);\n")

	endforeach()

	configure_file(builtin_proto.h.in builtin_proto.h)
	configure_file(builtin_list.h.in builtin_list.h)


	nuttx_add_library(apps_builtin
		builtin_forindex.c
		builtin_list.c
		exec_builtin.c

		builtin_list.h
		builtin_proto.h
	)

	foreach(module ${nuttx_app_libs})
		target_link_libraries(apps_builtin PRIVATE ${module})
	endforeach()

endif()
