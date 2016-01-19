set moduleName memory_scanner
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName memory_scanner
set C_modelType { int 1 }
set C_modelArgList { 
	{ m_mm2s_ctl int 32 regular {axi_master 2}  }
	{ m_s2mm_ctl int 32 unused {axi_master 0}  }
	{ s_in_V_V int 32 regular {axi_s 0 volatile  { s_in_V_V data } }  }
	{ s_out_V_V int 32 regular {axi_s 1 volatile  { s_out_V_V data } }  }
	{ search_string_0 int 8 regular {axi_slave 0}  }
	{ search_string_1 int 8 regular {axi_slave 0}  }
	{ search_string_2 int 8 regular {axi_slave 0}  }
	{ search_string_3 int 8 regular {axi_slave 0}  }
	{ search_string_4 int 8 regular {axi_slave 0}  }
	{ search_string_5 int 8 regular {axi_slave 0}  }
	{ search_string_6 int 8 regular {axi_slave 0}  }
	{ search_string_7 int 8 regular {axi_slave 0}  }
	{ search_string_8 int 8 regular {axi_slave 0}  }
	{ search_string_9 int 8 regular {axi_slave 0}  }
	{ search_string_10 int 8 regular {axi_slave 0}  }
	{ search_string_11 int 8 regular {axi_slave 0}  }
	{ search_string_12 int 8 regular {axi_slave 0}  }
	{ search_string_13 int 8 regular {axi_slave 0}  }
	{ search_string_14 int 8 regular {axi_slave 0}  }
	{ search_string_15 int 8 regular {axi_slave 0}  }
	{ search_string_16 int 8 regular {axi_slave 0}  }
	{ count_out int 32 regular {axi_slave 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "m_mm2s_ctl", "interface" : "axi_master", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "m_mm2s_ctl","cData": "unsigned int","cArray": [{"low" : 0,"up" : 499,"step" : 1}]}]}]} , 
 	{ "Name" : "m_s2mm_ctl", "interface" : "axi_master", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "m_s2mm_ctl","cData": "unsigned int","cArray": [{"low" : 0,"up" : 499,"step" : 1}]}]}]} , 
 	{ "Name" : "s_in_V_V", "interface" : "axis", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "s_in.V.V","cData": "uint32","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "s_out_V_V", "interface" : "axis", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "s_out.V.V","cData": "uint32","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "search_string_0", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_hs","bitwidth" : 8,"bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "search_string","cData": "unsigned char","cArray": [{"low" : 0,"up" : 0,"step" : 2}]}]}], "offset" : [{"in":24}]} , 
 	{ "Name" : "search_string_1", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_hs","bitwidth" : 8,"bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "search_string","cData": "unsigned char","cArray": [{"low" : 1,"up" : 1,"step" : 2}]}]}], "offset" : [{"in":32}]} , 
 	{ "Name" : "search_string_2", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_hs","bitwidth" : 8,"bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "search_string","cData": "unsigned char","cArray": [{"low" : 2,"up" : 2,"step" : 2}]}]}], "offset" : [{"in":40}]} , 
 	{ "Name" : "search_string_3", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_hs","bitwidth" : 8,"bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "search_string","cData": "unsigned char","cArray": [{"low" : 3,"up" : 3,"step" : 2}]}]}], "offset" : [{"in":48}]} , 
 	{ "Name" : "search_string_4", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_hs","bitwidth" : 8,"bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "search_string","cData": "unsigned char","cArray": [{"low" : 4,"up" : 4,"step" : 2}]}]}], "offset" : [{"in":56}]} , 
 	{ "Name" : "search_string_5", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_hs","bitwidth" : 8,"bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "search_string","cData": "unsigned char","cArray": [{"low" : 5,"up" : 5,"step" : 2}]}]}], "offset" : [{"in":64}]} , 
 	{ "Name" : "search_string_6", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_hs","bitwidth" : 8,"bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "search_string","cData": "unsigned char","cArray": [{"low" : 6,"up" : 6,"step" : 2}]}]}], "offset" : [{"in":72}]} , 
 	{ "Name" : "search_string_7", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_hs","bitwidth" : 8,"bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "search_string","cData": "unsigned char","cArray": [{"low" : 7,"up" : 7,"step" : 2}]}]}], "offset" : [{"in":80}]} , 
 	{ "Name" : "search_string_8", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_hs","bitwidth" : 8,"bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "search_string","cData": "unsigned char","cArray": [{"low" : 8,"up" : 8,"step" : 2}]}]}], "offset" : [{"in":88}]} , 
 	{ "Name" : "search_string_9", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_hs","bitwidth" : 8,"bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "search_string","cData": "unsigned char","cArray": [{"low" : 9,"up" : 9,"step" : 2}]}]}], "offset" : [{"in":96}]} , 
 	{ "Name" : "search_string_10", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_hs","bitwidth" : 8,"bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "search_string","cData": "unsigned char","cArray": [{"low" : 10,"up" : 10,"step" : 2}]}]}], "offset" : [{"in":104}]} , 
 	{ "Name" : "search_string_11", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_hs","bitwidth" : 8,"bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "search_string","cData": "unsigned char","cArray": [{"low" : 11,"up" : 11,"step" : 2}]}]}], "offset" : [{"in":112}]} , 
 	{ "Name" : "search_string_12", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_hs","bitwidth" : 8,"bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "search_string","cData": "unsigned char","cArray": [{"low" : 12,"up" : 12,"step" : 2}]}]}], "offset" : [{"in":120}]} , 
 	{ "Name" : "search_string_13", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_hs","bitwidth" : 8,"bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "search_string","cData": "unsigned char","cArray": [{"low" : 13,"up" : 13,"step" : 2}]}]}], "offset" : [{"in":128}]} , 
 	{ "Name" : "search_string_14", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_hs","bitwidth" : 8,"bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "search_string","cData": "unsigned char","cArray": [{"low" : 14,"up" : 14,"step" : 2}]}]}], "offset" : [{"in":136}]} , 
 	{ "Name" : "search_string_15", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_hs","bitwidth" : 8,"bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "search_string","cData": "unsigned char","cArray": [{"low" : 15,"up" : 15,"step" : 2}]}]}], "offset" : [{"in":144}]} , 
 	{ "Name" : "search_string_16", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_hs","bitwidth" : 8,"bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "search_string","cData": "unsigned char","cArray": [{"low" : 16,"up" : 16,"step" : 2}]}]}], "offset" : [{"in":152}]} , 
 	{ "Name" : "count_out", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_vld","bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "count_out","cData": "int","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : [{"out":160}]} , 
 	{ "Name" : "ap_return", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "return","cData": "bool","cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}], "offset" : [{"out":16}]} ]}
# RTL Port declarations: 
set portNum 116
set portList { 
	{ s_axi_AXILiteS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWADDR sc_in sc_lv 8 signal -1 } 
	{ s_axi_AXILiteS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXILiteS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARADDR sc_in sc_lv 8 signal -1 } 
	{ s_axi_AXILiteS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_AXILiteS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_m_mm2s_ctl_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_m_mm2s_ctl_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_m_mm2s_ctl_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_m_mm2s_ctl_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_m_mm2s_ctl_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_m_mm2s_ctl_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_m_mm2s_ctl_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_m_mm2s_ctl_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_m_mm2s_ctl_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_m_mm2s_ctl_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_m_mm2s_ctl_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_m_mm2s_ctl_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_m_mm2s_ctl_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_m_mm2s_ctl_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_m_mm2s_ctl_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_m_mm2s_ctl_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_m_mm2s_ctl_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_m_mm2s_ctl_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_m_mm2s_ctl_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_m_mm2s_ctl_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_m_mm2s_ctl_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_m_mm2s_ctl_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_m_mm2s_ctl_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_m_mm2s_ctl_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_m_mm2s_ctl_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_m_mm2s_ctl_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_m_mm2s_ctl_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_m_mm2s_ctl_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_m_mm2s_ctl_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_m_mm2s_ctl_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_m_mm2s_ctl_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_m_mm2s_ctl_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_m_mm2s_ctl_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_m_mm2s_ctl_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_m_mm2s_ctl_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_m_mm2s_ctl_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_m_mm2s_ctl_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_m_mm2s_ctl_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_m_mm2s_ctl_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_m_mm2s_ctl_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_m_mm2s_ctl_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_m_mm2s_ctl_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_m_mm2s_ctl_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_m_mm2s_ctl_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_m_mm2s_ctl_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_m_s2mm_ctl_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_m_s2mm_ctl_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_m_s2mm_ctl_AWADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_m_s2mm_ctl_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_m_s2mm_ctl_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_m_s2mm_ctl_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_m_s2mm_ctl_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_m_s2mm_ctl_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_m_s2mm_ctl_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_m_s2mm_ctl_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_m_s2mm_ctl_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_m_s2mm_ctl_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_m_s2mm_ctl_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_m_s2mm_ctl_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_m_s2mm_ctl_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_m_s2mm_ctl_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_m_s2mm_ctl_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_m_s2mm_ctl_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_m_s2mm_ctl_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_m_s2mm_ctl_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_m_s2mm_ctl_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_m_s2mm_ctl_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_m_s2mm_ctl_ARADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_m_s2mm_ctl_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_m_s2mm_ctl_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_m_s2mm_ctl_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_m_s2mm_ctl_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_m_s2mm_ctl_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_m_s2mm_ctl_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_m_s2mm_ctl_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_m_s2mm_ctl_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_m_s2mm_ctl_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_m_s2mm_ctl_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_m_s2mm_ctl_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_m_s2mm_ctl_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_m_s2mm_ctl_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_m_s2mm_ctl_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_m_s2mm_ctl_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_m_s2mm_ctl_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_m_s2mm_ctl_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_m_s2mm_ctl_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_m_s2mm_ctl_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_m_s2mm_ctl_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_m_s2mm_ctl_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_m_s2mm_ctl_BUSER sc_in sc_lv 1 signal 1 } 
	{ s_in_V_V_TDATA sc_in sc_lv 32 signal 2 } 
	{ s_in_V_V_TVALID sc_in sc_logic 1 invld 2 } 
	{ s_in_V_V_TREADY sc_out sc_logic 1 inacc 2 } 
	{ s_out_V_V_TDATA sc_out sc_lv 32 signal 3 } 
	{ s_out_V_V_TVALID sc_out sc_logic 1 outvld 3 } 
	{ s_out_V_V_TREADY sc_in sc_logic 1 outacc 3 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_AXILiteS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWADDR" },"address":[{"name":"memory_scanner","role":"start","value":"0","valid_bit":"0"},{"name":"memory_scanner","role":"continue","value":"0","valid_bit":"4"},{"name":"memory_scanner","role":"auto_start","value":"0","valid_bit":"7"},{"name":"search_string_0","role":"data","value":"24"}, {"name":"search_string_0","role":"valid","value":"28","valid_bit":"0"},{"name":"search_string_1","role":"data","value":"32"}, {"name":"search_string_1","role":"valid","value":"36","valid_bit":"0"},{"name":"search_string_2","role":"data","value":"40"}, {"name":"search_string_2","role":"valid","value":"44","valid_bit":"0"},{"name":"search_string_3","role":"data","value":"48"}, {"name":"search_string_3","role":"valid","value":"52","valid_bit":"0"},{"name":"search_string_4","role":"data","value":"56"}, {"name":"search_string_4","role":"valid","value":"60","valid_bit":"0"},{"name":"search_string_5","role":"data","value":"64"}, {"name":"search_string_5","role":"valid","value":"68","valid_bit":"0"},{"name":"search_string_6","role":"data","value":"72"}, {"name":"search_string_6","role":"valid","value":"76","valid_bit":"0"},{"name":"search_string_7","role":"data","value":"80"}, {"name":"search_string_7","role":"valid","value":"84","valid_bit":"0"},{"name":"search_string_8","role":"data","value":"88"}, {"name":"search_string_8","role":"valid","value":"92","valid_bit":"0"},{"name":"search_string_9","role":"data","value":"96"}, {"name":"search_string_9","role":"valid","value":"100","valid_bit":"0"},{"name":"search_string_10","role":"data","value":"104"}, {"name":"search_string_10","role":"valid","value":"108","valid_bit":"0"},{"name":"search_string_11","role":"data","value":"112"}, {"name":"search_string_11","role":"valid","value":"116","valid_bit":"0"},{"name":"search_string_12","role":"data","value":"120"}, {"name":"search_string_12","role":"valid","value":"124","valid_bit":"0"},{"name":"search_string_13","role":"data","value":"128"}, {"name":"search_string_13","role":"valid","value":"132","valid_bit":"0"},{"name":"search_string_14","role":"data","value":"136"}, {"name":"search_string_14","role":"valid","value":"140","valid_bit":"0"},{"name":"search_string_15","role":"data","value":"144"}, {"name":"search_string_15","role":"valid","value":"148","valid_bit":"0"},{"name":"search_string_16","role":"data","value":"152"}, {"name":"search_string_16","role":"valid","value":"156","valid_bit":"0"}] },
	{ "name": "s_axi_AXILiteS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWVALID" } },
	{ "name": "s_axi_AXILiteS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWREADY" } },
	{ "name": "s_axi_AXILiteS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WVALID" } },
	{ "name": "s_axi_AXILiteS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WREADY" } },
	{ "name": "s_axi_AXILiteS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WDATA" } },
	{ "name": "s_axi_AXILiteS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WSTRB" } },
	{ "name": "s_axi_AXILiteS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARADDR" },"address":[{"name":"memory_scanner","role":"start","value":"0","valid_bit":"0"},{"name":"memory_scanner","role":"done","value":"0","valid_bit":"1"},{"name":"memory_scanner","role":"idle","value":"0","valid_bit":"2"},{"name":"memory_scanner","role":"ready","value":"0","valid_bit":"3"},{"name":"memory_scanner","role":"auto_start","value":"0","valid_bit":"7"},{"name":"return","role":"data","value":"16"}, {"name":"search_string_0","role":"ack","value":"28","valid_bit":"1"}, {"name":"search_string_1","role":"ack","value":"36","valid_bit":"1"}, {"name":"search_string_2","role":"ack","value":"44","valid_bit":"1"}, {"name":"search_string_3","role":"ack","value":"52","valid_bit":"1"}, {"name":"search_string_4","role":"ack","value":"60","valid_bit":"1"}, {"name":"search_string_5","role":"ack","value":"68","valid_bit":"1"}, {"name":"search_string_6","role":"ack","value":"76","valid_bit":"1"}, {"name":"search_string_7","role":"ack","value":"84","valid_bit":"1"}, {"name":"search_string_8","role":"ack","value":"92","valid_bit":"1"}, {"name":"search_string_9","role":"ack","value":"100","valid_bit":"1"}, {"name":"search_string_10","role":"ack","value":"108","valid_bit":"1"}, {"name":"search_string_11","role":"ack","value":"116","valid_bit":"1"}, {"name":"search_string_12","role":"ack","value":"124","valid_bit":"1"}, {"name":"search_string_13","role":"ack","value":"132","valid_bit":"1"}, {"name":"search_string_14","role":"ack","value":"140","valid_bit":"1"}, {"name":"search_string_15","role":"ack","value":"148","valid_bit":"1"}, {"name":"search_string_16","role":"ack","value":"156","valid_bit":"1"},{"name":"count_out","role":"data","value":"160"}, {"name":"count_out","role":"valid","value":"164","valid_bit":"0"}] },
	{ "name": "s_axi_AXILiteS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARVALID" } },
	{ "name": "s_axi_AXILiteS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARREADY" } },
	{ "name": "s_axi_AXILiteS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RVALID" } },
	{ "name": "s_axi_AXILiteS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RREADY" } },
	{ "name": "s_axi_AXILiteS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RDATA" } },
	{ "name": "s_axi_AXILiteS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RRESP" } },
	{ "name": "s_axi_AXILiteS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BVALID" } },
	{ "name": "s_axi_AXILiteS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BREADY" } },
	{ "name": "s_axi_AXILiteS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BRESP" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_m_mm2s_ctl_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_mm2s_ctl", "role": "AWVALID" }} , 
 	{ "name": "m_axi_m_mm2s_ctl_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_mm2s_ctl", "role": "AWREADY" }} , 
 	{ "name": "m_axi_m_mm2s_ctl_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_mm2s_ctl", "role": "AWADDR" }} , 
 	{ "name": "m_axi_m_mm2s_ctl_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_mm2s_ctl", "role": "AWID" }} , 
 	{ "name": "m_axi_m_mm2s_ctl_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "m_mm2s_ctl", "role": "AWLEN" }} , 
 	{ "name": "m_axi_m_mm2s_ctl_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "m_mm2s_ctl", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_m_mm2s_ctl_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "m_mm2s_ctl", "role": "AWBURST" }} , 
 	{ "name": "m_axi_m_mm2s_ctl_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "m_mm2s_ctl", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_m_mm2s_ctl_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "m_mm2s_ctl", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_m_mm2s_ctl_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "m_mm2s_ctl", "role": "AWPROT" }} , 
 	{ "name": "m_axi_m_mm2s_ctl_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "m_mm2s_ctl", "role": "AWQOS" }} , 
 	{ "name": "m_axi_m_mm2s_ctl_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "m_mm2s_ctl", "role": "AWREGION" }} , 
 	{ "name": "m_axi_m_mm2s_ctl_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_mm2s_ctl", "role": "AWUSER" }} , 
 	{ "name": "m_axi_m_mm2s_ctl_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_mm2s_ctl", "role": "WVALID" }} , 
 	{ "name": "m_axi_m_mm2s_ctl_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_mm2s_ctl", "role": "WREADY" }} , 
 	{ "name": "m_axi_m_mm2s_ctl_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_mm2s_ctl", "role": "WDATA" }} , 
 	{ "name": "m_axi_m_mm2s_ctl_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "m_mm2s_ctl", "role": "WSTRB" }} , 
 	{ "name": "m_axi_m_mm2s_ctl_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_mm2s_ctl", "role": "WLAST" }} , 
 	{ "name": "m_axi_m_mm2s_ctl_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_mm2s_ctl", "role": "WID" }} , 
 	{ "name": "m_axi_m_mm2s_ctl_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_mm2s_ctl", "role": "WUSER" }} , 
 	{ "name": "m_axi_m_mm2s_ctl_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_mm2s_ctl", "role": "ARVALID" }} , 
 	{ "name": "m_axi_m_mm2s_ctl_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_mm2s_ctl", "role": "ARREADY" }} , 
 	{ "name": "m_axi_m_mm2s_ctl_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_mm2s_ctl", "role": "ARADDR" }} , 
 	{ "name": "m_axi_m_mm2s_ctl_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_mm2s_ctl", "role": "ARID" }} , 
 	{ "name": "m_axi_m_mm2s_ctl_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "m_mm2s_ctl", "role": "ARLEN" }} , 
 	{ "name": "m_axi_m_mm2s_ctl_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "m_mm2s_ctl", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_m_mm2s_ctl_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "m_mm2s_ctl", "role": "ARBURST" }} , 
 	{ "name": "m_axi_m_mm2s_ctl_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "m_mm2s_ctl", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_m_mm2s_ctl_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "m_mm2s_ctl", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_m_mm2s_ctl_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "m_mm2s_ctl", "role": "ARPROT" }} , 
 	{ "name": "m_axi_m_mm2s_ctl_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "m_mm2s_ctl", "role": "ARQOS" }} , 
 	{ "name": "m_axi_m_mm2s_ctl_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "m_mm2s_ctl", "role": "ARREGION" }} , 
 	{ "name": "m_axi_m_mm2s_ctl_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_mm2s_ctl", "role": "ARUSER" }} , 
 	{ "name": "m_axi_m_mm2s_ctl_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_mm2s_ctl", "role": "RVALID" }} , 
 	{ "name": "m_axi_m_mm2s_ctl_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_mm2s_ctl", "role": "RREADY" }} , 
 	{ "name": "m_axi_m_mm2s_ctl_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_mm2s_ctl", "role": "RDATA" }} , 
 	{ "name": "m_axi_m_mm2s_ctl_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_mm2s_ctl", "role": "RLAST" }} , 
 	{ "name": "m_axi_m_mm2s_ctl_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_mm2s_ctl", "role": "RID" }} , 
 	{ "name": "m_axi_m_mm2s_ctl_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_mm2s_ctl", "role": "RUSER" }} , 
 	{ "name": "m_axi_m_mm2s_ctl_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "m_mm2s_ctl", "role": "RRESP" }} , 
 	{ "name": "m_axi_m_mm2s_ctl_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_mm2s_ctl", "role": "BVALID" }} , 
 	{ "name": "m_axi_m_mm2s_ctl_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_mm2s_ctl", "role": "BREADY" }} , 
 	{ "name": "m_axi_m_mm2s_ctl_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "m_mm2s_ctl", "role": "BRESP" }} , 
 	{ "name": "m_axi_m_mm2s_ctl_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_mm2s_ctl", "role": "BID" }} , 
 	{ "name": "m_axi_m_mm2s_ctl_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_mm2s_ctl", "role": "BUSER" }} , 
 	{ "name": "m_axi_m_s2mm_ctl_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_s2mm_ctl", "role": "AWVALID" }} , 
 	{ "name": "m_axi_m_s2mm_ctl_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_s2mm_ctl", "role": "AWREADY" }} , 
 	{ "name": "m_axi_m_s2mm_ctl_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_s2mm_ctl", "role": "AWADDR" }} , 
 	{ "name": "m_axi_m_s2mm_ctl_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_s2mm_ctl", "role": "AWID" }} , 
 	{ "name": "m_axi_m_s2mm_ctl_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "m_s2mm_ctl", "role": "AWLEN" }} , 
 	{ "name": "m_axi_m_s2mm_ctl_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "m_s2mm_ctl", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_m_s2mm_ctl_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "m_s2mm_ctl", "role": "AWBURST" }} , 
 	{ "name": "m_axi_m_s2mm_ctl_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "m_s2mm_ctl", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_m_s2mm_ctl_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "m_s2mm_ctl", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_m_s2mm_ctl_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "m_s2mm_ctl", "role": "AWPROT" }} , 
 	{ "name": "m_axi_m_s2mm_ctl_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "m_s2mm_ctl", "role": "AWQOS" }} , 
 	{ "name": "m_axi_m_s2mm_ctl_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "m_s2mm_ctl", "role": "AWREGION" }} , 
 	{ "name": "m_axi_m_s2mm_ctl_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_s2mm_ctl", "role": "AWUSER" }} , 
 	{ "name": "m_axi_m_s2mm_ctl_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_s2mm_ctl", "role": "WVALID" }} , 
 	{ "name": "m_axi_m_s2mm_ctl_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_s2mm_ctl", "role": "WREADY" }} , 
 	{ "name": "m_axi_m_s2mm_ctl_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_s2mm_ctl", "role": "WDATA" }} , 
 	{ "name": "m_axi_m_s2mm_ctl_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "m_s2mm_ctl", "role": "WSTRB" }} , 
 	{ "name": "m_axi_m_s2mm_ctl_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_s2mm_ctl", "role": "WLAST" }} , 
 	{ "name": "m_axi_m_s2mm_ctl_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_s2mm_ctl", "role": "WID" }} , 
 	{ "name": "m_axi_m_s2mm_ctl_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_s2mm_ctl", "role": "WUSER" }} , 
 	{ "name": "m_axi_m_s2mm_ctl_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_s2mm_ctl", "role": "ARVALID" }} , 
 	{ "name": "m_axi_m_s2mm_ctl_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_s2mm_ctl", "role": "ARREADY" }} , 
 	{ "name": "m_axi_m_s2mm_ctl_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_s2mm_ctl", "role": "ARADDR" }} , 
 	{ "name": "m_axi_m_s2mm_ctl_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_s2mm_ctl", "role": "ARID" }} , 
 	{ "name": "m_axi_m_s2mm_ctl_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "m_s2mm_ctl", "role": "ARLEN" }} , 
 	{ "name": "m_axi_m_s2mm_ctl_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "m_s2mm_ctl", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_m_s2mm_ctl_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "m_s2mm_ctl", "role": "ARBURST" }} , 
 	{ "name": "m_axi_m_s2mm_ctl_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "m_s2mm_ctl", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_m_s2mm_ctl_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "m_s2mm_ctl", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_m_s2mm_ctl_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "m_s2mm_ctl", "role": "ARPROT" }} , 
 	{ "name": "m_axi_m_s2mm_ctl_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "m_s2mm_ctl", "role": "ARQOS" }} , 
 	{ "name": "m_axi_m_s2mm_ctl_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "m_s2mm_ctl", "role": "ARREGION" }} , 
 	{ "name": "m_axi_m_s2mm_ctl_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_s2mm_ctl", "role": "ARUSER" }} , 
 	{ "name": "m_axi_m_s2mm_ctl_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_s2mm_ctl", "role": "RVALID" }} , 
 	{ "name": "m_axi_m_s2mm_ctl_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_s2mm_ctl", "role": "RREADY" }} , 
 	{ "name": "m_axi_m_s2mm_ctl_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_s2mm_ctl", "role": "RDATA" }} , 
 	{ "name": "m_axi_m_s2mm_ctl_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_s2mm_ctl", "role": "RLAST" }} , 
 	{ "name": "m_axi_m_s2mm_ctl_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_s2mm_ctl", "role": "RID" }} , 
 	{ "name": "m_axi_m_s2mm_ctl_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_s2mm_ctl", "role": "RUSER" }} , 
 	{ "name": "m_axi_m_s2mm_ctl_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "m_s2mm_ctl", "role": "RRESP" }} , 
 	{ "name": "m_axi_m_s2mm_ctl_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_s2mm_ctl", "role": "BVALID" }} , 
 	{ "name": "m_axi_m_s2mm_ctl_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_s2mm_ctl", "role": "BREADY" }} , 
 	{ "name": "m_axi_m_s2mm_ctl_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "m_s2mm_ctl", "role": "BRESP" }} , 
 	{ "name": "m_axi_m_s2mm_ctl_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_s2mm_ctl", "role": "BID" }} , 
 	{ "name": "m_axi_m_s2mm_ctl_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_s2mm_ctl", "role": "BUSER" }} , 
 	{ "name": "s_in_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_in_V_V", "role": "TDATA" }} , 
 	{ "name": "s_in_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_in_V_V", "role": "TVALID" }} , 
 	{ "name": "s_in_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_in_V_V", "role": "TREADY" }} , 
 	{ "name": "s_out_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_out_V_V", "role": "TDATA" }} , 
 	{ "name": "s_out_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "s_out_V_V", "role": "TVALID" }} , 
 	{ "name": "s_out_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "s_out_V_V", "role": "TREADY" }} , 
 	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "interrupt", "role": "default" }}  ]}
