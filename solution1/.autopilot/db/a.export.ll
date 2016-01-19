; ModuleID = '/Xilinx/memory_scanner/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str4 = private unnamed_addr constant [6 x i8] c"ap_hs\00", align 1
@p_str5 = private unnamed_addr constant [7 x i8] c"ap_vld\00", align 1
@p_str6 = private unnamed_addr constant [11 x i8] c"ap_ctrl_hs\00", align 1
@p_str7 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str8 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@str = internal constant [15 x i8] c"memory_scanner\00"

define weak void @_ssdm_op_SpecWire(...) nounwind {
entry:
  ret void
}

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

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

define weak i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8, i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %2 to i16
  %empty_37 = zext i8 %3 to i16
  %empty_38 = trunc i16 %empty to i8
  %empty_39 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %empty_37, i32 8, i32 15)
  %empty_40 = or i8 %empty_38, %empty_39
  %empty_41 = call i16 @_ssdm_op_PartSet.i16.i16.i8.i32.i32(i16 %empty_37, i8 %empty_40, i32 8, i32 15)
  %empty_42 = zext i8 %1 to i24
  %empty_43 = zext i16 %empty_41 to i24
  %empty_44 = trunc i24 %empty_42 to i8
  %empty_45 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %empty_43, i32 16, i32 23)
  %empty_46 = or i8 %empty_44, %empty_45
  %empty_47 = call i24 @_ssdm_op_PartSet.i24.i24.i8.i32.i32(i24 %empty_43, i8 %empty_46, i32 16, i32 23)
  %empty_48 = zext i8 %0 to i32
  %empty_49 = zext i24 %empty_47 to i32
  %empty_50 = trunc i32 %empty_48 to i8
  %empty_51 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %empty_49, i32 24, i32 31)
  %empty_52 = or i8 %empty_50, %empty_51
  %empty_53 = call i32 @_ssdm_op_PartSet.i32.i32.i8.i32.i32(i32 %empty_49, i8 %empty_52, i32 24, i32 31)
  ret i32 %empty_53
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_54 = trunc i32 %empty to i8
  ret i8 %empty_54
}

