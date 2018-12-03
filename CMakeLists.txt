
include(nuttx_add_application)

add_library(apps INTERFACE)

include_directories(include)
#add_subdirectory(canutils)
add_subdirectory(examples)
add_subdirectory(fsutils)
#add_subdirectory(gpsutils)
#add_subdirectory(graphics)
#add_subdirectory(import)
#add_subdirectory(interpreters)
#add_subdirectory(modbus)
add_subdirectory(netutils)
add_subdirectory(nshlib)
add_subdirectory(platform)
add_subdirectory(system)
#add_subdirectory(testing)
#add_subdirectory(tools)
#add_subdirectory(wireless)

add_subdirectory(builtin) # must be last
