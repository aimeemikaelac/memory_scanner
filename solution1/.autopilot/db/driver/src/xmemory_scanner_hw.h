// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.1
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ==============================================================

// AXILiteS
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x10 : Data signal of ap_return
//        bit 0  - ap_return[0] (Read)
//        others - reserved
// 0x18 : Data signal of search_string_0
//        bit 7~0 - search_string_0[7:0] (Read/Write)
//        others  - reserved
// 0x1c : Control signal of search_string_0
//        bit 0  - search_string_0_ap_vld (Read/Write/COH)
//        bit 1  - search_string_0_ap_ack (Read)
//        others - reserved
// 0x20 : Data signal of search_string_1
//        bit 7~0 - search_string_1[7:0] (Read/Write)
//        others  - reserved
// 0x24 : Control signal of search_string_1
//        bit 0  - search_string_1_ap_vld (Read/Write/COH)
//        bit 1  - search_string_1_ap_ack (Read)
//        others - reserved
// 0x28 : Data signal of search_string_2
//        bit 7~0 - search_string_2[7:0] (Read/Write)
//        others  - reserved
// 0x2c : Control signal of search_string_2
//        bit 0  - search_string_2_ap_vld (Read/Write/COH)
//        bit 1  - search_string_2_ap_ack (Read)
//        others - reserved
// 0x30 : Data signal of search_string_3
//        bit 7~0 - search_string_3[7:0] (Read/Write)
//        others  - reserved
// 0x34 : Control signal of search_string_3
//        bit 0  - search_string_3_ap_vld (Read/Write/COH)
//        bit 1  - search_string_3_ap_ack (Read)
//        others - reserved
// 0x38 : Data signal of search_string_4
//        bit 7~0 - search_string_4[7:0] (Read/Write)
//        others  - reserved
// 0x3c : Control signal of search_string_4
//        bit 0  - search_string_4_ap_vld (Read/Write/COH)
//        bit 1  - search_string_4_ap_ack (Read)
//        others - reserved
// 0x40 : Data signal of search_string_5
//        bit 7~0 - search_string_5[7:0] (Read/Write)
//        others  - reserved
// 0x44 : Control signal of search_string_5
//        bit 0  - search_string_5_ap_vld (Read/Write/COH)
//        bit 1  - search_string_5_ap_ack (Read)
//        others - reserved
// 0x48 : Data signal of search_string_6
//        bit 7~0 - search_string_6[7:0] (Read/Write)
//        others  - reserved
// 0x4c : Control signal of search_string_6
//        bit 0  - search_string_6_ap_vld (Read/Write/COH)
//        bit 1  - search_string_6_ap_ack (Read)
//        others - reserved
// 0x50 : Data signal of search_string_7
//        bit 7~0 - search_string_7[7:0] (Read/Write)
//        others  - reserved
// 0x54 : Control signal of search_string_7
//        bit 0  - search_string_7_ap_vld (Read/Write/COH)
//        bit 1  - search_string_7_ap_ack (Read)
//        others - reserved
// 0x58 : Data signal of search_string_8
//        bit 7~0 - search_string_8[7:0] (Read/Write)
//        others  - reserved
// 0x5c : Control signal of search_string_8
//        bit 0  - search_string_8_ap_vld (Read/Write/COH)
//        bit 1  - search_string_8_ap_ack (Read)
//        others - reserved
// 0x60 : Data signal of search_string_9
//        bit 7~0 - search_string_9[7:0] (Read/Write)
//        others  - reserved
// 0x64 : Control signal of search_string_9
//        bit 0  - search_string_9_ap_vld (Read/Write/COH)
//        bit 1  - search_string_9_ap_ack (Read)
//        others - reserved
// 0x68 : Data signal of search_string_10
//        bit 7~0 - search_string_10[7:0] (Read/Write)
//        others  - reserved
// 0x6c : Control signal of search_string_10
//        bit 0  - search_string_10_ap_vld (Read/Write/COH)
//        bit 1  - search_string_10_ap_ack (Read)
//        others - reserved
// 0x70 : Data signal of search_string_11
//        bit 7~0 - search_string_11[7:0] (Read/Write)
//        others  - reserved
// 0x74 : Control signal of search_string_11
//        bit 0  - search_string_11_ap_vld (Read/Write/COH)
//        bit 1  - search_string_11_ap_ack (Read)
//        others - reserved
// 0x78 : Data signal of search_string_12
//        bit 7~0 - search_string_12[7:0] (Read/Write)
//        others  - reserved
// 0x7c : Control signal of search_string_12
//        bit 0  - search_string_12_ap_vld (Read/Write/COH)
//        bit 1  - search_string_12_ap_ack (Read)
//        others - reserved
// 0x80 : Data signal of search_string_13
//        bit 7~0 - search_string_13[7:0] (Read/Write)
//        others  - reserved
// 0x84 : Control signal of search_string_13
//        bit 0  - search_string_13_ap_vld (Read/Write/COH)
//        bit 1  - search_string_13_ap_ack (Read)
//        others - reserved
// 0x88 : Data signal of search_string_14
//        bit 7~0 - search_string_14[7:0] (Read/Write)
//        others  - reserved
// 0x8c : Control signal of search_string_14
//        bit 0  - search_string_14_ap_vld (Read/Write/COH)
//        bit 1  - search_string_14_ap_ack (Read)
//        others - reserved
// 0x90 : Data signal of search_string_15
//        bit 7~0 - search_string_15[7:0] (Read/Write)
//        others  - reserved
// 0x94 : Control signal of search_string_15
//        bit 0  - search_string_15_ap_vld (Read/Write/COH)
//        bit 1  - search_string_15_ap_ack (Read)
//        others - reserved
// 0x98 : Data signal of search_string_16
//        bit 7~0 - search_string_16[7:0] (Read/Write)
//        others  - reserved
// 0x9c : Control signal of search_string_16
//        bit 0  - search_string_16_ap_vld (Read/Write/COH)
//        bit 1  - search_string_16_ap_ack (Read)
//        others - reserved
// 0xa0 : Data signal of count_out
//        bit 31~0 - count_out[31:0] (Read)
// 0xa4 : Control signal of count_out
//        bit 0  - count_out_ap_vld (Read/COR)
//        others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XMEMORY_SCANNER_AXILITES_ADDR_AP_CTRL               0x00
#define XMEMORY_SCANNER_AXILITES_ADDR_GIE                   0x04
#define XMEMORY_SCANNER_AXILITES_ADDR_IER                   0x08
#define XMEMORY_SCANNER_AXILITES_ADDR_ISR                   0x0c
#define XMEMORY_SCANNER_AXILITES_ADDR_AP_RETURN             0x10
#define XMEMORY_SCANNER_AXILITES_BITS_AP_RETURN             1
#define XMEMORY_SCANNER_AXILITES_ADDR_SEARCH_STRING_0_DATA  0x18
#define XMEMORY_SCANNER_AXILITES_BITS_SEARCH_STRING_0_DATA  8
#define XMEMORY_SCANNER_AXILITES_ADDR_SEARCH_STRING_0_CTRL  0x1c
#define XMEMORY_SCANNER_AXILITES_ADDR_SEARCH_STRING_1_DATA  0x20
#define XMEMORY_SCANNER_AXILITES_BITS_SEARCH_STRING_1_DATA  8
#define XMEMORY_SCANNER_AXILITES_ADDR_SEARCH_STRING_1_CTRL  0x24
#define XMEMORY_SCANNER_AXILITES_ADDR_SEARCH_STRING_2_DATA  0x28
#define XMEMORY_SCANNER_AXILITES_BITS_SEARCH_STRING_2_DATA  8
#define XMEMORY_SCANNER_AXILITES_ADDR_SEARCH_STRING_2_CTRL  0x2c
#define XMEMORY_SCANNER_AXILITES_ADDR_SEARCH_STRING_3_DATA  0x30
#define XMEMORY_SCANNER_AXILITES_BITS_SEARCH_STRING_3_DATA  8
#define XMEMORY_SCANNER_AXILITES_ADDR_SEARCH_STRING_3_CTRL  0x34
#define XMEMORY_SCANNER_AXILITES_ADDR_SEARCH_STRING_4_DATA  0x38
#define XMEMORY_SCANNER_AXILITES_BITS_SEARCH_STRING_4_DATA  8
#define XMEMORY_SCANNER_AXILITES_ADDR_SEARCH_STRING_4_CTRL  0x3c
#define XMEMORY_SCANNER_AXILITES_ADDR_SEARCH_STRING_5_DATA  0x40
#define XMEMORY_SCANNER_AXILITES_BITS_SEARCH_STRING_5_DATA  8
#define XMEMORY_SCANNER_AXILITES_ADDR_SEARCH_STRING_5_CTRL  0x44
#define XMEMORY_SCANNER_AXILITES_ADDR_SEARCH_STRING_6_DATA  0x48
#define XMEMORY_SCANNER_AXILITES_BITS_SEARCH_STRING_6_DATA  8
#define XMEMORY_SCANNER_AXILITES_ADDR_SEARCH_STRING_6_CTRL  0x4c
#define XMEMORY_SCANNER_AXILITES_ADDR_SEARCH_STRING_7_DATA  0x50
#define XMEMORY_SCANNER_AXILITES_BITS_SEARCH_STRING_7_DATA  8
#define XMEMORY_SCANNER_AXILITES_ADDR_SEARCH_STRING_7_CTRL  0x54
#define XMEMORY_SCANNER_AXILITES_ADDR_SEARCH_STRING_8_DATA  0x58
#define XMEMORY_SCANNER_AXILITES_BITS_SEARCH_STRING_8_DATA  8
#define XMEMORY_SCANNER_AXILITES_ADDR_SEARCH_STRING_8_CTRL  0x5c
#define XMEMORY_SCANNER_AXILITES_ADDR_SEARCH_STRING_9_DATA  0x60
#define XMEMORY_SCANNER_AXILITES_BITS_SEARCH_STRING_9_DATA  8
#define XMEMORY_SCANNER_AXILITES_ADDR_SEARCH_STRING_9_CTRL  0x64
#define XMEMORY_SCANNER_AXILITES_ADDR_SEARCH_STRING_10_DATA 0x68
#define XMEMORY_SCANNER_AXILITES_BITS_SEARCH_STRING_10_DATA 8
#define XMEMORY_SCANNER_AXILITES_ADDR_SEARCH_STRING_10_CTRL 0x6c
#define XMEMORY_SCANNER_AXILITES_ADDR_SEARCH_STRING_11_DATA 0x70
#define XMEMORY_SCANNER_AXILITES_BITS_SEARCH_STRING_11_DATA 8
#define XMEMORY_SCANNER_AXILITES_ADDR_SEARCH_STRING_11_CTRL 0x74
#define XMEMORY_SCANNER_AXILITES_ADDR_SEARCH_STRING_12_DATA 0x78
#define XMEMORY_SCANNER_AXILITES_BITS_SEARCH_STRING_12_DATA 8
#define XMEMORY_SCANNER_AXILITES_ADDR_SEARCH_STRING_12_CTRL 0x7c
#define XMEMORY_SCANNER_AXILITES_ADDR_SEARCH_STRING_13_DATA 0x80
#define XMEMORY_SCANNER_AXILITES_BITS_SEARCH_STRING_13_DATA 8
#define XMEMORY_SCANNER_AXILITES_ADDR_SEARCH_STRING_13_CTRL 0x84
#define XMEMORY_SCANNER_AXILITES_ADDR_SEARCH_STRING_14_DATA 0x88
#define XMEMORY_SCANNER_AXILITES_BITS_SEARCH_STRING_14_DATA 8
#define XMEMORY_SCANNER_AXILITES_ADDR_SEARCH_STRING_14_CTRL 0x8c
#define XMEMORY_SCANNER_AXILITES_ADDR_SEARCH_STRING_15_DATA 0x90
#define XMEMORY_SCANNER_AXILITES_BITS_SEARCH_STRING_15_DATA 8
#define XMEMORY_SCANNER_AXILITES_ADDR_SEARCH_STRING_15_CTRL 0x94
#define XMEMORY_SCANNER_AXILITES_ADDR_SEARCH_STRING_16_DATA 0x98
#define XMEMORY_SCANNER_AXILITES_BITS_SEARCH_STRING_16_DATA 8
#define XMEMORY_SCANNER_AXILITES_ADDR_SEARCH_STRING_16_CTRL 0x9c
#define XMEMORY_SCANNER_AXILITES_ADDR_COUNT_OUT_DATA        0xa0
#define XMEMORY_SCANNER_AXILITES_BITS_COUNT_OUT_DATA        32
#define XMEMORY_SCANNER_AXILITES_ADDR_COUNT_OUT_CTRL        0xa4