define i1 @memory_scanner(i32* %m_mm2s_ctl, i32* %m_s2mm_ctl, i32* %s_in_V_V, i32* %s_out_V_V, i8* %search_string_0, i8* %search_string_1, i8* %search_string_2, i8* %search_string_3, i8* %search_string_4, i8* %search_string_5, i8* %search_string_6, i8* %search_string_7, i8* %search_string_8, i8* %search_string_9, i8* %search_string_10, i8* %search_string_11, i8* %search_string_12, i8* %search_string_13, i8* %search_string_14, i8* %search_string_15, i8* %search_string_16, i32* %count_out) {
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
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %m_mm2s_ctl), !map !109
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %m_s2mm_ctl), !map !115
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %s_in_V_V), !map !119
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %s_out_V_V), !map !123
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %count_out), !map !127
  call void (...)* @_ssdm_op_SpecBitsMap(i1 false) nounwind, !map !131
  call void (...)* @_ssdm_op_SpecTopModule([15 x i8]* @str) nounwind
  call void (...)* @_ssdm_op_SpecWire(i32 0, [10 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i8* %search_string_0, i8* %search_string_1, i8* %search_string_2, i8* %search_string_3, i8* %search_string_4, i8* %search_string_5, i8* %search_string_6, i8* %search_string_7, i8* %search_string_8, i8* %search_string_9, i8* %search_string_10, i8* %search_string_11, i8* %search_string_12, i8* %search_string_13, i8* %search_string_14, i8* %search_string_15, i8* %search_string_16, [10 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i8* %search_string_0, i8* %search_string_1, i8* %search_string_2, i8* %search_string_3, i8* %search_string_4, i8* %search_string_5, i8* %search_string_6, i8* %search_string_7, i8* %search_string_8, i8* %search_string_9, i8* %search_string_10, i8* %search_string_11, i8* %search_string_12, i8* %search_string_13, i8* %search_string_14, i8* %search_string_15, i8* %search_string_16, [6 x i8]* @p_str4, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i32* %count_out, [10 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i32* %count_out, [7 x i8]* @p_str5, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i32 0, [11 x i8]* @p_str6, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i32* %s_out_V_V, [5 x i8]* @p_str7, i32 0, i32 0, i32 0, i32 1000, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i32* %s_in_V_V, [5 x i8]* @p_str7, i32 0, i32 0, i32 0, i32 1000, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i32* %m_s2mm_ctl, [6 x i8]* @p_str8, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecWire(i32* %m_mm2s_ctl, [6 x i8]* @p_str8, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  %p_req9 = call i1 @_ssdm_op_ReadReq.m_axi.i32P(i32* %m_mm2s_ctl, i32 1)
  %empty = call i32 @_ssdm_op_Read.m_axi.volatile.i32P(i32* %m_mm2s_ctl)
  %m_mm2s_ctl_req7 = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %m_mm2s_ctl, i32 1)
  call void @_ssdm_op_Write.m_axi.volatile.i32P(i32* %m_mm2s_ctl, i32 0)
  %m_mm2s_ctl_resp8 = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %m_mm2s_ctl)
  %m_mm2s_ctl_load_req = call i1 @_ssdm_op_ReadReq.m_axi.i32P(i32* %m_mm2s_ctl, i32 1)
  %m_mm2s_ctl_read = call i32 @_ssdm_op_Read.m_axi.volatile.i32P(i32* %m_mm2s_ctl)
  %tmp_1 = call i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32 %m_mm2s_ctl_read, i32 3, i32 31)
  %tmp_3 = trunc i32 %m_mm2s_ctl_read to i2
  %m_mm2s_ctl_assign = call i32 @_ssdm_op_BitConcatenate.i32.i29.i1.i2(i29 %tmp_1, i1 true, i2 %tmp_3)
  %m_mm2s_ctl_req5 = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %m_mm2s_ctl, i32 1)
  call void @_ssdm_op_Write.m_axi.volatile.i32P(i32* %m_mm2s_ctl, i32 %m_mm2s_ctl_assign)
  %m_mm2s_ctl_resp6 = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %m_mm2s_ctl)
  %p_req = call i1 @_ssdm_op_ReadReq.m_axi.i32P(i32* %m_mm2s_ctl, i32 1)
  %empty_55 = call i32 @_ssdm_op_Read.m_axi.volatile.i32P(i32* %m_mm2s_ctl)
  %m_mm2s_ctl_req3 = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %m_mm2s_ctl, i32 1)
  call void @_ssdm_op_Write.m_axi.volatile.i32P(i32* %m_mm2s_ctl, i32 0)
  %m_mm2s_ctl_resp4 = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %m_mm2s_ctl)
  %m_mm2s_ctl_load_1_req = call i1 @_ssdm_op_ReadReq.m_axi.i32P(i32* %m_mm2s_ctl, i32 1)
  %m_mm2s_ctl_read_1 = call i32 @_ssdm_op_Read.m_axi.volatile.i32P(i32* %m_mm2s_ctl)
  %tmp_4 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %m_mm2s_ctl_read_1, i32 1, i32 31)
  %m_mm2s_ctl_assign_1 = call i32 @_ssdm_op_BitConcatenate.i32.i31.i1(i31 %tmp_4, i1 true)
  %m_mm2s_ctl_req1 = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %m_mm2s_ctl, i32 1)
  call void @_ssdm_op_Write.m_axi.volatile.i32P(i32* %m_mm2s_ctl, i32 %m_mm2s_ctl_assign_1)
  %m_mm2s_ctl_resp2 = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %m_mm2s_ctl)
  %m_mm2s_ctl_load_2_req = call i1 @_ssdm_op_ReadReq.m_axi.i32P(i32* %m_mm2s_ctl, i32 1)
  %m_mm2s_ctl_read_2 = call i32 @_ssdm_op_Read.m_axi.volatile.i32P(i32* %m_mm2s_ctl)
  %tmp_5 = call i19 @_ssdm_op_PartSelect.i19.i32.i32.i32(i32 %m_mm2s_ctl_read_2, i32 13, i32 31)
  %tmp_6 = trunc i32 %m_mm2s_ctl_read_2 to i12
  %m_mm2s_ctl_assign_2 = call i32 @_ssdm_op_BitConcatenate.i32.i19.i1.i12(i19 %tmp_5, i1 true, i12 %tmp_6)
  %m_mm2s_ctl_req = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %m_mm2s_ctl, i32 1)
  call void @_ssdm_op_Write.m_axi.volatile.i32P(i32* %m_mm2s_ctl, i32 %m_mm2s_ctl_assign_2)
  %m_mm2s_ctl_resp = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %m_mm2s_ctl)
  %m_mm2s_ctl_addr = getelementptr i32* %m_mm2s_ctl, i64 6
  %m_mm2s_ctl_addr_req = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %m_mm2s_ctl_addr, i32 1)
  call void @_ssdm_op_Write.m_axi.volatile.i32P(i32* %m_mm2s_ctl_addr, i32 0)
  %m_mm2s_ctl_addr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %m_mm2s_ctl_addr)
  %m_mm2s_ctl_addr_1 = getelementptr i32* %m_mm2s_ctl, i64 10
  %m_mm2s_ctl_addr_1_req = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %m_mm2s_ctl_addr_1, i32 1)
  call void @_ssdm_op_Write.m_axi.volatile.i32P(i32* %m_mm2s_ctl_addr_1, i32 1073741824)
  %m_mm2s_ctl_addr_1_resp = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %m_mm2s_ctl_addr_1)
  br label %1

