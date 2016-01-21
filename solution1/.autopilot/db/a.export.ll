; ModuleID = '/Xilinx/memory_scanner/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str4 = private unnamed_addr constant [6 x i8] c"ap_hs\00", align 1
@p_str5 = private unnamed_addr constant [7 x i8] c"ap_vld\00", align 1
@p_str6 = private unnamed_addr constant [11 x i8] c"ap_ctrl_hs\00", align 1
@p_str9 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@str = internal constant [15 x i8] c"memory_scanner\00"

define weak void @_ssdm_op_SpecWire(...) nounwind {
entry:
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define zeroext i1 @memory_scanner(i8* %ddr, i8* %search_string_0, i8* %search_string_1, i8* %search_string_2, i8* %search_string_3, i8* %search_string_4, i8* %search_string_5, i8* %search_string_6, i8* %search_string_7, i8* %search_string_8, i8* %search_string_9, i8* %search_string_10, i8* %search_string_11, i8* %search_string_12, i8* %search_string_13, i8* %search_string_14, i8* %search_string_15, i8* %search_string_16, i32* %count_out) {
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %search_string_16), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %search_string_15), !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %search_string_14), !map !19
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %search_string_13), !map !25
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %search_string_12), !map !31
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %search_string_11), !map !37
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %search_string_10), !map !43
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %search_string_9), !map !49
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %search_string_8), !map !55
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %search_string_7), !map !61
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %search_string_6), !map !67
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %search_string_5), !map !73
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %search_string_4), !map !79
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %search_string_3), !map !85
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %search_string_2), !map !91
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %search_string_1), !map !97
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %search_string_0), !map !103
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %ddr), !map !109
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %count_out) nounwind, !map !115
  call void (...)* @_ssdm_op_SpecBitsMap(i1 false) nounwind, !map !119
  call void (...)* @_ssdm_op_SpecTopModule([15 x i8]* @str) nounwind
  call void (...)* @_ssdm_op_SpecWire(i8* %ddr, [6 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecWire(i32 0, [10 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i8* %search_string_0, i8* %search_string_1, i8* %search_string_2, i8* %search_string_3, i8* %search_string_4, i8* %search_string_5, i8* %search_string_6, i8* %search_string_7, i8* %search_string_8, i8* %search_string_9, i8* %search_string_10, i8* %search_string_11, i8* %search_string_12, i8* %search_string_13, i8* %search_string_14, i8* %search_string_15, i8* %search_string_16, [10 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i8* %search_string_0, i8* %search_string_1, i8* %search_string_2, i8* %search_string_3, i8* %search_string_4, i8* %search_string_5, i8* %search_string_6, i8* %search_string_7, i8* %search_string_8, i8* %search_string_9, i8* %search_string_10, i8* %search_string_11, i8* %search_string_12, i8* %search_string_13, i8* %search_string_14, i8* %search_string_15, i8* %search_string_16, [6 x i8]* @p_str4, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i32* %count_out, [10 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i32* %count_out, [7 x i8]* @p_str5, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i32 0, [11 x i8]* @p_str6, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %tmp_9 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str9) nounwind
  br label %2

; <label>:1                                       ; preds = %2
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str9, i32 %tmp_9) nounwind
  call void @_ssdm_op_Write.ap_vld.i32P(i32* %count_out, i32 %tmp)
  ret i1 true

; <label>:2                                       ; preds = %._crit_edge, %0
  %count = phi i32 [ 0, %0 ], [ %count_0_1, %._crit_edge ]
  %search_index = phi i32 [ 0, %0 ], [ %search_index_0_1, %._crit_edge ]
  %tmp = phi i32 [ 0, %0 ], [ %count_0_2, %._crit_edge ]
  %j = phi i31 [ 0, %0 ], [ %tmp_8, %._crit_edge ]
  %exitcond1 = icmp eq i31 %j, -1073741824
  %empty_4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1073741824, i64 1073741824, i64 1073741824)
  %tmp_8 = add i31 %j, 1
  br i1 %exitcond1, label %1, label %3

; <label>:3                                       ; preds = %2
  %tmp_1 = zext i31 %j to i64
  %ddr_addr = getelementptr i8* %ddr, i64 %tmp_1
  %ddr_load_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %ddr_addr, i32 1)
  %ddr_addr_read = call i8 @_ssdm_op_Read.m_axi.volatile.i8P(i8* %ddr_addr)
  %tmp_2 = trunc i32 %search_index to i5
  switch i5 %tmp_2, label %branch16 [
    i5 0, label %branch0
    i5 1, label %branch1
    i5 2, label %branch2
    i5 3, label %branch3
    i5 4, label %branch4
    i5 5, label %branch5
    i5 6, label %branch6
    i5 7, label %branch7
    i5 8, label %branch8
    i5 9, label %branch9
    i5 10, label %branch10
    i5 11, label %branch11
    i5 12, label %branch12
    i5 13, label %branch13
    i5 14, label %branch14
    i5 15, label %branch15
  ]

._crit_edge:                                      ; preds = %branch16, %branch15, %branch14, %branch13, %branch12, %branch11, %branch10, %branch9, %branch8, %branch7, %branch6, %branch5, %branch4, %branch3, %branch2, %branch1, %branch0
  %search_string_load_phi = phi i8 [ %search_string_0_read, %branch0 ], [ %search_string_1_read, %branch1 ], [ %search_string_2_read, %branch2 ], [ %search_string_3_read, %branch3 ], [ %search_string_4_read, %branch4 ], [ %search_string_5_read, %branch5 ], [ %search_string_6_read, %branch6 ], [ %search_string_7_read, %branch7 ], [ %search_string_8_read, %branch8 ], [ %search_string_9_read, %branch9 ], [ %search_string_10_read, %branch10 ], [ %search_string_11_read, %branch11 ], [ %search_string_12_read, %branch12 ], [ %search_string_13_read, %branch13 ], [ %search_string_14_read, %branch14 ], [ %search_string_15_read, %branch15 ], [ %search_string_16_read, %branch16 ]
  %tmp_3 = icmp eq i8 %ddr_addr_read, %search_string_load_phi
  %tmp_4 = add nsw i32 %search_index, 1
  %search_index_0 = select i1 %tmp_3, i32 %tmp_4, i32 0
  %tmp_5 = call i28 @_ssdm_op_PartSelect.i28.i32.i32.i32(i32 %search_index_0, i32 4, i32 31)
  %icmp = icmp sgt i28 %tmp_5, 0
  %count_0 = add nsw i32 %count, 1
  %count_0_1 = select i1 %icmp, i32 %count_0, i32 %count
  %search_index_0_1 = select i1 %icmp, i32 0, i32 %search_index_0
  %count_0_2 = select i1 %icmp, i32 %count_0, i32 %tmp
  br label %2

branch0:                                          ; preds = %3
  %search_string_0_read = call i8 @_ssdm_op_Read.ap_hs.i8P(i8* %search_string_0)
  br label %._crit_edge

branch1:                                          ; preds = %3
  %search_string_1_read = call i8 @_ssdm_op_Read.ap_hs.i8P(i8* %search_string_1)
  br label %._crit_edge

branch2:                                          ; preds = %3
  %search_string_2_read = call i8 @_ssdm_op_Read.ap_hs.i8P(i8* %search_string_2)
  br label %._crit_edge

branch3:                                          ; preds = %3
  %search_string_3_read = call i8 @_ssdm_op_Read.ap_hs.i8P(i8* %search_string_3)
  br label %._crit_edge

branch4:                                          ; preds = %3
  %search_string_4_read = call i8 @_ssdm_op_Read.ap_hs.i8P(i8* %search_string_4)
  br label %._crit_edge

branch5:                                          ; preds = %3
  %search_string_5_read = call i8 @_ssdm_op_Read.ap_hs.i8P(i8* %search_string_5)
  br label %._crit_edge

branch6:                                          ; preds = %3
  %search_string_6_read = call i8 @_ssdm_op_Read.ap_hs.i8P(i8* %search_string_6)
  br label %._crit_edge

branch7:                                          ; preds = %3
  %search_string_7_read = call i8 @_ssdm_op_Read.ap_hs.i8P(i8* %search_string_7)
  br label %._crit_edge

branch8:                                          ; preds = %3
  %search_string_8_read = call i8 @_ssdm_op_Read.ap_hs.i8P(i8* %search_string_8)
  br label %._crit_edge

branch9:                                          ; preds = %3
  %search_string_9_read = call i8 @_ssdm_op_Read.ap_hs.i8P(i8* %search_string_9)
  br label %._crit_edge

branch10:                                         ; preds = %3
  %search_string_10_read = call i8 @_ssdm_op_Read.ap_hs.i8P(i8* %search_string_10)
  br label %._crit_edge

branch11:                                         ; preds = %3
  %search_string_11_read = call i8 @_ssdm_op_Read.ap_hs.i8P(i8* %search_string_11)
  br label %._crit_edge

branch12:                                         ; preds = %3
  %search_string_12_read = call i8 @_ssdm_op_Read.ap_hs.i8P(i8* %search_string_12)
  br label %._crit_edge

branch13:                                         ; preds = %3
  %search_string_13_read = call i8 @_ssdm_op_Read.ap_hs.i8P(i8* %search_string_13)
  br label %._crit_edge

branch14:                                         ; preds = %3
  %search_string_14_read = call i8 @_ssdm_op_Read.ap_hs.i8P(i8* %search_string_14)
  br label %._crit_edge

branch15:                                         ; preds = %3
  %search_string_15_read = call i8 @_ssdm_op_Read.ap_hs.i8P(i8* %search_string_15)
  br label %._crit_edge

branch16:                                         ; preds = %3
  %search_string_16_read = call i8 @_ssdm_op_Read.ap_hs.i8P(i8* %search_string_16)
  br label %._crit_edge
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak i8 @_ssdm_op_Read.m_axi.volatile.i8P(i8*) {
entry:
  %empty = load i8* %0
  ret i8 %empty
}

define weak i1 @_ssdm_op_ReadReq.m_axi.i8P(i8*, i32) {
entry:
  ret i1 true
}

define weak i8 @_ssdm_op_Read.ap_hs.i8P(i8*) {
entry:
  %empty = load i8* %0
  ret i8 %empty
}

define weak void @_ssdm_op_Write.ap_vld.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

define weak i28 @_ssdm_op_PartSelect.i28.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_5 = trunc i32 %empty to i28
  ret i28 %empty_5
}

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i5 @_ssdm_op_PartSelect.i5.i32.i32.i32(i32, i32, i32) nounwind readnone

!llvm.map.gv = !{!0}

!0 = metadata !{metadata !1, [1 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !""}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 7, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"search_string", metadata !11, metadata !"unsigned char"}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 16, i32 16, i32 2}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 7, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"search_string", metadata !17, metadata !"unsigned char"}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 15, i32 15, i32 2}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 7, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"search_string", metadata !23, metadata !"unsigned char"}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 14, i32 14, i32 2}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 7, metadata !27}
!27 = metadata !{metadata !28}
!28 = metadata !{metadata !"search_string", metadata !29, metadata !"unsigned char"}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 13, i32 13, i32 2}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 7, metadata !33}
!33 = metadata !{metadata !34}
!34 = metadata !{metadata !"search_string", metadata !35, metadata !"unsigned char"}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 12, i32 12, i32 2}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 0, i32 7, metadata !39}
!39 = metadata !{metadata !40}
!40 = metadata !{metadata !"search_string", metadata !41, metadata !"unsigned char"}
!41 = metadata !{metadata !42}
!42 = metadata !{i32 11, i32 11, i32 2}
!43 = metadata !{metadata !44}
!44 = metadata !{i32 0, i32 7, metadata !45}
!45 = metadata !{metadata !46}
!46 = metadata !{metadata !"search_string", metadata !47, metadata !"unsigned char"}
!47 = metadata !{metadata !48}
!48 = metadata !{i32 10, i32 10, i32 2}
!49 = metadata !{metadata !50}
!50 = metadata !{i32 0, i32 7, metadata !51}
!51 = metadata !{metadata !52}
!52 = metadata !{metadata !"search_string", metadata !53, metadata !"unsigned char"}
!53 = metadata !{metadata !54}
!54 = metadata !{i32 9, i32 9, i32 2}
!55 = metadata !{metadata !56}
!56 = metadata !{i32 0, i32 7, metadata !57}
!57 = metadata !{metadata !58}
!58 = metadata !{metadata !"search_string", metadata !59, metadata !"unsigned char"}
!59 = metadata !{metadata !60}
!60 = metadata !{i32 8, i32 8, i32 2}
!61 = metadata !{metadata !62}
!62 = metadata !{i32 0, i32 7, metadata !63}
!63 = metadata !{metadata !64}
!64 = metadata !{metadata !"search_string", metadata !65, metadata !"unsigned char"}
!65 = metadata !{metadata !66}
!66 = metadata !{i32 7, i32 7, i32 2}
!67 = metadata !{metadata !68}
!68 = metadata !{i32 0, i32 7, metadata !69}
!69 = metadata !{metadata !70}
!70 = metadata !{metadata !"search_string", metadata !71, metadata !"unsigned char"}
!71 = metadata !{metadata !72}
!72 = metadata !{i32 6, i32 6, i32 2}
!73 = metadata !{metadata !74}
!74 = metadata !{i32 0, i32 7, metadata !75}
!75 = metadata !{metadata !76}
!76 = metadata !{metadata !"search_string", metadata !77, metadata !"unsigned char"}
!77 = metadata !{metadata !78}
!78 = metadata !{i32 5, i32 5, i32 2}
!79 = metadata !{metadata !80}
!80 = metadata !{i32 0, i32 7, metadata !81}
!81 = metadata !{metadata !82}
!82 = metadata !{metadata !"search_string", metadata !83, metadata !"unsigned char"}
!83 = metadata !{metadata !84}
!84 = metadata !{i32 4, i32 4, i32 2}
!85 = metadata !{metadata !86}
!86 = metadata !{i32 0, i32 7, metadata !87}
!87 = metadata !{metadata !88}
!88 = metadata !{metadata !"search_string", metadata !89, metadata !"unsigned char"}
!89 = metadata !{metadata !90}
!90 = metadata !{i32 3, i32 3, i32 2}
!91 = metadata !{metadata !92}
!92 = metadata !{i32 0, i32 7, metadata !93}
!93 = metadata !{metadata !94}
!94 = metadata !{metadata !"search_string", metadata !95, metadata !"unsigned char"}
!95 = metadata !{metadata !96}
!96 = metadata !{i32 2, i32 2, i32 2}
!97 = metadata !{metadata !98}
!98 = metadata !{i32 0, i32 7, metadata !99}
!99 = metadata !{metadata !100}
!100 = metadata !{metadata !"search_string", metadata !101, metadata !"unsigned char"}
!101 = metadata !{metadata !102}
!102 = metadata !{i32 1, i32 1, i32 2}
!103 = metadata !{metadata !104}
!104 = metadata !{i32 0, i32 7, metadata !105}
!105 = metadata !{metadata !106}
!106 = metadata !{metadata !"search_string", metadata !107, metadata !"unsigned char"}
!107 = metadata !{metadata !108}
!108 = metadata !{i32 0, i32 0, i32 2}
!109 = metadata !{metadata !110}
!110 = metadata !{i32 0, i32 7, metadata !111}
!111 = metadata !{metadata !112}
!112 = metadata !{metadata !"ddr", metadata !113, metadata !"unsigned char"}
!113 = metadata !{metadata !114}
!114 = metadata !{i32 0, i32 1073741823, i32 1}
!115 = metadata !{metadata !116}
!116 = metadata !{i32 0, i32 31, metadata !117}
!117 = metadata !{metadata !118}
!118 = metadata !{metadata !"count_out", metadata !5, metadata !"int"}
!119 = metadata !{metadata !120}
!120 = metadata !{i32 0, i32 0, metadata !121}
!121 = metadata !{metadata !122}
!122 = metadata !{metadata !"return", metadata !123, metadata !"bool"}
!123 = metadata !{metadata !124}
!124 = metadata !{i32 0, i32 1, i32 0}
