############################################################################
# apps/nshlib/CMakeLists.txt
#
#   Copyright (C) 2011-2013, 2016 Gregory Nutt. All rights reserved.
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

if("${CONFIG_NSH_LIBRARY}" STREQUAL "y")

	set(CSRCS)

	# NSH Library

	list(APPEND CSRCS nsh_init.c nsh_parse.c nsh_console.c nsh_script.c nsh_system.c)
	list(APPEND CSRCS nsh_command.c nsh_fscmds.c nsh_ddcmd.c nsh_proccmds.c nsh_mmcmds.c)
	list(APPEND CSRCS nsh_timcmds.c nsh_envcmds.c nsh_syscmds.c nsh_dbgcmds.c)

	if("${CONFIG_NFILE_STREAMS}" STREQUAL "0")
		list(APPEND CSRCS nsh_stdsession.c)
		if("${CONFIG_NSH_CONSOLE_LOGIN}" STREQUAL "y")
			list(APPEND CSRCS nsh_stdlogin.c)
		endif()
	else()
		list(APPEND CSRCS nsh_session.c)
		if("${CONFIG_NSH_CONSOLE_LOGIN}" STREQUAL "y")
			list(APPEND CSRCS nsh_login.c)
		endif()
	endif()

	if(NOT "${CONFIG_NFILE_DESCRIPTORS}" STREQUAL "0")
		list(APPEND CSRCS nsh_fsutils.c)
	endif()

	if("${CONFIG_NSH_BUILTIN_APPS}" STREQUAL "y")
		list(APPEND CSRCS nsh_builtin.c)
	endif()

	if("${CONFIG_NSH_FILE_APPS}" STREQUAL "y")
		list(APPEND CSRCS nsh_fileapps.c)
	endif()

	if("${CONFIG_NSH_VARS}" STREQUAL "y")
		list(APPEND CSRCS nsh_vars.c)
	endif()

	if("${CONFIG_NSH_ROMFSETC}" STREQUAL "y")
		list(APPEND CSRCS nsh_romfsetc.c)
	endif()

	if("${CONFIG_NET}" STREQUAL "y")
		list(APPEND CSRCS nsh_netinit.c nsh_netcmds.c)

		if("${CONFIG_WIRELESS_WAPI}" STREQUAL "y")
			if("${CONFIG_NSH_NETINIT}" STREQUAL "y")
				if(NOT "${CONFIG_NSH_NETLOCAL}" STREQUAL "y")
					list(APPEND CSRCS nsh_associate.c)
				endif()
			endif()
		endif()

		if("${CONFIG_NET_ROUTE}" STREQUAL "y")
			list(APPEND CSRCS nsh_routecmds.c)
		endif()
	endif()

	if(NOT "${CONFIG_DISABLE_MOUNTPOINT}" STREQUAL "y")
		list(APPEND CSRCS nsh_mntcmds.c)
	endif()

	if("${CONFIG_MODULE}" STREQUAL "y")
		if(NOT "${CONFIG_NSH_DISABLE_MODCMDS}" STREQUAL "y")
			list(APPEND CSRCS nsh_modcmds.c)
		endif()
	endif()

	if("${CONFIG_NSH_CONSOLE}" STREQUAL "y")
		list(APPEND CSRCS nsh_consolemain.c)
	endif()

	if(NOT "${CONFIG_NSH_DISABLE_PRINTF}" STREQUAL "y")
		list(APPEND CSRCS nsh_printf.c)
	endif()

	if("${CONFIG_NSH_TELNET}" STREQUAL "y")
		list(APPEND CSRCS nsh_telnetd.c)
		if("${CONFIG_NSH_TELNET_LOGIN}" STREQUAL "y")
			list(APPEND CSRCS nsh_telnetlogin.c)
		endif()
	endif()

	if(NOT "${CONFIG_NSH_DISABLESCRIPT}" STREQUAL "y")
		list(APPEND CSRCS nsh_test.c)
	endif()

	if("${CONFIG_USBDEV}" STREQUAL "y")
		list(APPEND CSRCS nsh_usbconsole.c)
	endif()

	if("${CONFIG_NSH_ALTCONDEV}" STREQUAL "y")
		list(APPEND CSRCS nsh_altconsole.c)
	endif()

	if("${CONFIG_NSH_USBDEV_TRACE}" STREQUAL "y")
		list(APPEND CSRCS nsh_usbtrace.c)
	endif()

	if("${CONFIG_NETUTILS_CODECS}" STREQUAL "y")
		list(APPEND CSRCS nsh_codeccmd.c)
	endif()

	if("${CONFIG_NSH_LOGIN_PASSWD}" STREQUAL "y")
		list(APPEND CSRCS nsh_passwdcmds.c)
	endif()

	nuttx_add_library(apps_nshlib ${CSRCS})

endif()