; <label>:1                                       ; preds = %5, %0
  %i = phi i29 [ 0, %0 ], [ %i_1, %5 ]
  %search_index = phi i32 [ 0, %0 ], [ %p_search_index_1, %5 ]
  %count = phi i32 [ 0, %0 ], [ %p_count, %5 ]
  %exitcond1 = icmp eq i29 %i, -268435456
  %empty_56 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 268435456, i64 268435456, i64 268435456)
  %i_1 = add i29 %i, 1
  br i1 %exitcond1, label %6, label %2

; <label>:2                                       ; preds = %1
  %tmp_V = call i32 @_ssdm_op_Read.axis.volatile.i32P(i32* %s_in_V_V)
  %p_Repl2_3 = trunc i32 %tmp_V to i8
  %p_Repl2_2 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp_V, i32 8, i32 15)
  %p_Repl2_1 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp_V, i32 16, i32 23)
  %p_Repl2_s = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp_V, i32 24, i32 31)
  %p_Result_2 = call i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8 %p_Repl2_3, i8 %p_Repl2_2, i8 %p_Repl2_1, i8 %p_Repl2_s)
  br label %3

; <label>:3                                       ; preds = %_ifconv.i, %2
  %data_out16_i = phi i8 [ undef, %2 ], [ %data_out16_1_i, %_ifconv.i ]
  %data_out_i = phi i8 [ undef, %2 ], [ %data_out_1_i, %_ifconv.i ]
  %data_out2_i = phi i8 [ undef, %2 ], [ %newSel9, %_ifconv.i ]
  %data_out3_i = phi i8 [ undef, %2 ], [ %newSel1, %_ifconv.i ]
  %i_i = phi i3 [ 0, %2 ], [ %i_2, %_ifconv.i ]
  %exitcond_i = icmp eq i3 %i_i, -4
  %empty_57 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %i_2 = add i3 %i_i, 1
  br i1 %exitcond_i, label %unpack_word.exit, label %_ifconv.i

