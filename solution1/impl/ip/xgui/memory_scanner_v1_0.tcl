# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
	set Page0 [ipgui::add_page $IPINST -name "1" -layout vertical]
	set canvas_spec [ipgui::get_canvasspec -of $IPINST]
	set_property ip_logo "misc/logo.png" $canvas_spec
	set Component_Name [ipgui::add_param $IPINST -parent $Page0 -name Component_Name]
	set tabgroup0 [ipgui::add_group $IPINST -parent $Page0 -name {s axi AXILiteS (AXI4Lite Slave Interface)} -layout vertical]
	set C_S_AXI_AXILITES_ADDR_WIDTH [ipgui::add_param $IPINST -parent $tabgroup0 -name C_S_AXI_AXILITES_ADDR_WIDTH]
	set tabgroup1 [ipgui::add_group $IPINST -parent $Page0 -name {m axi ddr (AXI4 Master Interface)} -layout vertical]
	set C_M_AXI_DDR_ID_WIDTH [ipgui::add_param $IPINST -parent $tabgroup1 -name C_M_AXI_DDR_ID_WIDTH]
	set C_M_AXI_DDR_DATA_WIDTH [ipgui::add_param $IPINST -parent $tabgroup1 -name C_M_AXI_DDR_DATA_WIDTH]
	set C_M_AXI_DDR_AWUSER_WIDTH [ipgui::add_param $IPINST -parent $tabgroup1 -name C_M_AXI_DDR_AWUSER_WIDTH]
	set C_M_AXI_DDR_WUSER_WIDTH [ipgui::add_param $IPINST -parent $tabgroup1 -name C_M_AXI_DDR_WUSER_WIDTH]
	set C_M_AXI_DDR_BUSER_WIDTH [ipgui::add_param $IPINST -parent $tabgroup1 -name C_M_AXI_DDR_BUSER_WIDTH]
	set C_M_AXI_DDR_ARUSER_WIDTH [ipgui::add_param $IPINST -parent $tabgroup1 -name C_M_AXI_DDR_ARUSER_WIDTH]
	set C_M_AXI_DDR_RUSER_WIDTH [ipgui::add_param $IPINST -parent $tabgroup1 -name C_M_AXI_DDR_RUSER_WIDTH]
	set C_M_AXI_DDR_USER_VALUE [ipgui::add_param $IPINST -parent $tabgroup1 -name C_M_AXI_DDR_USER_VALUE]
	set C_M_AXI_DDR_PROT_VALUE [ipgui::add_param $IPINST -parent $tabgroup1 -name C_M_AXI_DDR_PROT_VALUE]
	set C_M_AXI_DDR_CACHE_VALUE [ipgui::add_param $IPINST -parent $tabgroup1 -name C_M_AXI_DDR_CACHE_VALUE]
	set C_M_AXI_DDR_TARGET_ADDR [ipgui::add_param $IPINST -parent $tabgroup1 -name C_M_AXI_DDR_TARGET_ADDR]
}

proc update_PARAM_VALUE.C_S_AXI_AXILITES_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_AXILITES_ADDR_WIDTH } {
	# Procedure called to update C_S_AXI_AXILITES_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_AXILITES_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_AXILITES_ADDR_WIDTH } {
	# Procedure called to validate C_S_AXI_AXILITES_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_DDR_ID_WIDTH { PARAM_VALUE.C_M_AXI_DDR_ID_WIDTH } {
	# Procedure called to update C_M_AXI_DDR_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_DDR_ID_WIDTH { PARAM_VALUE.C_M_AXI_DDR_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_DDR_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_DDR_DATA_WIDTH { PARAM_VALUE.C_M_AXI_DDR_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_DDR_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_DDR_DATA_WIDTH { PARAM_VALUE.C_M_AXI_DDR_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_DDR_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_DDR_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_DDR_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_DDR_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_DDR_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_DDR_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_DDR_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_DDR_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_DDR_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_DDR_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_DDR_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_DDR_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_DDR_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_DDR_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_DDR_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_DDR_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_DDR_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_DDR_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_DDR_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_DDR_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_DDR_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_DDR_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_DDR_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_DDR_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_DDR_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_DDR_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_DDR_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_DDR_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_DDR_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_DDR_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_DDR_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_DDR_USER_VALUE { PARAM_VALUE.C_M_AXI_DDR_USER_VALUE } {
	# Procedure called to update C_M_AXI_DDR_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_DDR_USER_VALUE { PARAM_VALUE.C_M_AXI_DDR_USER_VALUE } {
	# Procedure called to validate C_M_AXI_DDR_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_DDR_PROT_VALUE { PARAM_VALUE.C_M_AXI_DDR_PROT_VALUE } {
	# Procedure called to update C_M_AXI_DDR_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_DDR_PROT_VALUE { PARAM_VALUE.C_M_AXI_DDR_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_DDR_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_DDR_CACHE_VALUE { PARAM_VALUE.C_M_AXI_DDR_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_DDR_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_DDR_CACHE_VALUE { PARAM_VALUE.C_M_AXI_DDR_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_DDR_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_DDR_TARGET_ADDR { PARAM_VALUE.C_M_AXI_DDR_TARGET_ADDR } {
	# Procedure called to update C_M_AXI_DDR_TARGET_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_DDR_TARGET_ADDR { PARAM_VALUE.C_M_AXI_DDR_TARGET_ADDR } {
	# Procedure called to validate C_M_AXI_DDR_TARGET_ADDR
	return true
}


proc update_MODELPARAM_VALUE.C_S_AXI_AXILITES_ADDR_WIDTH { MODELPARAM_VALUE.C_S_AXI_AXILITES_ADDR_WIDTH PARAM_VALUE.C_S_AXI_AXILITES_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_AXILITES_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_AXILITES_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_DDR_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_DDR_ID_WIDTH PARAM_VALUE.C_M_AXI_DDR_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_DDR_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_DDR_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_DDR_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_DDR_DATA_WIDTH PARAM_VALUE.C_M_AXI_DDR_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_DDR_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_DDR_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_DDR_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_DDR_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_DDR_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_DDR_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_DDR_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_DDR_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_DDR_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_DDR_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_DDR_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_DDR_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_DDR_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_DDR_WUSER_WIDTH PARAM_VALUE.C_M_AXI_DDR_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_DDR_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_DDR_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_DDR_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_DDR_RUSER_WIDTH PARAM_VALUE.C_M_AXI_DDR_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_DDR_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_DDR_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_DDR_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_DDR_BUSER_WIDTH PARAM_VALUE.C_M_AXI_DDR_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_DDR_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_DDR_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_DDR_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_DDR_USER_VALUE PARAM_VALUE.C_M_AXI_DDR_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_DDR_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_DDR_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_DDR_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_DDR_PROT_VALUE PARAM_VALUE.C_M_AXI_DDR_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_DDR_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_DDR_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_DDR_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_DDR_CACHE_VALUE PARAM_VALUE.C_M_AXI_DDR_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_DDR_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_DDR_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_DDR_TARGET_ADDR { MODELPARAM_VALUE.C_M_AXI_DDR_TARGET_ADDR PARAM_VALUE.C_M_AXI_DDR_TARGET_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_DDR_TARGET_ADDR}] ${MODELPARAM_VALUE.C_M_AXI_DDR_TARGET_ADDR}
}

