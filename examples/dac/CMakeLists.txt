if("${CONFIG_EXAMPLES_DAC}" STREQUAL "y")
	nuttx_add_application(
		APPLICATION
			dac
endif()