_ifconv.i:                                        ; preds = %3
  %tmp_9 = trunc i3 %i_i to i2
  %tmp_i = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %tmp_9, i3 0)
  %Hi_assign = xor i5 %tmp_i, -1
  %Hi_assign_i_cast = zext i5 %Hi_assign to i32
  %Lo_assign = sub i5 -8, %tmp_i
  %Lo_assign_i_cast = zext i5 %Lo_assign to i32
  %p_Result_s = call i32 @llvm.part.select.i32(i32 %p_Result_2, i32 %Lo_assign_i_cast, i32 %Hi_assign_i_cast) nounwind
  %tmp_10 = trunc i32 %p_Result_s to i8
  %sel_tmp2_i = icmp eq i2 %tmp_9, 1
  %sel_tmp9_i = select i1 %sel_tmp2_i, i8 %tmp_10, i8 %data_out16_i
  %sel_tmp10_i = icmp eq i2 %tmp_9, 0
  %data_out16_1_i = select i1 %sel_tmp10_i, i8 %data_out16_i, i8 %sel_tmp9_i
  %sel_tmp12_i = icmp eq i2 %tmp_9, -2
  %data_out_1_i = select i1 %sel_tmp10_i, i8 %tmp_10, i8 %data_out_i
  %or_cond = or i1 %sel_tmp10_i, %sel_tmp2_i
  %newSel7 = select i1 %sel_tmp12_i, i8 %tmp_10, i8 %data_out2_i
  %newSel9 = select i1 %or_cond, i8 %data_out2_i, i8 %newSel7
  %newSel = select i1 %sel_tmp12_i, i8 %data_out3_i, i8 %tmp_10
  %newSel1 = select i1 %or_cond, i8 %data_out3_i, i8 %newSel
  br label %3

unpack_word.exit:                                 ; preds = %3, %4
  %j = phi i3 [ %j_1, %4 ], [ 0, %3 ]
  %search_index_1 = phi i32 [ %search_index_2, %4 ], [ %search_index, %3 ]
  %exitcond = icmp eq i3 %j, -4
  %empty_58 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %j_1 = add i3 %j, 1
  br i1 %exitcond, label %5, label %_ifconv

