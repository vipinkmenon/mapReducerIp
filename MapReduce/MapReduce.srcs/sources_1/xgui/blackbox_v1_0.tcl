# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_DATAPORT1_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_DATAPORT1_ARUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_DATAPORT1_AWUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_DATAPORT1_BUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_DATAPORT1_CACHE_VALUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_DATAPORT1_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_DATAPORT1_ID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_DATAPORT1_PROT_VALUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_DATAPORT1_RUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_DATAPORT1_TARGET_ADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_DATAPORT1_USER_VALUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_DATAPORT1_WSTRB_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_DATAPORT1_WUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_WSTRB_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_const_logic_0" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_const_logic_1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_true" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_DATA_WIDTH { PARAM_VALUE.C_DATA_WIDTH } {
	# Procedure called to update C_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_DATA_WIDTH { PARAM_VALUE.C_DATA_WIDTH } {
	# Procedure called to validate C_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_DATAPORT1_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_DATAPORT1_ADDR_WIDTH } {
	# Procedure called to update C_M_AXI_DATAPORT1_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_DATAPORT1_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_DATAPORT1_ADDR_WIDTH } {
	# Procedure called to validate C_M_AXI_DATAPORT1_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_DATAPORT1_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_DATAPORT1_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_DATAPORT1_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_DATAPORT1_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_DATAPORT1_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_DATAPORT1_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_DATAPORT1_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_DATAPORT1_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_DATAPORT1_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_DATAPORT1_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_DATAPORT1_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_DATAPORT1_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_DATAPORT1_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_DATAPORT1_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_DATAPORT1_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_DATAPORT1_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_DATAPORT1_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_DATAPORT1_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_DATAPORT1_CACHE_VALUE { PARAM_VALUE.C_M_AXI_DATAPORT1_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_DATAPORT1_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_DATAPORT1_CACHE_VALUE { PARAM_VALUE.C_M_AXI_DATAPORT1_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_DATAPORT1_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_DATAPORT1_DATA_WIDTH { PARAM_VALUE.C_M_AXI_DATAPORT1_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_DATAPORT1_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_DATAPORT1_DATA_WIDTH { PARAM_VALUE.C_M_AXI_DATAPORT1_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_DATAPORT1_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_DATAPORT1_ID_WIDTH { PARAM_VALUE.C_M_AXI_DATAPORT1_ID_WIDTH } {
	# Procedure called to update C_M_AXI_DATAPORT1_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_DATAPORT1_ID_WIDTH { PARAM_VALUE.C_M_AXI_DATAPORT1_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_DATAPORT1_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_DATAPORT1_PROT_VALUE { PARAM_VALUE.C_M_AXI_DATAPORT1_PROT_VALUE } {
	# Procedure called to update C_M_AXI_DATAPORT1_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_DATAPORT1_PROT_VALUE { PARAM_VALUE.C_M_AXI_DATAPORT1_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_DATAPORT1_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_DATAPORT1_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_DATAPORT1_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_DATAPORT1_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_DATAPORT1_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_DATAPORT1_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_DATAPORT1_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_DATAPORT1_TARGET_ADDR { PARAM_VALUE.C_M_AXI_DATAPORT1_TARGET_ADDR } {
	# Procedure called to update C_M_AXI_DATAPORT1_TARGET_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_DATAPORT1_TARGET_ADDR { PARAM_VALUE.C_M_AXI_DATAPORT1_TARGET_ADDR } {
	# Procedure called to validate C_M_AXI_DATAPORT1_TARGET_ADDR
	return true
}

proc update_PARAM_VALUE.C_M_AXI_DATAPORT1_USER_VALUE { PARAM_VALUE.C_M_AXI_DATAPORT1_USER_VALUE } {
	# Procedure called to update C_M_AXI_DATAPORT1_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_DATAPORT1_USER_VALUE { PARAM_VALUE.C_M_AXI_DATAPORT1_USER_VALUE } {
	# Procedure called to validate C_M_AXI_DATAPORT1_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_DATAPORT1_WSTRB_WIDTH { PARAM_VALUE.C_M_AXI_DATAPORT1_WSTRB_WIDTH } {
	# Procedure called to update C_M_AXI_DATAPORT1_WSTRB_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_DATAPORT1_WSTRB_WIDTH { PARAM_VALUE.C_M_AXI_DATAPORT1_WSTRB_WIDTH } {
	# Procedure called to validate C_M_AXI_DATAPORT1_WSTRB_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_DATAPORT1_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_DATAPORT1_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_DATAPORT1_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_DATAPORT1_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_DATAPORT1_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_DATAPORT1_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_WSTRB_WIDTH { PARAM_VALUE.C_WSTRB_WIDTH } {
	# Procedure called to update C_WSTRB_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_WSTRB_WIDTH { PARAM_VALUE.C_WSTRB_WIDTH } {
	# Procedure called to validate C_WSTRB_WIDTH
	return true
}

