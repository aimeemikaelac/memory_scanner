# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set port_AXILiteS {
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
ap_return { 
	dir o
	width 1
	mode ap_ctrl_hs
	offset 16
}
search_string_0 { 
	dir I
	width 8
	mode ap_hs
	offset 24
}
search_string_1 { 
	dir I
	width 8
	mode ap_hs
	offset 32
}
search_string_2 { 
	dir I
	width 8
	mode ap_hs
	offset 40
}
search_string_3 { 
	dir I
	width 8
	mode ap_hs
	offset 48
}
search_string_4 { 
	dir I
	width 8
	mode ap_hs
	offset 56
}
search_string_5 { 
	dir I
	width 8
	mode ap_hs
	offset 64
}
search_string_6 { 
	dir I
	width 8
	mode ap_hs
	offset 72
}
search_string_7 { 
	dir I
	width 8
	mode ap_hs
	offset 80
}
search_string_8 { 
	dir I
	width 8
	mode ap_hs
	offset 88
}
search_string_9 { 
	dir I
	width 8
	mode ap_hs
	offset 96
}
search_string_10 { 
	dir I
	width 8
	mode ap_hs
	offset 104
}
search_string_11 { 
	dir I
	width 8
	mode ap_hs
	offset 112
}
search_string_12 { 
	dir I
	width 8
	mode ap_hs
	offset 120
}
search_string_13 { 
	dir I
	width 8
	mode ap_hs
	offset 128
}
search_string_14 { 
	dir I
	width 8
	mode ap_hs
	offset 136
}
search_string_15 { 
	dir I
	width 8
	mode ap_hs
	offset 144
}
search_string_16 { 
	dir I
	width 8
	mode ap_hs
	offset 152
}
count_out { 
	dir O
	width 32
	mode ap_vld
	offset 160
}
}


# Native S_AXILite:
if {${::AESL::PGuard_simmodel_gen}} {
	if {[info proc ::AESL_LIB_XILADAPTER::s_axilite_gen] == "::AESL_LIB_XILADAPTER::s_axilite_gen"} {
		eval "::AESL_LIB_XILADAPTER::s_axilite_gen { \
			id 1 \
			corename memory_scanner_AXILiteS_axilite \
			name memory_scanner_AXILiteS_s_axi \
			ports {$port_AXILiteS} \
			op interface \
		} "
	} else {
		puts "@W \[IMPL-110\] Cannot find AXI Lite interface model in the library. Ignored generation of AXI Lite  interface for 'AXILiteS'"
	}
}

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler memory_scanner_AXILiteS_s_axi
}

# Native M_AXI:
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::m_axi_gen] == "::AESL_LIB_XILADAPTER::m_axi_gen"} {
eval "::AESL_LIB_XILADAPTER::m_axi_gen { \
    id 2 \
    corename {m_axi} \
    op interface \
    name {memory_scanner_m_mm2s_ctl_m_axi} \
} "
} else {
puts "@W \[IMPL-110\] Cannot find AXI interface model in the library. Ignored generation of AXI interface for 'm_mm2s_ctl'"
}
}

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler memory_scanner_m_mm2s_ctl_m_axi
}

# Native M_AXI:
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::m_axi_gen] == "::AESL_LIB_XILADAPTER::m_axi_gen"} {
eval "::AESL_LIB_XILADAPTER::m_axi_gen { \
    id 3 \
    corename {m_axi} \
    op interface \
    name {memory_scanner_m_s2mm_ctl_m_axi} \
} "
} else {
puts "@W \[IMPL-110\] Cannot find AXI interface model in the library. Ignored generation of AXI interface for 'm_s2mm_ctl'"
}
}

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler memory_scanner_m_s2mm_ctl_m_axi
}

# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 4 \
    name s_in_V_V \
    reset_level 0 \
    sync_rst true \
    corename {} \
    metadata {  } \
    op interface \
    ports { s_in_V_V_TDATA { I 32 vector } s_in_V_V_TVALID { I 1 bit } s_in_V_V_TREADY { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 's_in_V_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 5 \
    name s_out_V_V \
    reset_level 0 \
    sync_rst true \
    corename {} \
    metadata {  } \
    op interface \
    ports { s_out_V_V_TDATA { O 32 vector } s_out_V_V_TVALID { O 1 bit } s_out_V_V_TREADY { I 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 's_out_V_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_return \
    type ap_return \
    reset_level 0 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 1 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 0 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst_n
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 0 \
    sync_rst true \
    corename apif_ap_rst_n \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