_ifconv:                                          ; preds = %unpack_word.exit
  %tmp_11 = trunc i3 %j to i2
  %sel_tmp = icmp eq i2 %tmp_11, 1
  %sel_tmp1 = select i1 %sel_tmp, i8 %data_out16_i, i8 %data_out3_i
  %sel_tmp2 = icmp eq i2 %tmp_11, -2
  %sel_tmp3 = select i1 %sel_tmp2, i8 %data_out2_i, i8 %sel_tmp1
  %sel_tmp4 = icmp eq i2 %tmp_11, 0
  %data_word_load_phi = select i1 %sel_tmp4, i8 %data_out_i, i8 %sel_tmp3
  %tmp_12 = trunc i32 %search_index_1 to i5
  switch i5 %tmp_12, label %branch16 [
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

; <label>:4                                       ; preds = %branch16, %branch15, %branch14, %branch13, %branch12, %branch11, %branch10, %branch9, %branch8, %branch7, %branch6, %branch5, %branch4, %branch3, %branch2, %branch1, %branch0
  %search_string_load_phi = phi i8 [ %search_string_0_read, %branch0 ], [ %search_string_1_read, %branch1 ], [ %search_string_2_read, %branch2 ], [ %search_string_3_read, %branch3 ], [ %search_string_4_read, %branch4 ], [ %search_string_5_read, %branch5 ], [ %search_string_6_read, %branch6 ], [ %search_string_7_read, %branch7 ], [ %search_string_8_read, %branch8 ], [ %search_string_9_read, %branch9 ], [ %search_string_10_read, %branch10 ], [ %search_string_11_read, %branch11 ], [ %search_string_12_read, %branch12 ], [ %search_string_13_read, %branch13 ], [ %search_string_14_read, %branch14 ], [ %search_string_15_read, %branch15 ], [ %search_string_16_read, %branch16 ]
  %tmp_2 = icmp eq i8 %data_word_load_phi, %search_string_load_phi
  %search_index_3 = add nsw i32 %search_index_1, 1
  %search_index_2 = select i1 %tmp_2, i32 %search_index_3, i32 0
  br label %unpack_word.exit

; <label>:5                                       ; preds = %unpack_word.exit
  %tmp_7 = icmp sgt i32 %search_index_1, 16
  %count_1 = add nsw i32 %count, 1
  %p_search_index_1 = select i1 %tmp_7, i32 0, i32 %search_index_1
  %p_count = select i1 %tmp_7, i32 %count_1, i32 %count
  br label %1

; <label>:6                                       ; preds = %1
  call void @_ssdm_op_Write.ap_vld.i32P(i32* %count_out, i32 %count)
  %tmp = call i1 @_ssdm_op_NbWriteReq.axis.i32P(i32* %s_out_V_V, i32 1)
  br i1 %tmp, label %._crit_edge, label %7

; <label>:7                                       ; preds = %6
  call void @_ssdm_op_Write.axis.volatile.i32P(i32* %s_out_V_V, i32 0)
  br label %._crit_edge

._crit_edge:                                      ; preds = %7, %6
  ret i1 true

branch0:                                          ; preds = %_ifconv
  %search_string_0_read = call i8 @_ssdm_op_Read.ap_hs.i8P(i8* %search_string_0)
  br label %4

branch1:                                          ; preds = %_ifconv
  %search_string_1_read = call i8 @_ssdm_op_Read.ap_hs.i8P(i8* %search_string_1)
  br label %4

branch2:                                          ; preds = %_ifconv
  %search_string_2_read = call i8 @_ssdm_op_Read.ap_hs.i8P(i8* %search_string_2)
  br label %4

branch3:                                          ; preds = %_ifconv
  %search_string_3_read = call i8 @_ssdm_op_Read.ap_hs.i8P(i8* %search_string_3)
  br label %4

branch4:                                          ; preds = %_ifconv
  %search_string_4_read = call i8 @_ssdm_op_Read.ap_hs.i8P(i8* %search_string_4)
  br label %4

branch5:                                          ; preds = %_ifconv
  %search_string_5_read = call i8 @_ssdm_op_Read.ap_hs.i8P(i8* %search_string_5)
  br label %4

branch6:                                          ; preds = %_ifconv
  %search_string_6_read = call i8 @_ssdm_op_Read.ap_hs.i8P(i8* %search_string_6)
  br label %4

branch7:                                          ; preds = %_ifconv
  %search_string_7_read = call i8 @_ssdm_op_Read.ap_hs.i8P(i8* %search_string_7)
  br label %4

branch8:                                          ; preds = %_ifconv
  %search_string_8_read = call i8 @_ssdm_op_Read.ap_hs.i8P(i8* %search_string_8)
  br label %4

branch9:                                          ; preds = %_ifconv
  %search_string_9_read = call i8 @_ssdm_op_Read.ap_hs.i8P(i8* %search_string_9)
  br label %4

branch10:                                         ; preds = %_ifconv
  %search_string_10_read = call i8 @_ssdm_op_Read.ap_hs.i8P(i8* %search_string_10)
  br label %4

branch11:                                         ; preds = %_ifconv
  %search_string_11_read = call i8 @_ssdm_op_Read.ap_hs.i8P(i8* %search_string_11)
  br label %4

branch12:                                         ; preds = %_ifconv
  %search_string_12_read = call i8 @_ssdm_op_Read.ap_hs.i8P(i8* %search_string_12)
  br label %4

branch13:                                         ; preds = %_ifconv
  %search_string_13_read = call i8 @_ssdm_op_Read.ap_hs.i8P(i8* %search_string_13)
  br label %4

branch14:                                         ; preds = %_ifconv
  %search_string_14_read = call i8 @_ssdm_op_Read.ap_hs.i8P(i8* %search_string_14)
  br label %4

branch15:                                         ; preds = %_ifconv
  %search_string_15_read = call i8 @_ssdm_op_Read.ap_hs.i8P(i8* %search_string_15)
  br label %4

branch16:                                         ; preds = %_ifconv
  %search_string_16_read = call i8 @_ssdm_op_Read.ap_hs.i8P(i8* %search_string_16)
  br label %4
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak i19 @_ssdm_op_PartSelect.i19.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_59 = trunc i32 %empty to i19
  ret i19 %empty_59
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i19.i1.i12(i19, i1, i12) nounwind readnone {
entry:
  %empty = zext i1 %1 to i13
  %empty_60 = zext i12 %2 to i13
  %empty_61 = trunc i13 %empty to i1
  %empty_62 = call i1 @_ssdm_op_BitSelect.i1.i13.i32(i13 %empty_60, i32 12)
  %empty_63 = or i1 %empty_61, %empty_62
  %empty_64 = call i13 @_ssdm_op_PartSet.i13.i13.i1.i32.i32(i13 %empty_60, i1 %empty_63, i32 12, i32 12)
  %empty_65 = zext i19 %0 to i32
  %empty_66 = zext i13 %empty_64 to i32
  %empty_67 = trunc i32 %empty_65 to i19
  %empty_68 = call i19 @_ssdm_op_PartSelect.i19.i32.i32.i32(i32 %empty_66, i32 13, i32 31)
  %empty_69 = or i19 %empty_67, %empty_68
  %empty_70 = call i32 @_ssdm_op_PartSet.i32.i32.i19.i32.i32(i32 %empty_66, i19 %empty_69, i32 13, i32 31)
  ret i32 %empty_70
}

define weak i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_71 = trunc i32 %empty to i31
  ret i31 %empty_71
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i31.i1(i31, i1) nounwind readnone {
entry:
  %empty = zext i31 %0 to i32
  %empty_72 = zext i1 %1 to i32
  %empty_73 = trunc i32 %empty to i31
  %empty_74 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %empty_72, i32 1, i32 31)
  %empty_75 = or i31 %empty_73, %empty_74
  %empty_76 = call i32 @_ssdm_op_PartSet.i32.i32.i31.i32.i32(i32 %empty_72, i31 %empty_75, i32 1, i32 31)
  ret i32 %empty_76
}

