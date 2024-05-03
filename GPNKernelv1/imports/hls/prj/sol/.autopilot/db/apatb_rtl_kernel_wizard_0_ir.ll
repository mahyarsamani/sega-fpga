; ModuleID = '/home/austin01/vivado/rtl_kernel_wizard_0_ex/imports/hls/prj/sol/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>" = type { %"struct.hls::axis<ap_uint<256>, 0, 0, 0>" }
%"struct.hls::axis<ap_uint<256>, 0, 0, 0>" = type { %"struct.ap_uint<256>", %"struct.ap_uint<32>", %"struct.ap_uint<32>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" }
%"struct.ap_uint<256>" = type { %"struct.ap_int_base<256, false>" }
%"struct.ap_int_base<256, false>" = type { %"struct.ssdm_int<256, false>" }
%"struct.ssdm_int<256, false>" = type { i256 }
%"struct.ap_uint<32>" = type { %"struct.ap_int_base<32, false>" }
%"struct.ap_int_base<32, false>" = type { %"struct.ssdm_int<32, false>" }
%"struct.ssdm_int<32, false>" = type { i32 }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }
%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>" = type { %"struct.hls::axis<ap_uint<512>, 0, 0, 0>" }
%"struct.hls::axis<ap_uint<512>, 0, 0, 0>" = type { %"struct.ap_uint<512>", %"struct.ap_uint<64>", %"struct.ap_uint<64>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" }
%"struct.ap_uint<512>" = type { %"struct.ap_int_base<512, false>" }
%"struct.ap_int_base<512, false>" = type { %"struct.ssdm_int<512, false>" }
%"struct.ssdm_int<512, false>" = type { i512 }
%"struct.ap_uint<64>" = type { %"struct.ap_int_base<64, false>" }
%"struct.ap_int_base<64, false>" = type { %"struct.ssdm_int<64, false>" }
%"struct.ssdm_int<64, false>" = type { i64 }