set Spec2ImplPortList { 
	m_mm2s_ctl { m_axi {  { m_axi_m_mm2s_ctl_AWVALID VALID 1 1 }  { m_axi_m_mm2s_ctl_AWREADY READY 0 1 }  { m_axi_m_mm2s_ctl_AWADDR ADDR 1 32 }  { m_axi_m_mm2s_ctl_AWID ID 1 1 }  { m_axi_m_mm2s_ctl_AWLEN LEN 1 8 }  { m_axi_m_mm2s_ctl_AWSIZE SIZE 1 3 }  { m_axi_m_mm2s_ctl_AWBURST BURST 1 2 }  { m_axi_m_mm2s_ctl_AWLOCK LOCK 1 2 }  { m_axi_m_mm2s_ctl_AWCACHE CACHE 1 4 }  { m_axi_m_mm2s_ctl_AWPROT PROT 1 3 }  { m_axi_m_mm2s_ctl_AWQOS QOS 1 4 }  { m_axi_m_mm2s_ctl_AWREGION REGION 1 4 }  { m_axi_m_mm2s_ctl_AWUSER USER 1 1 }  { m_axi_m_mm2s_ctl_WVALID VALID 1 1 }  { m_axi_m_mm2s_ctl_WREADY READY 0 1 }  { m_axi_m_mm2s_ctl_WDATA DATA 1 32 }  { m_axi_m_mm2s_ctl_WSTRB STRB 1 4 }  { m_axi_m_mm2s_ctl_WLAST LAST 1 1 }  { m_axi_m_mm2s_ctl_WID ID 1 1 }  { m_axi_m_mm2s_ctl_WUSER USER 1 1 }  { m_axi_m_mm2s_ctl_ARVALID VALID 1 1 }  { m_axi_m_mm2s_ctl_ARREADY READY 0 1 }  { m_axi_m_mm2s_ctl_ARADDR ADDR 1 32 }  { m_axi_m_mm2s_ctl_ARID ID 1 1 }  { m_axi_m_mm2s_ctl_ARLEN LEN 1 8 }  { m_axi_m_mm2s_ctl_ARSIZE SIZE 1 3 }  { m_axi_m_mm2s_ctl_ARBURST BURST 1 2 }  { m_axi_m_mm2s_ctl_ARLOCK LOCK 1 2 }  { m_axi_m_mm2s_ctl_ARCACHE CACHE 1 4 }  { m_axi_m_mm2s_ctl_ARPROT PROT 1 3 }  { m_axi_m_mm2s_ctl_ARQOS QOS 1 4 }  { m_axi_m_mm2s_ctl_ARREGION REGION 1 4 }  { m_axi_m_mm2s_ctl_ARUSER USER 1 1 }  { m_axi_m_mm2s_ctl_RVALID VALID 0 1 }  { m_axi_m_mm2s_ctl_RREADY READY 1 1 }  { m_axi_m_mm2s_ctl_RDATA DATA 0 32 }  { m_axi_m_mm2s_ctl_RLAST LAST 0 1 }  { m_axi_m_mm2s_ctl_RID ID 0 1 }  { m_axi_m_mm2s_ctl_RUSER USER 0 1 }  { m_axi_m_mm2s_ctl_RRESP RESP 0 2 }  { m_axi_m_mm2s_ctl_BVALID VALID 0 1 }  { m_axi_m_mm2s_ctl_BREADY READY 1 1 }  { m_axi_m_mm2s_ctl_BRESP RESP 0 2 }  { m_axi_m_mm2s_ctl_BID ID 0 1 }  { m_axi_m_mm2s_ctl_BUSER USER 0 1 } } }
	m_s2mm_ctl { m_axi {  { m_axi_m_s2mm_ctl_AWVALID VALID 1 1 }  { m_axi_m_s2mm_ctl_AWREADY READY 0 1 }  { m_axi_m_s2mm_ctl_AWADDR ADDR 1 32 }  { m_axi_m_s2mm_ctl_AWID ID 1 1 }  { m_axi_m_s2mm_ctl_AWLEN LEN 1 8 }  { m_axi_m_s2mm_ctl_AWSIZE SIZE 1 3 }  { m_axi_m_s2mm_ctl_AWBURST BURST 1 2 }  { m_axi_m_s2mm_ctl_AWLOCK LOCK 1 2 }  { m_axi_m_s2mm_ctl_AWCACHE CACHE 1 4 }  { m_axi_m_s2mm_ctl_AWPROT PROT 1 3 }  { m_axi_m_s2mm_ctl_AWQOS QOS 1 4 }  { m_axi_m_s2mm_ctl_AWREGION REGION 1 4 }  { m_axi_m_s2mm_ctl_AWUSER USER 1 1 }  { m_axi_m_s2mm_ctl_WVALID VALID 1 1 }  { m_axi_m_s2mm_ctl_WREADY READY 0 1 }  { m_axi_m_s2mm_ctl_WDATA DATA 1 32 }  { m_axi_m_s2mm_ctl_WSTRB STRB 1 4 }  { m_axi_m_s2mm_ctl_WLAST LAST 1 1 }  { m_axi_m_s2mm_ctl_WID ID 1 1 }  { m_axi_m_s2mm_ctl_WUSER USER 1 1 }  { m_axi_m_s2mm_ctl_ARVALID VALID 1 1 }  { m_axi_m_s2mm_ctl_ARREADY READY 0 1 }  { m_axi_m_s2mm_ctl_ARADDR ADDR 1 32 }  { m_axi_m_s2mm_ctl_ARID ID 1 1 }  { m_axi_m_s2mm_ctl_ARLEN LEN 1 8 }  { m_axi_m_s2mm_ctl_ARSIZE SIZE 1 3 }  { m_axi_m_s2mm_ctl_ARBURST BURST 1 2 }  { m_axi_m_s2mm_ctl_ARLOCK LOCK 1 2 }  { m_axi_m_s2mm_ctl_ARCACHE CACHE 1 4 }  { m_axi_m_s2mm_ctl_ARPROT PROT 1 3 }  { m_axi_m_s2mm_ctl_ARQOS QOS 1 4 }  { m_axi_m_s2mm_ctl_ARREGION REGION 1 4 }  { m_axi_m_s2mm_ctl_ARUSER USER 1 1 }  { m_axi_m_s2mm_ctl_RVALID VALID 0 1 }  { m_axi_m_s2mm_ctl_RREADY READY 1 1 }  { m_axi_m_s2mm_ctl_RDATA DATA 0 32 }  { m_axi_m_s2mm_ctl_RLAST LAST 0 1 }  { m_axi_m_s2mm_ctl_RID ID 0 1 }  { m_axi_m_s2mm_ctl_RUSER USER 0 1 }  { m_axi_m_s2mm_ctl_RRESP RESP 0 2 }  { m_axi_m_s2mm_ctl_BVALID VALID 0 1 }  { m_axi_m_s2mm_ctl_BREADY READY 1 1 }  { m_axi_m_s2mm_ctl_BRESP RESP 0 2 }  { m_axi_m_s2mm_ctl_BID ID 0 1 }  { m_axi_m_s2mm_ctl_BUSER USER 0 1 } } }
	s_in_V_V { axis {  { s_in_V_V_TDATA in_data 0 32 }  { s_in_V_V_TVALID in_vld 0 1 }  { s_in_V_V_TREADY in_acc 1 1 } } }
	s_out_V_V { axis {  { s_out_V_V_TDATA out_data 1 32 }  { s_out_V_V_TVALID out_vld 1 1 }  { s_out_V_V_TREADY out_acc 0 1 } } }
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ m_s2mm_ctl 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