define weak i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_77 = trunc i32 %empty to i29
  ret i29 %empty_77
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i29.i1.i2(i29, i1, i2) nounwind readnone {
entry:
  %empty = zext i1 %1 to i3
  %empty_78 = zext i2 %2 to i3
  %empty_79 = trunc i3 %empty to i1
  %empty_80 = call i1 @_ssdm_op_BitSelect.i1.i3.i32(i3 %empty_78, i32 2)
  %empty_81 = or i1 %empty_79, %empty_80
  %empty_82 = call i3 @_ssdm_op_PartSet.i3.i3.i1.i32.i32(i3 %empty_78, i1 %empty_81, i32 2, i32 2)
  %empty_83 = zext i29 %0 to i32
  %empty_84 = zext i3 %empty_82 to i32
  %empty_85 = trunc i32 %empty_83 to i29
  %empty_86 = call i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32 %empty_84, i32 3, i32 31)
  %empty_87 = or i29 %empty_85, %empty_86
  %empty_88 = call i32 @_ssdm_op_PartSet.i32.i32.i29.i32.i32(i32 %empty_84, i29 %empty_87, i32 3, i32 31)
  ret i32 %empty_88
}

define weak i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2, i3) nounwind readnone {
entry:
  %empty = zext i2 %0 to i5
  %empty_89 = zext i3 %1 to i5
  %empty_90 = trunc i5 %empty to i2
  %empty_91 = call i2 @_ssdm_op_PartSelect.i2.i5.i32.i32(i5 %empty_89, i32 3, i32 4)
  %empty_92 = or i2 %empty_90, %empty_91
  %empty_93 = call i5 @_ssdm_op_PartSet.i5.i5.i2.i32.i32(i5 %empty_89, i2 %empty_92, i32 3, i32 4)
  ret i5 %empty_93
}

define weak void @_ssdm_op_Write.m_axi.volatile.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