; Function Attrs: noinline
define void @apatb_rtl_kernel_wizard_0_ir(i64 %Message, i32 %PEControl, %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"* noalias nocapture nonnull dereferenceable(64) %axisHBMin, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias nocapture nonnull dereferenceable(128) %axisDDRin, %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"* noalias nocapture nonnull dereferenceable(64) %axisHBMout, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias nocapture nonnull dereferenceable(128) %axisDDRout) local_unnamed_addr #0 {
entry:
  %axisHBMin_copy.data = alloca i256
  %axisHBMin_copy.keep = alloca i32
  %axisHBMin_copy.strb = alloca i32
  %axisHBMin_copy.last = alloca i1
  %axisDDRin_copy.data = alloca i512
  %axisDDRin_copy.keep = alloca i64
  %axisDDRin_copy.strb = alloca i64
  %axisDDRin_copy.last = alloca i1
  %axisHBMout_copy.data = alloca i256
  %axisHBMout_copy.keep = alloca i32
  %axisHBMout_copy.strb = alloca i32
  %axisHBMout_copy.last = alloca i1
  %axisDDRout_copy.data = alloca i512
  %axisDDRout_copy.keep = alloca i64
  %axisDDRout_copy.strb = alloca i64
  %axisDDRout_copy.last = alloca i1
  call fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"* nonnull %axisHBMin, i256* %axisHBMin_copy.data, i32* %axisHBMin_copy.keep, i32* %axisHBMin_copy.strb, i1* %axisHBMin_copy.last, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* nonnull %axisDDRin, i512* %axisDDRin_copy.data, i64* %axisDDRin_copy.keep, i64* %axisDDRin_copy.strb, i1* %axisDDRin_copy.last, %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"* nonnull %axisHBMout, i256* %axisHBMout_copy.data, i32* %axisHBMout_copy.keep, i32* %axisHBMout_copy.strb, i1* %axisHBMout_copy.last, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* nonnull %axisDDRout, i512* %axisDDRout_copy.data, i64* %axisDDRout_copy.keep, i64* %axisDDRout_copy.strb, i1* %axisDDRout_copy.last)
  call void @apatb_rtl_kernel_wizard_0_hw(i64 %Message, i32 %PEControl, i256* %axisHBMin_copy.data, i32* %axisHBMin_copy.keep, i32* %axisHBMin_copy.strb, i1* %axisHBMin_copy.last, i512* %axisDDRin_copy.data, i64* %axisDDRin_copy.keep, i64* %axisDDRin_copy.strb, i1* %axisDDRin_copy.last, i256* %axisHBMout_copy.data, i32* %axisHBMout_copy.keep, i32* %axisHBMout_copy.strb, i1* %axisHBMout_copy.last, i512* %axisDDRout_copy.data, i64* %axisDDRout_copy.keep, i64* %axisDDRout_copy.strb, i1* %axisDDRout_copy.last)
  call void @copy_back(%"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"* %axisHBMin, i256* %axisHBMin_copy.data, i32* %axisHBMin_copy.keep, i32* %axisHBMin_copy.strb, i1* %axisHBMin_copy.last, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %axisDDRin, i512* %axisDDRin_copy.data, i64* %axisDDRin_copy.keep, i64* %axisDDRin_copy.strb, i1* %axisDDRin_copy.last, %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"* %axisHBMout, i256* %axisHBMout_copy.data, i32* %axisHBMout_copy.keep, i32* %axisHBMout_copy.strb, i1* %axisHBMout_copy.last, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %axisDDRout, i512* %axisDDRout_copy.data, i64* %axisDDRout_copy.keep, i64* %axisDDRout_copy.strb, i1* %axisDDRout_copy.last)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"* noalias, i256* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.0" %_V_data_V1, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.1" %_V_keep_V2, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.3" %_V_last_V4, %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"* noalias, i256* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="8.0" %_V_data_V15, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="8.1" %_V_keep_V26, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="8.2" %_V_strb_V37, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="8.3" %_V_last_V48, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.0" %_V_data_V159, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.1" %_V_keep_V2610, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.2" %_V_strb_V3711, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.3" %_V_last_V4812) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>.163"(i256* %_V_data_V, i32* %_V_keep_V, i32* %_V_strb_V, i1* %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.144"(i512* %_V_data_V1, i64* %_V_keep_V2, i64* %_V_strb_V3, i1* %_V_last_V4, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>.163"(i256* %_V_data_V15, i32* %_V_keep_V26, i32* %_V_strb_V37, i1* %_V_last_V48, %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"* %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.144"(i512* %_V_data_V159, i64* %_V_keep_V2610, i64* %_V_strb_V3711, i1* %_V_last_V4812, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %3)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out(%"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"* noalias, i256* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.0" %_V_data_V1, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.1" %_V_keep_V2, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.3" %_V_last_V4, %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"* noalias, i256* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="8.0" %_V_data_V15, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="8.1" %_V_keep_V26, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="8.2" %_V_strb_V37, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="8.3" %_V_last_V48, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.0" %_V_data_V159, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.1" %_V_keep_V2610, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.2" %_V_strb_V3711, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.3" %_V_last_V4812) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"* %0, i256* %_V_data_V, i32* %_V_keep_V, i32* %_V_strb_V, i1* %_V_last_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %1, i512* %_V_data_V1, i64* %_V_keep_V2, i64* %_V_strb_V3, i1* %_V_last_V4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"* %2, i256* %_V_data_V15, i32* %_V_keep_V26, i32* %_V_strb_V37, i1* %_V_last_V48)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %3, i512* %_V_data_V159, i64* %_V_keep_V2610, i64* %_V_strb_V3711, i1* %_V_last_V4812)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V) unnamed_addr #3 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %0, null
  %2 = or i1 %1, false
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.139"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* nonnull align 512 %0, i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.139"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", i512* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V) unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"
  %2 = alloca i512
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i1
  br label %empty

empty:                                            ; preds = %push, %entry
  %6 = bitcast i512* %_V_data_V to i8*
  %7 = call i1 @fpga_fifo_not_empty_64(i8* %6)
  br i1 %7, label %push, label %ret

push:                                             ; preds = %empty
  %8 = bitcast i512* %2 to i8*
  %9 = bitcast i512* %_V_data_V to i8*
  call void @fpga_fifo_pop_64(i8* %8, i8* %9)
  %10 = load volatile i512, i512* %2
  %11 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 0
  %12 = bitcast %"struct.ap_uint<512>"* %11 to i512*
  store i512 %10, i512* %12
  %13 = bitcast i64* %4 to i8*
  %14 = bitcast i64* %_V_keep_V to i8*
  call void @fpga_fifo_pop_8(i8* %13, i8* %14)
  %15 = load volatile i64, i64* %4
  %16 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 1
  %17 = bitcast %"struct.ap_uint<64>"* %16 to i64*
  store i64 %15, i64* %17
  %18 = bitcast i64* %3 to i8*
  %19 = bitcast i64* %_V_strb_V to i8*
  call void @fpga_fifo_pop_8(i8* %18, i8* %19)
  %20 = load volatile i64, i64* %3
  %21 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 2
  %22 = bitcast %"struct.ap_uint<64>"* %21 to i64*
  store i64 %20, i64* %22
  %23 = bitcast i1* %5 to i8*
  %24 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %23, i8* %24)
  %25 = bitcast i1* %5 to i8*
  %26 = load i8, i8* %25
  %27 = trunc i8 %26 to i1
  %28 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 4
  %29 = bitcast %"struct.ap_uint<1>"* %28 to i1*
  store i1 %27, i1* %29
  %30 = bitcast %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %1 to i8*
  %31 = bitcast %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %0 to i8*
  call void @fpga_fifo_push_128(i8* %30, i8* %31)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.144"(i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %0, null
  %2 = or i1 false, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.147"(i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* nonnull %0)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.147"(i512* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"
  %2 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %0 to i8*
  %4 = call i1 @fpga_fifo_not_empty_128(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_128(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %2
  store %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>" %7, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %1
  %8 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 0
  %9 = bitcast %"struct.ap_uint<512>"* %8 to i512*
  %10 = bitcast i512* %9 to i8*
  %11 = bitcast i512* %_V_data_V to i8*
  call void @fpga_fifo_push_64(i8* %10, i8* %11)
  %12 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 1
  %13 = bitcast %"struct.ap_uint<64>"* %12 to i64*
  %14 = bitcast i64* %13 to i8*
  %15 = bitcast i64* %_V_keep_V to i8*
  call void @fpga_fifo_push_8(i8* %14, i8* %15)
  %16 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 2
  %17 = bitcast %"struct.ap_uint<64>"* %16 to i64*
  %18 = bitcast i64* %17 to i8*
  %19 = bitcast i64* %_V_strb_V to i8*
  call void @fpga_fifo_push_8(i8* %18, i8* %19)
  %20 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 4
  %21 = bitcast %"struct.ap_uint<1>"* %20 to i1*
  %22 = bitcast i1* %21 to i8*
  %23 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %22, i8* %23)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", i256* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V) unnamed_addr #3 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"* %0, null
  %2 = or i1 %1, false
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>.158"(%"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"* nonnull align 512 %0, i256* %_V_data_V, i32* %_V_keep_V, i32* %_V_strb_V, i1* %_V_last_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>.158"(%"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", i256* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i32* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i32* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V) unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"
  %2 = alloca i1
  %3 = alloca i256
  %4 = alloca i32
  %5 = alloca i32
  br label %empty

empty:                                            ; preds = %push, %entry
  %6 = bitcast i256* %_V_data_V to i8*
  %7 = call i1 @fpga_fifo_not_empty_32(i8* %6)
  br i1 %7, label %push, label %ret

push:                                             ; preds = %empty
  %8 = bitcast i256* %3 to i8*
  %9 = bitcast i256* %_V_data_V to i8*
  call void @fpga_fifo_pop_32(i8* %8, i8* %9)
  %10 = load volatile i256, i256* %3
  %11 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 0
  %12 = bitcast %"struct.ap_uint<256>"* %11 to i256*
  store i256 %10, i256* %12
  %13 = bitcast i32* %5 to i8*
  %14 = bitcast i32* %_V_keep_V to i8*
  call void @fpga_fifo_pop_4(i8* %13, i8* %14)
  %15 = load volatile i32, i32* %5
  %16 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 1
  %17 = bitcast %"struct.ap_uint<32>"* %16 to i32*
  store i32 %15, i32* %17
  %18 = bitcast i32* %4 to i8*
  %19 = bitcast i32* %_V_strb_V to i8*
  call void @fpga_fifo_pop_4(i8* %18, i8* %19)
  %20 = load volatile i32, i32* %4
  %21 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 2
  %22 = bitcast %"struct.ap_uint<32>"* %21 to i32*
  store i32 %20, i32* %22
  %23 = bitcast i1* %2 to i8*
  %24 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %23, i8* %24)
  %25 = bitcast i1* %2 to i8*
  %26 = load i8, i8* %25
  %27 = trunc i8 %26 to i1
  %28 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 4
  %29 = bitcast %"struct.ap_uint<1>"* %28 to i1*
  store i1 %27, i1* %29
  %30 = bitcast %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"* %1 to i8*
  %31 = bitcast %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"* %0 to i8*
  call void @fpga_fifo_push_64(i8* %30, i8* %31)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>.163"(i256* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"* %0, null
  %2 = or i1 false, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>.166"(i256* %_V_data_V, i32* %_V_keep_V, i32* %_V_strb_V, i1* %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"* nonnull %0)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>.166"(i256* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i32* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i32* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"
  %2 = alloca %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"* %0 to i8*
  %4 = call i1 @fpga_fifo_not_empty_64(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_64(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"* %2
  store %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>" %7, %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"* %1
  %8 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 0
  %9 = bitcast %"struct.ap_uint<256>"* %8 to i256*
  %10 = bitcast i256* %9 to i8*
  %11 = bitcast i256* %_V_data_V to i8*
  call void @fpga_fifo_push_32(i8* %10, i8* %11)
  %12 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 1
  %13 = bitcast %"struct.ap_uint<32>"* %12 to i32*
  %14 = bitcast i32* %13 to i8*
  %15 = bitcast i32* %_V_keep_V to i8*
  call void @fpga_fifo_push_4(i8* %14, i8* %15)
  %16 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 2
  %17 = bitcast %"struct.ap_uint<32>"* %16 to i32*
  %18 = bitcast i32* %17 to i8*
  %19 = bitcast i32* %_V_strb_V to i8*
  call void @fpga_fifo_push_4(i8* %18, i8* %19)
  %20 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 4
  %21 = bitcast %"struct.ap_uint<1>"* %20 to i1*
  %22 = bitcast i1* %21 to i8*
  %23 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %22, i8* %23)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

declare void @apatb_rtl_kernel_wizard_0_hw(i64, i32, i256*, i32*, i32*, i1*, i512*, i64*, i64*, i1*, i256*, i32*, i32*, i1*, i512*, i64*, i64*, i1*)

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_back(%"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"* noalias, i256* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.0" %_V_data_V1, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.1" %_V_keep_V2, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.3" %_V_last_V4, %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"* noalias, i256* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="8.0" %_V_data_V15, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="8.1" %_V_keep_V26, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="8.2" %_V_strb_V37, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="8.3" %_V_last_V48, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.0" %_V_data_V159, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.1" %_V_keep_V2610, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.2" %_V_strb_V3711, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.3" %_V_last_V4812) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"* %0, i256* %_V_data_V, i32* %_V_keep_V, i32* %_V_strb_V, i1* %_V_last_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %1, i512* %_V_data_V1, i64* %_V_keep_V2, i64* %_V_strb_V3, i1* %_V_last_V4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"* %2, i256* %_V_data_V15, i32* %_V_keep_V26, i32* %_V_strb_V37, i1* %_V_last_V48)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %3, i512* %_V_data_V159, i64* %_V_keep_V2610, i64* %_V_strb_V3711, i1* %_V_last_V4812)
  ret void
}

