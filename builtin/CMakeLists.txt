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

	#add_subdirectory(registry)

	# combine all BDATLIST to builtin_list.h
	get_property(bdatlist GLOBAL PROPERTY NUTTX_APP_BDATLIST)
	#message(STATUS "registry: ${bdatlist}")
	
	# combine all PDATLIST to builtin_proto.h
	get_property(pdatlist GLOBAL PROPERTY NUTTX_APP_PDATLIST)
	#message(STATUS "registry: ${pdatlist}")

	add_custom_command(
		OUTPUT builtin_list.h builtin_proto.h
		COMMAND touch builtin_list.h # TODO: combine all BDATLIST to builtin_list.h
		COMMAND touch builtin_proto.h # TODO: combine all PDATLIST to builtin_proto.h
	)

	include_directories(${CMAKE_CURRENT_BINARY_DIR})

	nuttx_add_library(apps_builtin
		builtin_forindex.c
		builtin_list.c
		exec_builtin.c

		builtin_list.h
		builtin_proto.h
	)

endif()