define weak i1 @_ssdm_op_WriteReq.m_axi.i32P(i32*, i32) {
entry:
  ret i1 true
}

define weak i1 @_ssdm_op_WriteResp.m_axi.i32P(i32*) {
entry:
  ret i1 true
}

define weak i32 @_ssdm_op_Read.m_axi.volatile.i32P(i32*) {
entry:
  %empty = load i32* %0
  ret i32 %empty
}

define weak i1 @_ssdm_op_ReadReq.m_axi.i32P(i32*, i32) {
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

define weak i32 @_ssdm_op_Read.axis.volatile.i32P(i32*) {
entry:
  %empty = load i32* %0
  ret i32 %empty
}

define weak i1 @_ssdm_op_NbWriteReq.axis.i32P(i32*, i32) {
entry:
  ret i1 true
}

define weak void @_ssdm_op_Write.axis.volatile.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

declare i12 @_ssdm_op_PartSelect.i12.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i2 @_ssdm_op_PartSelect.i2.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i2 @_ssdm_op_PartSelect.i2.i3.i32.i32(i3, i32, i32) nounwind readnone

declare i5 @_ssdm_op_PartSelect.i5.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16, i32, i32) nounwind readnone {
entry:
  %empty = call i16 @llvm.part.select.i16(i16 %0, i32 %1, i32 %2)
  %empty_94 = trunc i16 %empty to i8
  ret i8 %empty_94
}

define weak i16 @_ssdm_op_PartSet.i16.i16.i8.i32.i32(i16, i8, i32, i32) nounwind readnone {
entry:
  %empty = call i16 @llvm.part.set.i16.i8(i16 %0, i8 %1, i32 %2, i32 %3)
  ret i16 %empty
}

define weak i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24, i32, i32) nounwind readnone {
entry:
  %empty = call i24 @llvm.part.select.i24(i24 %0, i32 %1, i32 %2)
  %empty_95 = trunc i24 %empty to i8
  ret i8 %empty_95
}

define weak i24 @_ssdm_op_PartSet.i24.i24.i8.i32.i32(i24, i8, i32, i32) nounwind readnone {
entry:
  %empty = call i24 @llvm.part.set.i24.i8(i24 %0, i8 %1, i32 %2, i32 %3)
  ret i24 %empty
}

define weak i32 @_ssdm_op_PartSet.i32.i32.i8.i32.i32(i32, i8, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.set.i32.i8(i32 %0, i8 %1, i32 %2, i32 %3)
  ret i32 %empty
}

declare i1 @_ssdm_op_PartSelect.i1.i13.i32.i32(i13, i32, i32) nounwind readnone

define weak i13 @_ssdm_op_PartSet.i13.i13.i1.i32.i32(i13, i1, i32, i32) nounwind readnone {
entry:
  %empty = call i13 @llvm.part.set.i13.i1(i13 %0, i1 %1, i32 %2, i32 %3)
  ret i13 %empty
}

define weak i1 @_ssdm_op_BitSelect.i1.i13.i32(i13, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i13
  %empty_96 = shl i13 1, %empty
  %empty_97 = and i13 %0, %empty_96
  %empty_98 = icmp ne i13 %empty_97, 0
  ret i1 %empty_98
}

define weak i32 @_ssdm_op_PartSet.i32.i32.i19.i32.i32(i32, i19, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.set.i32.i19(i32 %0, i19 %1, i32 %2, i32 %3)
  ret i32 %empty
}

define weak i32 @_ssdm_op_PartSet.i32.i32.i31.i32.i32(i32, i31, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.set.i32.i31(i32 %0, i31 %1, i32 %2, i32 %3)
  ret i32 %empty
}

declare i1 @_ssdm_op_PartSelect.i1.i3.i32.i32(i3, i32, i32) nounwind readnone

define weak i3 @_ssdm_op_PartSet.i3.i3.i1.i32.i32(i3, i1, i32, i32) nounwind readnone {
entry:
  %empty = call i3 @llvm.part.set.i3.i1(i3 %0, i1 %1, i32 %2, i32 %3)
  ret i3 %empty
}

