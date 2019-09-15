# apps/netutils/netlib/Make.defs
# Adds selected applications to apps/ build
#
#   Copyright (C) 2016 Gregory Nutt. All rights reserved.
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

if("${CONFIG_NETUTILS_NETLIB}" STREQUAL "y")

	set(CSRCS)

	list(APPEND CSRCS netlib_ipv4addrconv.c netlib_ethaddrconv.c netlib_parsehttpurl.c)
	list(APPEND CSRCS netlib_setifstatus.c netlib_getifstatus.c)
		
	# IP address support
	
	if("${CONFIG_NET_IPv4}" STREQUAL "y")
		list(APPEND CSRCS netlib_setipv4addr.c netlib_getipv4addr.c)
		list(APPEND CSRCS netlib_setdripv4addr.c netlib_setipv4netmask.c)
		list(APPEND CSRCS netlib_getdripv4addr.c netlib_getipv4netmask.c)
		list(APPEND CSRCS netlib_ipv4adaptor.c)

		if("${CONFIG_NET_ARP}" STREQUAL "y")
			list(APPEND CSRCS netlib_getarp.c netlib_setarp.c netlib_delarp.c)
		endif()
		if("${CONFIG_NETDB_DNSCLIENT}" STREQUAL "y")
			list(APPEND CSRCS netlib_setipv4dnsaddr.c)
			endif()
		if("${CONFIG_NET_ROUTE}" STREQUAL "y")
			list(APPEND CSRCS netlib_ipv4route.c netlib_ipv4router.c)
		endif()
	endif()
	
	if("${CONFIG_NET_IPv6}" STREQUAL "y")
		list(APPEND CSRCS netlib_setipv6addr.c netlib_getipv6addr.c)
		list(APPEND CSRCS netlib_setdripv6addr.c netlib_setipv6netmask.c)
		list(APPEND CSRCS netlib_prefix2ipv6netmask.c netlib_ipv6netmask2prefix.c)
		list(APPEND CSRCS netlib_ipv6adaptor.c)

		if("${CONFIG_NET_ICMPv6_AUTOCONF}" STREQUAL "y")
			list(APPEND CSRCS netlib_autoconfig.c)
		endif()
		if("${CONFIG_NET_ROUTE}" STREQUAL "y")
			list(APPEND CSRCS netlib_ipv6route.c netlib_ipv6router.c)
		endif()
	endif()

	# These require TCP support
	
	if("${CONFIG_NET_TCP}" STREQUAL "y")
		if("${CONFIG_NET_IPv4}" STREQUAL "y") # Not yet available for IPv6
			list(APPEND CSRCS netlib_server.c netlib_listenon.c)
		endif()
	endif()
	
	# These require wireless IOCTL support */
	
	if("${CONFIG_NETDEV_WIRELESS_IOCTL}" STREQUAL "y")
		list(APPEND CSRCS netlib_getessid.c netlib_setessid.c)
	endif()
	
	# MAC address support(Ethernet and 6LoWPAN only)
	
	if("${CONFIG_NET_ETHERNET}" STREQUAL "y")
		list(APPEND CSRCS netlib_setmacaddr.c netlib_getmacaddr.c)
	endif()
	
	if("${WIRELESS_IEEE802154}" STREQUAL "y")
		list(APPEND CSRCS netlib_seteaddr.c netlib_getpanid.c netlib_saddrconv.c netlib_eaddrconv.c)
	endif()
	
	if("${WIRELESS_PKTRADIO}" STREQUAL "y")
		list(APPEND CSRCS netlib_getproperties.c netlib_getnodeaddr.c netlib_setnodeaddr.c)
		list(APPEND CSRCS netlib_nodeaddrconv.c)
	endif()

	# IGMP support

	if("${CONFIG_NET_IGMP}" STREQUAL "y")
		if("${CONFIG_NET_IPv4}" STREQUAL "y") # Not yet available for IPv6
			list(APPEND CSRCS netlib_ipmsfilter.c)
		endif()
	endif()

	nuttx_add_library(netlib ${CSRCS})

endif()