proc update_PARAM_VALUE.ap_const_logic_0 { PARAM_VALUE.ap_const_logic_0 } {
	# Procedure called to update ap_const_logic_0 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_const_logic_0 { PARAM_VALUE.ap_const_logic_0 } {
	# Procedure called to validate ap_const_logic_0
	return true
}

proc update_PARAM_VALUE.ap_const_logic_1 { PARAM_VALUE.ap_const_logic_1 } {
	# Procedure called to update ap_const_logic_1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_const_logic_1 { PARAM_VALUE.ap_const_logic_1 } {
	# Procedure called to validate ap_const_logic_1
	return true
}

proc update_PARAM_VALUE.ap_true { PARAM_VALUE.ap_true } {
	# Procedure called to update ap_true when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_true { PARAM_VALUE.ap_true } {
	# Procedure called to validate ap_true
	return true
}


proc update_MODELPARAM_VALUE.ap_const_logic_1 { MODELPARAM_VALUE.ap_const_logic_1 PARAM_VALUE.ap_const_logic_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_const_logic_1}] ${MODELPARAM_VALUE.ap_const_logic_1}
}

proc update_MODELPARAM_VALUE.ap_const_logic_0 { MODELPARAM_VALUE.ap_const_logic_0 PARAM_VALUE.ap_const_logic_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_const_logic_0}] ${MODELPARAM_VALUE.ap_const_logic_0}
}

proc update_MODELPARAM_VALUE.ap_true { MODELPARAM_VALUE.ap_true PARAM_VALUE.ap_true } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_true}] ${MODELPARAM_VALUE.ap_true}
}

proc update_MODELPARAM_VALUE.C_M_AXI_DATAPORT1_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_DATAPORT1_ID_WIDTH PARAM_VALUE.C_M_AXI_DATAPORT1_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_DATAPORT1_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_DATAPORT1_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_DATAPORT1_ADDR_WIDTH { MODELPARAM_VALUE.C_M_AXI_DATAPORT1_ADDR_WIDTH PARAM_VALUE.C_M_AXI_DATAPORT1_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_DATAPORT1_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_DATAPORT1_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_DATAPORT1_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_DATAPORT1_DATA_WIDTH PARAM_VALUE.C_M_AXI_DATAPORT1_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_DATAPORT1_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_DATAPORT1_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_DATAPORT1_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_DATAPORT1_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_DATAPORT1_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_DATAPORT1_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_DATAPORT1_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_DATAPORT1_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_DATAPORT1_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_DATAPORT1_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_DATAPORT1_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_DATAPORT1_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_DATAPORT1_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_DATAPORT1_WUSER_WIDTH PARAM_VALUE.C_M_AXI_DATAPORT1_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_DATAPORT1_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_DATAPORT1_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_DATAPORT1_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_DATAPORT1_RUSER_WIDTH PARAM_VALUE.C_M_AXI_DATAPORT1_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_DATAPORT1_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_DATAPORT1_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_DATAPORT1_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_DATAPORT1_BUSER_WIDTH PARAM_VALUE.C_M_AXI_DATAPORT1_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_DATAPORT1_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_DATAPORT1_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_DATA_WIDTH { MODELPARAM_VALUE.C_DATA_WIDTH PARAM_VALUE.C_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_DATA_WIDTH}] ${MODELPARAM_VALUE.C_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_DATAPORT1_TARGET_ADDR { MODELPARAM_VALUE.C_M_AXI_DATAPORT1_TARGET_ADDR PARAM_VALUE.C_M_AXI_DATAPORT1_TARGET_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_DATAPORT1_TARGET_ADDR}] ${MODELPARAM_VALUE.C_M_AXI_DATAPORT1_TARGET_ADDR}
}

proc update_MODELPARAM_VALUE.C_M_AXI_DATAPORT1_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_DATAPORT1_USER_VALUE PARAM_VALUE.C_M_AXI_DATAPORT1_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_DATAPORT1_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_DATAPORT1_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_DATAPORT1_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_DATAPORT1_PROT_VALUE PARAM_VALUE.C_M_AXI_DATAPORT1_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_DATAPORT1_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_DATAPORT1_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_DATAPORT1_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_DATAPORT1_CACHE_VALUE PARAM_VALUE.C_M_AXI_DATAPORT1_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_DATAPORT1_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_DATAPORT1_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_DATAPORT1_WSTRB_WIDTH { MODELPARAM_VALUE.C_M_AXI_DATAPORT1_WSTRB_WIDTH PARAM_VALUE.C_M_AXI_DATAPORT1_WSTRB_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_DATAPORT1_WSTRB_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_DATAPORT1_WSTRB_WIDTH}
}

proc update_MODELPARAM_VALUE.C_WSTRB_WIDTH { MODELPARAM_VALUE.C_WSTRB_WIDTH PARAM_VALUE.C_WSTRB_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_WSTRB_WIDTH}] ${MODELPARAM_VALUE.C_WSTRB_WIDTH}
}