define weak i1 @_ssdm_op_BitSelect.i1.i3.i32(i3, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i3
  %empty_99 = shl i3 1, %empty
  %empty_100 = and i3 %0, %empty_99
  %empty_101 = icmp ne i3 %empty_100, 0
  ret i1 %empty_101
}

define weak i32 @_ssdm_op_PartSet.i32.i32.i29.i32.i32(i32, i29, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.set.i32.i29(i32 %0, i29 %1, i32 %2, i32 %3)
  ret i32 %empty
}

define weak i2 @_ssdm_op_PartSelect.i2.i5.i32.i32(i5, i32, i32) nounwind readnone {
entry:
  %empty = call i5 @llvm.part.select.i5(i5 %0, i32 %1, i32 %2)
  %empty_102 = trunc i5 %empty to i2
  ret i2 %empty_102
}

define weak i5 @_ssdm_op_PartSet.i5.i5.i2.i32.i32(i5, i2, i32, i32) nounwind readnone {
entry:
  %empty = call i5 @llvm.part.set.i5.i2(i5 %0, i2 %1, i32 %2, i32 %3)
  ret i5 %empty
}

declare i16 @llvm.part.select.i16(i16, i32, i32) nounwind readnone

declare i16 @llvm.part.set.i16.i8(i16, i8, i32, i32) nounwind readnone

declare i24 @llvm.part.select.i24(i24, i32, i32) nounwind readnone

declare i24 @llvm.part.set.i24.i8(i24, i8, i32, i32) nounwind readnone

declare i32 @llvm.part.set.i32.i8(i32, i8, i32, i32) nounwind readnone

declare i13 @llvm.part.set.i13.i1(i13, i1, i32, i32) nounwind readnone

declare i32 @llvm.part.set.i32.i19(i32, i19, i32, i32) nounwind readnone

declare i32 @llvm.part.set.i32.i31(i32, i31, i32, i32) nounwind readnone

declare i3 @llvm.part.set.i3.i1(i3, i1, i32, i32) nounwind readnone

declare i32 @llvm.part.set.i32.i29(i32, i29, i32, i32) nounwind readnone

declare i5 @llvm.part.select.i5(i5, i32, i32) nounwind readnone

declare i5 @llvm.part.set.i5.i2(i5, i2, i32, i32) nounwind readnone

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
!110 = metadata !{i32 0, i32 31, metadata !111}
!111 = metadata !{metadata !112}
!112 = metadata !{metadata !"m_mm2s_ctl", metadata !113, metadata !"unsigned int"}
!113 = metadata !{metadata !114}
!114 = metadata !{i32 0, i32 499, i32 1}
!115 = metadata !{metadata !116}
!116 = metadata !{i32 0, i32 31, metadata !117}
!117 = metadata !{metadata !118}
!118 = metadata !{metadata !"m_s2mm_ctl", metadata !113, metadata !"unsigned int"}
!119 = metadata !{metadata !120}
!120 = metadata !{i32 0, i32 31, metadata !121}
!121 = metadata !{metadata !122}
!122 = metadata !{metadata !"s_in.V.V", metadata !5, metadata !"uint32"}
!123 = metadata !{metadata !124}
!124 = metadata !{i32 0, i32 31, metadata !125}
!125 = metadata !{metadata !126}
!126 = metadata !{metadata !"s_out.V.V", metadata !5, metadata !"uint32"}
!127 = metadata !{metadata !128}
!128 = metadata !{i32 0, i32 31, metadata !129}
!129 = metadata !{metadata !130}
!130 = metadata !{metadata !"count_out", metadata !5, metadata !"int"}
!131 = metadata !{metadata !132}
!132 = metadata !{i32 0, i32 0, metadata !133}
!133 = metadata !{metadata !134}
!134 = metadata !{metadata !"return", metadata !135, metadata !"bool"}
!135 = metadata !{metadata !136}
!136 = metadata !{i32 0, i32 1, i32 0}