define void @rtl_kernel_wizard_0_hw_stub_wrapper(i64, i32, i256*, i32*, i32*, i1*, i512*, i64*, i64*, i1*, i256*, i32*, i32*, i1*, i512*, i64*, i64*, i1*) #5 {
entry:
  %18 = alloca %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"
  %19 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"
  %20 = alloca %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"
  %21 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"
  call void @copy_out(%"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"* %18, i256* %2, i32* %3, i32* %4, i1* %5, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %19, i512* %6, i64* %7, i64* %8, i1* %9, %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"* %20, i256* %10, i32* %11, i32* %12, i1* %13, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %21, i512* %14, i64* %15, i64* %16, i1* %17)
  call void @rtl_kernel_wizard_0_hw_stub(i64 %0, i32 %1, %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"* %18, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %19, %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"* %20, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %21)
  call void @copy_in(%"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"* %18, i256* %2, i32* %3, i32* %4, i1* %5, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %19, i512* %6, i64* %7, i64* %8, i1* %9, %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"* %20, i256* %10, i32* %11, i32* %12, i1* %13, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %21, i512* %14, i64* %15, i64* %16, i1* %17)
  ret void
}

declare void @rtl_kernel_wizard_0_hw_stub(i64, i32, %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<256>, 0, 0, 0>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*)

declare i1 @fpga_fifo_not_empty_64(i8*)

declare i1 @fpga_fifo_not_empty_128(i8*)

declare i1 @fpga_fifo_not_empty_32(i8*)

declare void @fpga_fifo_pop_64(i8*, i8*)

declare void @fpga_fifo_pop_128(i8*, i8*)

declare void @fpga_fifo_pop_8(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_pop_32(i8*, i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_push_64(i8*, i8*)

declare void @fpga_fifo_push_128(i8*, i8*)

declare void @fpga_fifo_push_8(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

declare void @fpga_fifo_push_32(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
!7 = distinct !{!7, !6}
