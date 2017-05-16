////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.68d
//  \   \         Application: netgen
//  /   /         Filename: fb_less_2d_gpu_standalone_synthesis.v
// /___/   /\     Timestamp: Wed May 17 01:25:06 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim fb_less_2d_gpu_standalone.ngc fb_less_2d_gpu_standalone_synthesis.v 
// Device	: xc6slx45-2-fgg676
// Input file	: fb_less_2d_gpu_standalone.ngc
// Output file	: D:\FBless_2D_GPU\pcores\fb_less_2d_gpu_periph_v1_00_a\devl\projnav\netgen\synthesis\fb_less_2d_gpu_standalone_synthesis.v
// # of Modules	: 1
// Design Name	: fb_less_2d_gpu_standalone
// Xilinx        : C:\Xilinx\14.6\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module fb_less_2d_gpu_standalone (
  clk_24MHz_i, rst_in, vga_clk_o, blank_on, h_sync_on, v_sync_on, sync_on, pow_save_on, red_o, green_o, blue_o
);
  input clk_24MHz_i;
  input rst_in;
  output vga_clk_o;
  output blank_on;
  output h_sync_on;
  output v_sync_on;
  output sync_on;
  output pow_save_on;
  output [7 : 0] red_o;
  output [7 : 0] green_o;
  output [7 : 0] blue_o;
  wire rst_in_IBUF_1;
  wire clk_100MHz;
  wire n_reset;
  wire \vga_ctrl_i/vga_clk_49 ;
  wire \vga_ctrl_i/n_blank_50 ;
  wire \vga_ctrl_i/n_h_sync_51 ;
  wire \vga_ctrl_i/n_v_sync_52 ;
  wire \vga_ctrl_i/n_sync_53 ;
  wire pow_save_on_OBUF_78;
  wire bus_we;
  wire \clk_gen/clk_fb ;
  wire \clk_gen/clk_fx ;
  wire \clk_gen/clk_0 ;
  wire \clk_gen/in_rst ;
  wire \clk_gen/clk_in ;
  wire \vga_ctrl_i/PWR_5_o_INV_20_o1 ;
  wire \vga_ctrl_i/Result<8>1 ;
  wire \vga_ctrl_i/Result<7>1 ;
  wire \vga_ctrl_i/Result<6>1 ;
  wire \vga_ctrl_i/Result<5>1 ;
  wire \vga_ctrl_i/Result<4>1 ;
  wire \vga_ctrl_i/Result<3>1 ;
  wire \vga_ctrl_i/Result<2>1 ;
  wire \vga_ctrl_i/Result<1>2 ;
  wire \vga_ctrl_i/Result<0>2 ;
  wire \vga_ctrl_i/Result<1>1 ;
  wire \vga_ctrl_i/Result<0>1 ;
  wire \vga_ctrl_i/in_reset_inv1 ;
  wire \vga_ctrl_i/Mcount_phase_val ;
  wire \vga_ctrl_i/PWR_5_o_INV_23_o ;
  wire \vga_ctrl_i/PWR_5_o_INV_22_o ;
  wire \vga_ctrl_i/PWR_5_o_INV_21_o ;
  wire \vga_ctrl_i/PWR_5_o_INV_20_o ;
  wire \vga_ctrl_i/en_25MHz_pixel_x[9]_AND_4_o_132 ;
  wire \vga_ctrl_i/phase[1]_PWR_5_o_equal_23_o ;
  wire \vga_ctrl_i/en_25MHz ;
  wire \fb_less_2d_gpu_i/reg_intsect_s0<3>2_149 ;
  wire \fb_less_2d_gpu_i/reg_intsect_s0<7>2_150 ;
  wire \fb_less_2d_gpu_i/Msub_sprt_int_col_s6<3:0>_lut<3> ;
  wire \fb_less_2d_gpu_i/Msub_sprt_int_col_s6<3:0>_lut<2> ;
  wire \fb_less_2d_gpu_i/Msub_sprt_int_col_s6<3:0>_cy<1> ;
  wire \fb_less_2d_gpu_i/Msub_sprt_int_col_s6<3:0>_lut<1> ;
  wire \fb_less_2d_gpu_i/Msub_sprt_int_col_s6<3:0>_lut<0> ;
  wire \fb_less_2d_gpu_i/pixel_col_i[9]_reg_end_col_s[1][9]_LessThan_60_o1_172 ;
  wire \fb_less_2d_gpu_i/Madd_map_addr_s0_lut[9] ;
  wire \fb_less_2d_gpu_i/Madd_map_addr_s0_lut[6] ;
  wire \fb_less_2d_gpu_i/Madd_map_addr_s0_lut[5] ;
  wire \fb_less_2d_gpu_i/Madd_map_addr_s0_lut[4] ;
  wire \fb_less_2d_gpu_i/Madd_map_addr_s0_lut[3] ;
  wire \fb_less_2d_gpu_i/Madd_map_addr_s0_lut[2] ;
  wire \fb_less_2d_gpu_i/Madd_map_addr_s0_lut[1] ;
  wire \fb_less_2d_gpu_i/Madd_map_addr_s0_lut[0] ;
  wire \fb_less_2d_gpu_i/reg_col_s[1][9]_pixel_col_i[9]_LessThan_59_o1_218 ;
  wire \fb_less_2d_gpu_i/Madd_map_index_s0_cy<0>10 ;
  wire \fb_less_2d_gpu_i/Madd_map_index_s0_cy<0>7 ;
  wire \fb_less_2d_gpu_i/reg_intsect_s0<9>_0 ;
  wire \fb_less_2d_gpu_i/GND_6_o_PWR_6_o_mux_155_OUT<0>1 ;
  wire \fb_less_2d_gpu_i/reg_intersected_r13[3]_img_z_coor_r13[7]_AND_105_o ;
  wire \fb_less_2d_gpu_i/_n1441 ;
  wire \fb_less_2d_gpu_i/n1239[6] ;
  wire \fb_less_2d_gpu_i/n1239[7] ;
  wire \fb_less_2d_gpu_i/n1239[9] ;
  wire \fb_less_2d_gpu_i/map_index_s0[7] ;
  wire \fb_less_2d_gpu_i/map_index_s0[8] ;
  wire \fb_less_2d_gpu_i/map_index_s0[10] ;
  wire \fb_less_2d_gpu_i/n1006 ;
  wire N2;
  wire N4;
  wire \fb_less_2d_gpu_i/reg_intsect_s0<8>1_493 ;
  wire \fb_less_2d_gpu_i/reg_intsect_s0<8>3_494 ;
  wire \fb_less_2d_gpu_i/reg_intsect_s0<8>5_495 ;
  wire N6;
  wire N8;
  wire N10;
  wire \fb_less_2d_gpu_i/reg_intsect_s0<2>1_499 ;
  wire N18;
  wire \fb_less_2d_gpu_i/reg_intersected_r13[3]_img_z_coor_r13[7]_AND_105_o1_501 ;
  wire \fb_less_2d_gpu_i/reg_intersected_r13[3]_img_z_coor_r13[7]_AND_105_o4_502 ;
  wire \fb_less_2d_gpu_i/reg_intersected_r13[3]_img_z_coor_r13[7]_AND_105_o5_503 ;
  wire \fb_less_2d_gpu_i/reg_intersected_r13[3]_img_z_coor_r13[7]_AND_105_o6_504 ;
  wire \fb_less_2d_gpu_i/reg_intersected_r13[3]_img_z_coor_r13[7]_AND_105_o7_505 ;
  wire N20;
  wire \vga_ctrl_i/Mcount_pixel_x_cy<8>_rt_538 ;
  wire \vga_ctrl_i/Mcount_pixel_x_cy<7>_rt_539 ;
  wire \vga_ctrl_i/Mcount_pixel_x_cy<6>_rt_540 ;
  wire \vga_ctrl_i/Mcount_pixel_x_cy<5>_rt_541 ;
  wire \vga_ctrl_i/Mcount_pixel_x_cy<4>_rt_542 ;
  wire \vga_ctrl_i/Mcount_pixel_x_cy<3>_rt_543 ;
  wire \vga_ctrl_i/Mcount_pixel_x_cy<2>_rt_544 ;
  wire \vga_ctrl_i/Mcount_pixel_x_cy<1>_rt_545 ;
  wire \vga_ctrl_i/Mcount_pixel_y_cy<7>_rt_546 ;
  wire \vga_ctrl_i/Mcount_pixel_y_cy<6>_rt_547 ;
  wire \vga_ctrl_i/Mcount_pixel_y_cy<5>_rt_548 ;
  wire \vga_ctrl_i/Mcount_pixel_y_cy<4>_rt_549 ;
  wire \vga_ctrl_i/Mcount_pixel_y_cy<3>_rt_550 ;
  wire \vga_ctrl_i/Mcount_pixel_y_cy<2>_rt_551 ;
  wire \vga_ctrl_i/Mcount_pixel_y_cy<1>_rt_552 ;
  wire \fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy<11>_rt_553 ;
  wire \fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy<10>_rt_554 ;
  wire \fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy<9>_rt_555 ;
  wire \fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy<8>_rt_556 ;
  wire \fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy<7>_rt_557 ;
  wire \fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy<6>_rt_558 ;
  wire \vga_ctrl_i/Mcount_pixel_x_xor<9>_rt_559 ;
  wire \vga_ctrl_i/Mcount_pixel_y_xor<8>_rt_560 ;
  wire \fb_less_2d_gpu_i/reg_intersected_r1_2_rstpot_561 ;
  wire \fb_less_2d_gpu_i/reg_intersected_r1_3_rstpot_562 ;
  wire N26;
  wire N28;
  wire N30;
  wire N32;
  wire N34;
  wire N36;
  wire N38;
  wire N40;
  wire N42;
  wire N44;
  wire N46;
  wire N48;
  wire N50;
  wire N52;
  wire N54;
  wire \fb_less_2d_gpu_i/reg_intersected_r1_1_rstpot_578 ;
  wire \fb_less_2d_gpu_i/reg_intersected_r1_0_rstpot_579 ;
  wire \vga_ctrl_i/en_25MHz<1>1_580 ;
  wire \vga_ctrl_i/pixel_x_9_rstpot_581 ;
  wire \vga_ctrl_i/pixel_x_8_rstpot_582 ;
  wire \vga_ctrl_i/pixel_x_6_rstpot_583 ;
  wire \vga_ctrl_i/pixel_x_5_rstpot_584 ;
  wire \vga_ctrl_i/pixel_x_7_rstpot_585 ;
  wire \vga_ctrl_i/pixel_x_3_rstpot_586 ;
  wire \vga_ctrl_i/pixel_x_2_rstpot_587 ;
  wire \vga_ctrl_i/pixel_x_4_rstpot_588 ;
  wire \vga_ctrl_i/pixel_x_0_rstpot_589 ;
  wire \vga_ctrl_i/pixel_x_1_rstpot_590 ;
  wire \fb_less_2d_gpu_i/Mshreg_img_z_coor_r13_7_591 ;
  wire \fb_less_2d_gpu_i/Mshreg_img_z_coor_r13_6_592 ;
  wire \fb_less_2d_gpu_i/Mshreg_img_z_coor_r13_5_593 ;
  wire \fb_less_2d_gpu_i/Mshreg_img_z_coor_r13_4_594 ;
  wire \fb_less_2d_gpu_i/Mshreg_img_z_coor_r13_3_595 ;
  wire \fb_less_2d_gpu_i/Mshreg_img_z_coor_r13_2_596 ;
  wire \fb_less_2d_gpu_i/Mshreg_img_z_coor_r13_1_597 ;
  wire \fb_less_2d_gpu_i/Mshreg_img_z_coor_r13_0_598 ;
  wire \fb_less_2d_gpu_i/Mshreg_palette_addr_r16_5_599 ;
  wire \fb_less_2d_gpu_i/Mshreg_palette_addr_r16_7_600 ;
  wire \fb_less_2d_gpu_i/Mshreg_palette_addr_r16_6_601 ;
  wire \fb_less_2d_gpu_i/Mshreg_palette_addr_r16_4_602 ;
  wire \fb_less_2d_gpu_i/Mshreg_palette_addr_r16_3_603 ;
  wire \fb_less_2d_gpu_i/Mshreg_palette_addr_r16_2_604 ;
  wire \fb_less_2d_gpu_i/Mshreg_palette_addr_r16_1_605 ;
  wire \fb_less_2d_gpu_i/Mshreg_palette_addr_r16_0_606 ;
  wire \fb_less_2d_gpu_i/Mshreg_img_color_idx_r13_7_607 ;
  wire \fb_less_2d_gpu_i/Mshreg_img_color_idx_r13_6_608 ;
  wire \fb_less_2d_gpu_i/Mshreg_img_color_idx_r13_5_609 ;
  wire \fb_less_2d_gpu_i/Mshreg_img_color_idx_r13_2_610 ;
  wire \fb_less_2d_gpu_i/Mshreg_img_color_idx_r13_4_611 ;
  wire \fb_less_2d_gpu_i/Mshreg_img_color_idx_r13_3_612 ;
  wire \fb_less_2d_gpu_i/Mshreg_img_color_idx_r13_1_613 ;
  wire \fb_less_2d_gpu_i/Mshreg_img_color_idx_r13_0_614 ;
  wire \fb_less_2d_gpu_i/Mshreg_reg_intersected_r6_3_615 ;
  wire \fb_less_2d_gpu_i/Mshreg_reg_intersected_r6_2_616 ;
  wire \fb_less_2d_gpu_i/Mshreg_reg_intersected_r6_1_617 ;
  wire \fb_less_2d_gpu_i/Mshreg_reg_intersected_r6_0_618 ;
  wire \fb_less_2d_gpu_i/Mshreg_img_tex_pix_sel_r9_1_619 ;
  wire \fb_less_2d_gpu_i/Mshreg_img_tex_pix_sel_r9_0_620 ;
  wire \fb_less_2d_gpu_i/Mshreg_sprt_tex_offset_r12_1_621 ;
  wire \fb_less_2d_gpu_i/Mshreg_sprt_tex_offset_r12_0_622 ;
  wire \fb_less_2d_gpu_i/Mshreg_sprt_tex_offset_r9_7_623 ;
  wire \fb_less_2d_gpu_i/Mshreg_sprt_tex_offset_r9_6_624 ;
  wire \fb_less_2d_gpu_i/Mshreg_sprt_tex_offset_r9_3_625 ;
  wire \fb_less_2d_gpu_i/Mshreg_sprt_tex_offset_r9_5_626 ;
  wire \fb_less_2d_gpu_i/Mshreg_sprt_tex_offset_r9_4_627 ;
  wire \fb_less_2d_gpu_i/Mshreg_sprt_tex_offset_r9_2_628 ;
  wire \fb_less_2d_gpu_i/Mshreg_img_addr_r6_12_629 ;
  wire \fb_less_2d_gpu_i/Mshreg_img_addr_r6_11_630 ;
  wire \fb_less_2d_gpu_i/Mshreg_img_addr_r6_10_631 ;
  wire \fb_less_2d_gpu_i/Mshreg_img_addr_r6_7_632 ;
  wire \fb_less_2d_gpu_i/Mshreg_img_addr_r6_9_633 ;
  wire \fb_less_2d_gpu_i/Mshreg_img_addr_r6_8_634 ;
  wire \fb_less_2d_gpu_i/Mshreg_img_addr_r6_6_635 ;
  wire \fb_less_2d_gpu_i/Mshreg_img_addr_r6_5_636 ;
  wire \fb_less_2d_gpu_i/Mshreg_img_addr_r6_4_637 ;
  wire \fb_less_2d_gpu_i/Mshreg_img_addr_r6_3_638 ;
  wire \fb_less_2d_gpu_i/Mshreg_img_addr_r6_0_639 ;
  wire \fb_less_2d_gpu_i/Mshreg_img_addr_r6_2_640 ;
  wire \fb_less_2d_gpu_i/Mshreg_img_addr_r6_1_641 ;
  wire \fb_less_2d_gpu_i/Mshreg_reg_intersected_r9_3_642 ;
  wire \fb_less_2d_gpu_i/Mshreg_reg_intersected_r9_2_643 ;
  wire \fb_less_2d_gpu_i/Mshreg_reg_intersected_r9_1_644 ;
  wire \fb_less_2d_gpu_i/Mshreg_reg_intersected_r9_0_645 ;
  wire \fb_less_2d_gpu_i/Mshreg_reg_intersected_r13_3_646 ;
  wire \fb_less_2d_gpu_i/Mshreg_reg_intersected_r13_2_647 ;
  wire \fb_less_2d_gpu_i/Mshreg_reg_intersected_r13_1_648 ;
  wire \fb_less_2d_gpu_i/Mshreg_reg_intersected_r13_0_649 ;
  wire \NLW_clk_gen/dcm_24MHz_to_100MHz_CLK2X180_UNCONNECTED ;
  wire \NLW_clk_gen/dcm_24MHz_to_100MHz_CLK2X_UNCONNECTED ;
  wire \NLW_clk_gen/dcm_24MHz_to_100MHz_CLK180_UNCONNECTED ;
  wire \NLW_clk_gen/dcm_24MHz_to_100MHz_CLK270_UNCONNECTED ;
  wire \NLW_clk_gen/dcm_24MHz_to_100MHz_CLKFX180_UNCONNECTED ;
  wire \NLW_clk_gen/dcm_24MHz_to_100MHz_CLKDV_UNCONNECTED ;
  wire \NLW_clk_gen/dcm_24MHz_to_100MHz_PSDONE_UNCONNECTED ;
  wire \NLW_clk_gen/dcm_24MHz_to_100MHz_CLK90_UNCONNECTED ;
  wire \NLW_clk_gen/dcm_24MHz_to_100MHz_STATUS<7>_UNCONNECTED ;
  wire \NLW_clk_gen/dcm_24MHz_to_100MHz_STATUS<6>_UNCONNECTED ;
  wire \NLW_clk_gen/dcm_24MHz_to_100MHz_STATUS<5>_UNCONNECTED ;
  wire \NLW_clk_gen/dcm_24MHz_to_100MHz_STATUS<4>_UNCONNECTED ;
  wire \NLW_clk_gen/dcm_24MHz_to_100MHz_STATUS<3>_UNCONNECTED ;
  wire \NLW_clk_gen/dcm_24MHz_to_100MHz_STATUS<2>_UNCONNECTED ;
  wire \NLW_clk_gen/dcm_24MHz_to_100MHz_STATUS<1>_UNCONNECTED ;
  wire \NLW_clk_gen/dcm_24MHz_to_100MHz_STATUS<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIPA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIPA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIPA<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIPA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_ADDRA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_ADDRB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOPA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOPA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOPA<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOPA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIPB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIPB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIPB<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIPB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOPB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOPB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOPB<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOPB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIPA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIPA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIPA<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIPA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_ADDRA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_ADDRB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOPA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOPA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOPA<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOPA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIPB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIPB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIPB<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIPB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOPB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOPB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOPB<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOPB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIPA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIPA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIPA<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIPA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_ADDRA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_ADDRB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOPA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOPA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOPA<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOPA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIPB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIPB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIPB<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIPB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOPB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOPB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOPB<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOPB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIPA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIPA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIPA<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIPA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_ADDRA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_ADDRB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOPA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOPA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOPA<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOPA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIPB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIPB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIPB<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIPB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOPB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOPB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOPB<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOPB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIPA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIPA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIPA<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIPA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_ADDRA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_ADDRB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOPA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOPA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOPA<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOPA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIPB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIPB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIPB<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIPB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOPB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOPB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOPB<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOPB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIPA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIPA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIPA<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIPA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_ADDRA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_ADDRB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOPA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOPA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOPA<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOPA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIPB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIPB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIPB<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIPB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOPB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOPB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOPB<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOPB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIPA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIPA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIPA<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIPA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_ADDRA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_ADDRB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOPA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOPA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOPA<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOPA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIPB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIPB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIPB<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIPB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOPB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOPB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOPB<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOPB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIPA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIPA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIPA<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIPA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_ADDRA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_ADDRB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOPA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOPA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOPA<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOPA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIPB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIPB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIPB<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIPB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOPB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOPB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOPB<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOPB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIPA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIPA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIPA<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIPA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_ADDRA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_ADDRB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOPA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOPA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOPA<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOPA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIPB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIPB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIPB<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIPB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOPB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOPB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOPB<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOPB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIPA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIPA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIPA<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIPA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_ADDRA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_ADDRB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOPA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOPA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOPA<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOPA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIPB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIPB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIPB<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIPB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOPB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOPB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOPB<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOPB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIPA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIPA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIPA<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIPA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_ADDRA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_ADDRB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOPA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOPA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOPA<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOPA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIPB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIPB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIPB<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIPB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOPB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOPB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOPB<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOPB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIPA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIPA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIPA<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIPA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_ADDRA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_ADDRB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOPA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOPA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOPA<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOPA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIPB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIPB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIPB<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIPB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOPB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOPB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOPB<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOPB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIPA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIPA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIPA<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIPA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_ADDRA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_ADDRB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOPA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOPA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOPA<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOPA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIPB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIPB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIPB<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIPB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOPB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOPB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOPB<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOPB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIPA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIPA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIPA<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIPA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_ADDRA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_ADDRB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOPA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOPA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOPA<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOPA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIPB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIPB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIPB<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIPB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOPB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOPB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOPB<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOPB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIPA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIPA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIPA<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIPA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_ADDRA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_ADDRB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOPA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOPA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOPA<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOPA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIPB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIPB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIPB<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIPB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOPB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOPB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOPB<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOPB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIPA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIPA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIPA<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIPA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_ADDRA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_ADDRB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOPA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOPA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOPA<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOPA<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIPB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIPB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIPB<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIPB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOPB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOPB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOPB<1>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOPB<0>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<31>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<30>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<29>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<28>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<27>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<26>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<25>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<24>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<23>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<22>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<21>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<20>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<19>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<18>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<17>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<16>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<15>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<14>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<13>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<12>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<11>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<10>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<9>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<8>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<7>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<6>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<5>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<4>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<3>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<2>_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_img_z_coor_r13_7_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_img_z_coor_r13_6_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_img_z_coor_r13_5_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_img_z_coor_r13_4_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_img_z_coor_r13_3_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_img_z_coor_r13_2_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_img_z_coor_r13_1_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_img_z_coor_r13_0_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_palette_addr_r16_5_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_palette_addr_r16_7_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_palette_addr_r16_6_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_palette_addr_r16_4_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_palette_addr_r16_3_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_palette_addr_r16_2_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_palette_addr_r16_1_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_palette_addr_r16_0_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_img_color_idx_r13_7_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_img_color_idx_r13_6_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_img_color_idx_r13_5_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_img_color_idx_r13_2_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_img_color_idx_r13_4_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_img_color_idx_r13_3_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_img_color_idx_r13_1_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_img_color_idx_r13_0_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_reg_intersected_r6_3_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_reg_intersected_r6_2_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_reg_intersected_r6_1_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_reg_intersected_r6_0_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_img_tex_pix_sel_r9_1_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_img_tex_pix_sel_r9_0_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_sprt_tex_offset_r12_1_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_sprt_tex_offset_r12_0_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_sprt_tex_offset_r9_7_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_sprt_tex_offset_r9_6_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_sprt_tex_offset_r9_3_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_sprt_tex_offset_r9_5_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_sprt_tex_offset_r9_4_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_sprt_tex_offset_r9_2_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_img_addr_r6_12_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_img_addr_r6_11_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_img_addr_r6_10_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_img_addr_r6_7_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_img_addr_r6_9_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_img_addr_r6_8_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_img_addr_r6_6_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_img_addr_r6_5_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_img_addr_r6_4_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_img_addr_r6_3_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_img_addr_r6_0_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_img_addr_r6_2_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_img_addr_r6_1_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_reg_intersected_r9_3_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_reg_intersected_r9_2_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_reg_intersected_r9_1_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_reg_intersected_r9_0_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_reg_intersected_r13_3_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_reg_intersected_r13_2_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_reg_intersected_r13_1_Q15_UNCONNECTED ;
  wire \NLW_fb_less_2d_gpu_i/Mshreg_reg_intersected_r13_0_Q15_UNCONNECTED ;
  wire [1 : 0] \vga_ctrl_i/phase ;
  wire [9 : 0] \vga_ctrl_i/pixel_x ;
  wire [8 : 0] \vga_ctrl_i/pixel_y ;
  wire [7 : 0] \vga_ctrl_i/red ;
  wire [7 : 0] \vga_ctrl_i/green ;
  wire [7 : 0] \vga_ctrl_i/blue ;
  wire [23 : 0] rgb_s;
  wire [8 : 0] \vga_ctrl_i/Mcount_pixel_x_cy ;
  wire [0 : 0] \vga_ctrl_i/Mcount_pixel_x_lut ;
  wire [7 : 0] \vga_ctrl_i/Mcount_pixel_y_cy ;
  wire [0 : 0] \vga_ctrl_i/Mcount_pixel_y_lut ;
  wire [9 : 0] \vga_ctrl_i/Result ;
  wire [8 : 1] \vga_ctrl_i/pixel_y_d1 ;
  wire [9 : 4] \vga_ctrl_i/pixel_x_d1 ;
  wire [9 : 0] \fb_less_2d_gpu_i/Madd_sprt_addr_s9_cy ;
  wire [5 : 0] \fb_less_2d_gpu_i/Madd_sprt_addr_s9_lut ;
  wire [10 : 0] \fb_less_2d_gpu_i/Madd_map_addr_s0_cy ;
  wire [3 : 0] \fb_less_2d_gpu_i/img_row_r4 ;
  wire [3 : 0] \fb_less_2d_gpu_i/sprt_int_col_r7 ;
  wire [11 : 0] \fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy ;
  wire [5 : 0] \fb_less_2d_gpu_i/Madd_img_pix_addr_s6_lut ;
  wire [8 : 0] \fb_less_2d_gpu_i/reg_intsect_s0 ;
  wire [9 : 0] \fb_less_2d_gpu_i/sprt_addr_s9 ;
  wire [11 : 0] \fb_less_2d_gpu_i/map_addr_s0 ;
  wire [3 : 0] \fb_less_2d_gpu_i/img_tex_row_s4 ;
  wire [7 : 0] \fb_less_2d_gpu_i/spr_color_idx_s12 ;
  wire [7 : 0] \fb_less_2d_gpu_i/img_color_idx_s9 ;
  wire [1 : 1] \fb_less_2d_gpu_i/GND_6_o_PWR_6_o_mux_155_OUT ;
  wire [7 : 0] \fb_less_2d_gpu_i/palette_idx_s13 ;
  wire [12 : 0] \fb_less_2d_gpu_i/img_pix_addr_s6 ;
  wire [3 : 0] \fb_less_2d_gpu_i/img_tex_col_s4 ;
  wire [12 : 0] \fb_less_2d_gpu_i/mem_addr_s ;
  wire [3 : 0] \fb_less_2d_gpu_i/sprt_int_col_s6 ;
  wire [3 : 0] \fb_less_2d_gpu_i/reg_intersected_r1 ;
  wire [7 : 0] \fb_less_2d_gpu_i/palette_addr_r16 ;
  wire [7 : 0] \fb_less_2d_gpu_i/palette_idx_r14 ;
  wire [7 : 0] \fb_less_2d_gpu_i/spr_color_idx_r13 ;
  wire [3 : 0] \fb_less_2d_gpu_i/reg_intersected_r13 ;
  wire [7 : 0] \fb_less_2d_gpu_i/img_color_idx_r13 ;
  wire [7 : 0] \fb_less_2d_gpu_i/img_z_coor_r13 ;
  wire [1 : 0] \fb_less_2d_gpu_i/sprt_tex_offset_r12 ;
  wire [7 : 0] \fb_less_2d_gpu_i/img_color_idx_r10 ;
  wire [10 : 0] \fb_less_2d_gpu_i/sprt_addr_r10 ;
  wire [7 : 2] \fb_less_2d_gpu_i/sprt_tex_offset_r9 ;
  wire [3 : 0] \fb_less_2d_gpu_i/reg_intersected_r9 ;
  wire [1 : 0] \fb_less_2d_gpu_i/img_tex_pix_sel_r9 ;
  wire [12 : 0] \fb_less_2d_gpu_i/img_pix_addr_r7 ;
  wire [12 : 0] \fb_less_2d_gpu_i/img_addr_r6 ;
  wire [3 : 0] \fb_less_2d_gpu_i/reg_intersected_r6 ;
  wire [5 : 0] \fb_less_2d_gpu_i/img_tex_word_r6 ;
  wire [3 : 0] \fb_less_2d_gpu_i/img_tex_row_r5 ;
  wire [3 : 0] \fb_less_2d_gpu_i/img_tex_col_r5 ;
  wire [3 : 0] \fb_less_2d_gpu_i/img_col_r4 ;
  wire [7 : 0] \fb_less_2d_gpu_i/img_rot_r4 ;
  wire [11 : 0] \fb_less_2d_gpu_i/map_addr_r1 ;
  wire [7 : 0] \fb_less_2d_gpu_i/reg_intsect_r1 ;
  wire [31 : 24] \fb_less_2d_gpu_i/mem_data_s ;
  VCC   XST_VCC (
    .P(pow_save_on_OBUF_78)
  );
  GND   XST_GND (
    .G(bus_we)
  );
  BUFG   \clk_gen/buf_clk_fx  (
    .O(clk_100MHz),
    .I(\clk_gen/clk_fx )
  );
  BUFG   \clk_gen/buf_clk_0  (
    .O(\clk_gen/clk_fb ),
    .I(\clk_gen/clk_0 )
  );
  DCM_SP #(
    .CLKDV_DIVIDE ( 2.000000 ),
    .CLKFX_DIVIDE ( 6 ),
    .CLKFX_MULTIPLY ( 25 ),
    .CLKIN_DIVIDE_BY_2 ( "FALSE" ),
    .CLKIN_PERIOD ( 41.66667 ),
    .CLKOUT_PHASE_SHIFT ( "NONE" ),
    .CLK_FEEDBACK ( "1X" ),
    .DESKEW_ADJUST ( "SYSTEM_SYNCHRONOUS" ),
    .DFS_FREQUENCY_MODE ( "LOW" ),
    .DLL_FREQUENCY_MODE ( "LOW" ),
    .DSS_MODE ( "NONE" ),
    .DUTY_CYCLE_CORRECTION ( "TRUE" ),
    .FACTORY_JF ( 16'h0000 ),
    .PHASE_SHIFT ( 0 ),
    .STARTUP_WAIT ( "FALSE" ))
  \clk_gen/dcm_24MHz_to_100MHz  (
    .CLK2X180(\NLW_clk_gen/dcm_24MHz_to_100MHz_CLK2X180_UNCONNECTED ),
    .PSCLK(bus_we),
    .CLK2X(\NLW_clk_gen/dcm_24MHz_to_100MHz_CLK2X_UNCONNECTED ),
    .CLKFX(\clk_gen/clk_fx ),
    .CLK180(\NLW_clk_gen/dcm_24MHz_to_100MHz_CLK180_UNCONNECTED ),
    .CLK270(\NLW_clk_gen/dcm_24MHz_to_100MHz_CLK270_UNCONNECTED ),
    .RST(\clk_gen/in_rst ),
    .PSINCDEC(bus_we),
    .CLKIN(\clk_gen/clk_in ),
    .CLKFB(\clk_gen/clk_fb ),
    .PSEN(bus_we),
    .CLK0(\clk_gen/clk_0 ),
    .CLKFX180(\NLW_clk_gen/dcm_24MHz_to_100MHz_CLKFX180_UNCONNECTED ),
    .CLKDV(\NLW_clk_gen/dcm_24MHz_to_100MHz_CLKDV_UNCONNECTED ),
    .PSDONE(\NLW_clk_gen/dcm_24MHz_to_100MHz_PSDONE_UNCONNECTED ),
    .CLK90(\NLW_clk_gen/dcm_24MHz_to_100MHz_CLK90_UNCONNECTED ),
    .LOCKED(n_reset),
    .DSSEN(bus_we),
    .STATUS({\NLW_clk_gen/dcm_24MHz_to_100MHz_STATUS<7>_UNCONNECTED , \NLW_clk_gen/dcm_24MHz_to_100MHz_STATUS<6>_UNCONNECTED , 
\NLW_clk_gen/dcm_24MHz_to_100MHz_STATUS<5>_UNCONNECTED , \NLW_clk_gen/dcm_24MHz_to_100MHz_STATUS<4>_UNCONNECTED , 
\NLW_clk_gen/dcm_24MHz_to_100MHz_STATUS<3>_UNCONNECTED , \NLW_clk_gen/dcm_24MHz_to_100MHz_STATUS<2>_UNCONNECTED , 
\NLW_clk_gen/dcm_24MHz_to_100MHz_STATUS<1>_UNCONNECTED , \NLW_clk_gen/dcm_24MHz_to_100MHz_STATUS<0>_UNCONNECTED })
  );
  IBUFG #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IOSTANDARD ( "DEFAULT" ))
  \clk_gen/buf_clk_24MHz  (
    .I(clk_24MHz_i),
    .O(\clk_gen/clk_in )
  );
  XORCY   \vga_ctrl_i/Mcount_pixel_x_xor<9>  (
    .CI(\vga_ctrl_i/Mcount_pixel_x_cy [8]),
    .LI(\vga_ctrl_i/Mcount_pixel_x_xor<9>_rt_559 ),
    .O(\vga_ctrl_i/Result [9])
  );
  XORCY   \vga_ctrl_i/Mcount_pixel_x_xor<8>  (
    .CI(\vga_ctrl_i/Mcount_pixel_x_cy [7]),
    .LI(\vga_ctrl_i/Mcount_pixel_x_cy<8>_rt_538 ),
    .O(\vga_ctrl_i/Result<8>1 )
  );
  MUXCY   \vga_ctrl_i/Mcount_pixel_x_cy<8>  (
    .CI(\vga_ctrl_i/Mcount_pixel_x_cy [7]),
    .DI(bus_we),
    .S(\vga_ctrl_i/Mcount_pixel_x_cy<8>_rt_538 ),
    .O(\vga_ctrl_i/Mcount_pixel_x_cy [8])
  );
  XORCY   \vga_ctrl_i/Mcount_pixel_x_xor<7>  (
    .CI(\vga_ctrl_i/Mcount_pixel_x_cy [6]),
    .LI(\vga_ctrl_i/Mcount_pixel_x_cy<7>_rt_539 ),
    .O(\vga_ctrl_i/Result<7>1 )
  );
  MUXCY   \vga_ctrl_i/Mcount_pixel_x_cy<7>  (
    .CI(\vga_ctrl_i/Mcount_pixel_x_cy [6]),
    .DI(bus_we),
    .S(\vga_ctrl_i/Mcount_pixel_x_cy<7>_rt_539 ),
    .O(\vga_ctrl_i/Mcount_pixel_x_cy [7])
  );
  XORCY   \vga_ctrl_i/Mcount_pixel_x_xor<6>  (
    .CI(\vga_ctrl_i/Mcount_pixel_x_cy [5]),
    .LI(\vga_ctrl_i/Mcount_pixel_x_cy<6>_rt_540 ),
    .O(\vga_ctrl_i/Result<6>1 )
  );
  MUXCY   \vga_ctrl_i/Mcount_pixel_x_cy<6>  (
    .CI(\vga_ctrl_i/Mcount_pixel_x_cy [5]),
    .DI(bus_we),
    .S(\vga_ctrl_i/Mcount_pixel_x_cy<6>_rt_540 ),
    .O(\vga_ctrl_i/Mcount_pixel_x_cy [6])
  );
  XORCY   \vga_ctrl_i/Mcount_pixel_x_xor<5>  (
    .CI(\vga_ctrl_i/Mcount_pixel_x_cy [4]),
    .LI(\vga_ctrl_i/Mcount_pixel_x_cy<5>_rt_541 ),
    .O(\vga_ctrl_i/Result<5>1 )
  );
  MUXCY   \vga_ctrl_i/Mcount_pixel_x_cy<5>  (
    .CI(\vga_ctrl_i/Mcount_pixel_x_cy [4]),
    .DI(bus_we),
    .S(\vga_ctrl_i/Mcount_pixel_x_cy<5>_rt_541 ),
    .O(\vga_ctrl_i/Mcount_pixel_x_cy [5])
  );
  XORCY   \vga_ctrl_i/Mcount_pixel_x_xor<4>  (
    .CI(\vga_ctrl_i/Mcount_pixel_x_cy [3]),
    .LI(\vga_ctrl_i/Mcount_pixel_x_cy<4>_rt_542 ),
    .O(\vga_ctrl_i/Result<4>1 )
  );
  MUXCY   \vga_ctrl_i/Mcount_pixel_x_cy<4>  (
    .CI(\vga_ctrl_i/Mcount_pixel_x_cy [3]),
    .DI(bus_we),
    .S(\vga_ctrl_i/Mcount_pixel_x_cy<4>_rt_542 ),
    .O(\vga_ctrl_i/Mcount_pixel_x_cy [4])
  );
  XORCY   \vga_ctrl_i/Mcount_pixel_x_xor<3>  (
    .CI(\vga_ctrl_i/Mcount_pixel_x_cy [2]),
    .LI(\vga_ctrl_i/Mcount_pixel_x_cy<3>_rt_543 ),
    .O(\vga_ctrl_i/Result<3>1 )
  );
  MUXCY   \vga_ctrl_i/Mcount_pixel_x_cy<3>  (
    .CI(\vga_ctrl_i/Mcount_pixel_x_cy [2]),
    .DI(bus_we),
    .S(\vga_ctrl_i/Mcount_pixel_x_cy<3>_rt_543 ),
    .O(\vga_ctrl_i/Mcount_pixel_x_cy [3])
  );
  XORCY   \vga_ctrl_i/Mcount_pixel_x_xor<2>  (
    .CI(\vga_ctrl_i/Mcount_pixel_x_cy [1]),
    .LI(\vga_ctrl_i/Mcount_pixel_x_cy<2>_rt_544 ),
    .O(\vga_ctrl_i/Result<2>1 )
  );
  MUXCY   \vga_ctrl_i/Mcount_pixel_x_cy<2>  (
    .CI(\vga_ctrl_i/Mcount_pixel_x_cy [1]),
    .DI(bus_we),
    .S(\vga_ctrl_i/Mcount_pixel_x_cy<2>_rt_544 ),
    .O(\vga_ctrl_i/Mcount_pixel_x_cy [2])
  );
  XORCY   \vga_ctrl_i/Mcount_pixel_x_xor<1>  (
    .CI(\vga_ctrl_i/Mcount_pixel_x_cy [0]),
    .LI(\vga_ctrl_i/Mcount_pixel_x_cy<1>_rt_545 ),
    .O(\vga_ctrl_i/Result<1>2 )
  );
  MUXCY   \vga_ctrl_i/Mcount_pixel_x_cy<1>  (
    .CI(\vga_ctrl_i/Mcount_pixel_x_cy [0]),
    .DI(bus_we),
    .S(\vga_ctrl_i/Mcount_pixel_x_cy<1>_rt_545 ),
    .O(\vga_ctrl_i/Mcount_pixel_x_cy [1])
  );
  XORCY   \vga_ctrl_i/Mcount_pixel_x_xor<0>  (
    .CI(bus_we),
    .LI(\vga_ctrl_i/Mcount_pixel_x_lut [0]),
    .O(\vga_ctrl_i/Result<0>2 )
  );
  MUXCY   \vga_ctrl_i/Mcount_pixel_x_cy<0>  (
    .CI(bus_we),
    .DI(pow_save_on_OBUF_78),
    .S(\vga_ctrl_i/Mcount_pixel_x_lut [0]),
    .O(\vga_ctrl_i/Mcount_pixel_x_cy [0])
  );
  XORCY   \vga_ctrl_i/Mcount_pixel_y_xor<8>  (
    .CI(\vga_ctrl_i/Mcount_pixel_y_cy [7]),
    .LI(\vga_ctrl_i/Mcount_pixel_y_xor<8>_rt_560 ),
    .O(\vga_ctrl_i/Result [8])
  );
  XORCY   \vga_ctrl_i/Mcount_pixel_y_xor<7>  (
    .CI(\vga_ctrl_i/Mcount_pixel_y_cy [6]),
    .LI(\vga_ctrl_i/Mcount_pixel_y_cy<7>_rt_546 ),
    .O(\vga_ctrl_i/Result [7])
  );
  MUXCY   \vga_ctrl_i/Mcount_pixel_y_cy<7>  (
    .CI(\vga_ctrl_i/Mcount_pixel_y_cy [6]),
    .DI(bus_we),
    .S(\vga_ctrl_i/Mcount_pixel_y_cy<7>_rt_546 ),
    .O(\vga_ctrl_i/Mcount_pixel_y_cy [7])
  );
  XORCY   \vga_ctrl_i/Mcount_pixel_y_xor<6>  (
    .CI(\vga_ctrl_i/Mcount_pixel_y_cy [5]),
    .LI(\vga_ctrl_i/Mcount_pixel_y_cy<6>_rt_547 ),
    .O(\vga_ctrl_i/Result [6])
  );
  MUXCY   \vga_ctrl_i/Mcount_pixel_y_cy<6>  (
    .CI(\vga_ctrl_i/Mcount_pixel_y_cy [5]),
    .DI(bus_we),
    .S(\vga_ctrl_i/Mcount_pixel_y_cy<6>_rt_547 ),
    .O(\vga_ctrl_i/Mcount_pixel_y_cy [6])
  );
  XORCY   \vga_ctrl_i/Mcount_pixel_y_xor<5>  (
    .CI(\vga_ctrl_i/Mcount_pixel_y_cy [4]),
    .LI(\vga_ctrl_i/Mcount_pixel_y_cy<5>_rt_548 ),
    .O(\vga_ctrl_i/Result [5])
  );
  MUXCY   \vga_ctrl_i/Mcount_pixel_y_cy<5>  (
    .CI(\vga_ctrl_i/Mcount_pixel_y_cy [4]),
    .DI(bus_we),
    .S(\vga_ctrl_i/Mcount_pixel_y_cy<5>_rt_548 ),
    .O(\vga_ctrl_i/Mcount_pixel_y_cy [5])
  );
  XORCY   \vga_ctrl_i/Mcount_pixel_y_xor<4>  (
    .CI(\vga_ctrl_i/Mcount_pixel_y_cy [3]),
    .LI(\vga_ctrl_i/Mcount_pixel_y_cy<4>_rt_549 ),
    .O(\vga_ctrl_i/Result [4])
  );
  MUXCY   \vga_ctrl_i/Mcount_pixel_y_cy<4>  (
    .CI(\vga_ctrl_i/Mcount_pixel_y_cy [3]),
    .DI(bus_we),
    .S(\vga_ctrl_i/Mcount_pixel_y_cy<4>_rt_549 ),
    .O(\vga_ctrl_i/Mcount_pixel_y_cy [4])
  );
  XORCY   \vga_ctrl_i/Mcount_pixel_y_xor<3>  (
    .CI(\vga_ctrl_i/Mcount_pixel_y_cy [2]),
    .LI(\vga_ctrl_i/Mcount_pixel_y_cy<3>_rt_550 ),
    .O(\vga_ctrl_i/Result [3])
  );
  MUXCY   \vga_ctrl_i/Mcount_pixel_y_cy<3>  (
    .CI(\vga_ctrl_i/Mcount_pixel_y_cy [2]),
    .DI(bus_we),
    .S(\vga_ctrl_i/Mcount_pixel_y_cy<3>_rt_550 ),
    .O(\vga_ctrl_i/Mcount_pixel_y_cy [3])
  );
  XORCY   \vga_ctrl_i/Mcount_pixel_y_xor<2>  (
    .CI(\vga_ctrl_i/Mcount_pixel_y_cy [1]),
    .LI(\vga_ctrl_i/Mcount_pixel_y_cy<2>_rt_551 ),
    .O(\vga_ctrl_i/Result [2])
  );
  MUXCY   \vga_ctrl_i/Mcount_pixel_y_cy<2>  (
    .CI(\vga_ctrl_i/Mcount_pixel_y_cy [1]),
    .DI(bus_we),
    .S(\vga_ctrl_i/Mcount_pixel_y_cy<2>_rt_551 ),
    .O(\vga_ctrl_i/Mcount_pixel_y_cy [2])
  );
  XORCY   \vga_ctrl_i/Mcount_pixel_y_xor<1>  (
    .CI(\vga_ctrl_i/Mcount_pixel_y_cy [0]),
    .LI(\vga_ctrl_i/Mcount_pixel_y_cy<1>_rt_552 ),
    .O(\vga_ctrl_i/Result<1>1 )
  );
  MUXCY   \vga_ctrl_i/Mcount_pixel_y_cy<1>  (
    .CI(\vga_ctrl_i/Mcount_pixel_y_cy [0]),
    .DI(bus_we),
    .S(\vga_ctrl_i/Mcount_pixel_y_cy<1>_rt_552 ),
    .O(\vga_ctrl_i/Mcount_pixel_y_cy [1])
  );
  XORCY   \vga_ctrl_i/Mcount_pixel_y_xor<0>  (
    .CI(bus_we),
    .LI(\vga_ctrl_i/Mcount_pixel_y_lut [0]),
    .O(\vga_ctrl_i/Result<0>1 )
  );
  MUXCY   \vga_ctrl_i/Mcount_pixel_y_cy<0>  (
    .CI(bus_we),
    .DI(pow_save_on_OBUF_78),
    .S(\vga_ctrl_i/Mcount_pixel_y_lut [0]),
    .O(\vga_ctrl_i/Mcount_pixel_y_cy [0])
  );
  FDRE   \vga_ctrl_i/pixel_y_8  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/en_25MHz_pixel_x[9]_AND_4_o_132 ),
    .D(\vga_ctrl_i/Result [8]),
    .R(\vga_ctrl_i/in_reset_inv1 ),
    .Q(\vga_ctrl_i/pixel_y [8])
  );
  FDRE   \vga_ctrl_i/pixel_y_7  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/en_25MHz_pixel_x[9]_AND_4_o_132 ),
    .D(\vga_ctrl_i/Result [7]),
    .R(\vga_ctrl_i/in_reset_inv1 ),
    .Q(\vga_ctrl_i/pixel_y [7])
  );
  FDRE   \vga_ctrl_i/pixel_y_6  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/en_25MHz_pixel_x[9]_AND_4_o_132 ),
    .D(\vga_ctrl_i/Result [6]),
    .R(\vga_ctrl_i/in_reset_inv1 ),
    .Q(\vga_ctrl_i/pixel_y [6])
  );
  FDRE   \vga_ctrl_i/pixel_y_5  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/en_25MHz_pixel_x[9]_AND_4_o_132 ),
    .D(\vga_ctrl_i/Result [5]),
    .R(\vga_ctrl_i/in_reset_inv1 ),
    .Q(\vga_ctrl_i/pixel_y [5])
  );
  FDRE   \vga_ctrl_i/pixel_y_4  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/en_25MHz_pixel_x[9]_AND_4_o_132 ),
    .D(\vga_ctrl_i/Result [4]),
    .R(\vga_ctrl_i/in_reset_inv1 ),
    .Q(\vga_ctrl_i/pixel_y [4])
  );
  FDRE   \vga_ctrl_i/pixel_y_3  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/en_25MHz_pixel_x[9]_AND_4_o_132 ),
    .D(\vga_ctrl_i/Result [3]),
    .R(\vga_ctrl_i/in_reset_inv1 ),
    .Q(\vga_ctrl_i/pixel_y [3])
  );
  FDRE   \vga_ctrl_i/pixel_y_2  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/en_25MHz_pixel_x[9]_AND_4_o_132 ),
    .D(\vga_ctrl_i/Result [2]),
    .R(\vga_ctrl_i/in_reset_inv1 ),
    .Q(\vga_ctrl_i/pixel_y [2])
  );
  FDRE   \vga_ctrl_i/pixel_y_1  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/en_25MHz_pixel_x[9]_AND_4_o_132 ),
    .D(\vga_ctrl_i/Result<1>1 ),
    .R(\vga_ctrl_i/in_reset_inv1 ),
    .Q(\vga_ctrl_i/pixel_y [1])
  );
  FDRE   \vga_ctrl_i/pixel_y_0  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/en_25MHz_pixel_x[9]_AND_4_o_132 ),
    .D(\vga_ctrl_i/Result<0>1 ),
    .R(\vga_ctrl_i/in_reset_inv1 ),
    .Q(\vga_ctrl_i/pixel_y [0])
  );
  FDR   \vga_ctrl_i/phase_0  (
    .C(clk_100MHz),
    .D(\vga_ctrl_i/Result [0]),
    .R(\vga_ctrl_i/Mcount_phase_val ),
    .Q(\vga_ctrl_i/phase [0])
  );
  FDR   \vga_ctrl_i/phase_1  (
    .C(clk_100MHz),
    .D(\vga_ctrl_i/Result [1]),
    .R(\vga_ctrl_i/Mcount_phase_val ),
    .Q(\vga_ctrl_i/phase [1])
  );
  FDE   \vga_ctrl_i/pixel_y_d1_8  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/en_25MHz ),
    .D(\vga_ctrl_i/pixel_y [8]),
    .Q(\vga_ctrl_i/pixel_y_d1 [8])
  );
  FDE   \vga_ctrl_i/pixel_y_d1_7  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/en_25MHz ),
    .D(\vga_ctrl_i/pixel_y [7]),
    .Q(\vga_ctrl_i/pixel_y_d1 [7])
  );
  FDE   \vga_ctrl_i/pixel_y_d1_6  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/en_25MHz ),
    .D(\vga_ctrl_i/pixel_y [6]),
    .Q(\vga_ctrl_i/pixel_y_d1 [6])
  );
  FDE   \vga_ctrl_i/pixel_y_d1_5  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/en_25MHz ),
    .D(\vga_ctrl_i/pixel_y [5]),
    .Q(\vga_ctrl_i/pixel_y_d1 [5])
  );
  FDE   \vga_ctrl_i/pixel_y_d1_4  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/en_25MHz ),
    .D(\vga_ctrl_i/pixel_y [4]),
    .Q(\vga_ctrl_i/pixel_y_d1 [4])
  );
  FDE   \vga_ctrl_i/pixel_y_d1_3  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/en_25MHz ),
    .D(\vga_ctrl_i/pixel_y [3]),
    .Q(\vga_ctrl_i/pixel_y_d1 [3])
  );
  FDE   \vga_ctrl_i/pixel_y_d1_2  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/en_25MHz ),
    .D(\vga_ctrl_i/pixel_y [2]),
    .Q(\vga_ctrl_i/pixel_y_d1 [2])
  );
  FDE   \vga_ctrl_i/pixel_y_d1_1  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/en_25MHz ),
    .D(\vga_ctrl_i/pixel_y [1]),
    .Q(\vga_ctrl_i/pixel_y_d1 [1])
  );
  FDE   \vga_ctrl_i/pixel_x_d1_9  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/en_25MHz ),
    .D(\vga_ctrl_i/pixel_x [9]),
    .Q(\vga_ctrl_i/pixel_x_d1 [9])
  );
  FDE   \vga_ctrl_i/pixel_x_d1_8  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/en_25MHz ),
    .D(\vga_ctrl_i/pixel_x [8]),
    .Q(\vga_ctrl_i/pixel_x_d1 [8])
  );
  FDE   \vga_ctrl_i/pixel_x_d1_7  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/en_25MHz ),
    .D(\vga_ctrl_i/pixel_x [7]),
    .Q(\vga_ctrl_i/pixel_x_d1 [7])
  );
  FDE   \vga_ctrl_i/pixel_x_d1_6  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/en_25MHz ),
    .D(\vga_ctrl_i/pixel_x [6]),
    .Q(\vga_ctrl_i/pixel_x_d1 [6])
  );
  FDE   \vga_ctrl_i/pixel_x_d1_5  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/en_25MHz ),
    .D(\vga_ctrl_i/pixel_x [5]),
    .Q(\vga_ctrl_i/pixel_x_d1 [5])
  );
  FDE   \vga_ctrl_i/pixel_x_d1_4  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/en_25MHz ),
    .D(\vga_ctrl_i/pixel_x [4]),
    .Q(\vga_ctrl_i/pixel_x_d1 [4])
  );
  FD   \vga_ctrl_i/vga_clk  (
    .C(clk_100MHz),
    .D(\vga_ctrl_i/phase [1]),
    .Q(\vga_ctrl_i/vga_clk_49 )
  );
  FDE   \vga_ctrl_i/n_sync  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/en_25MHz ),
    .D(\vga_ctrl_i/PWR_5_o_INV_23_o ),
    .Q(\vga_ctrl_i/n_sync_53 )
  );
  FDE   \vga_ctrl_i/n_v_sync  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/en_25MHz ),
    .D(\vga_ctrl_i/PWR_5_o_INV_22_o ),
    .Q(\vga_ctrl_i/n_v_sync_52 )
  );
  FDE   \vga_ctrl_i/n_blank  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/en_25MHz ),
    .D(\vga_ctrl_i/PWR_5_o_INV_20_o ),
    .Q(\vga_ctrl_i/n_blank_50 )
  );
  FDE   \vga_ctrl_i/n_h_sync  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/en_25MHz ),
    .D(\vga_ctrl_i/PWR_5_o_INV_21_o ),
    .Q(\vga_ctrl_i/n_h_sync_51 )
  );
  FDE   \vga_ctrl_i/green_7  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/phase[1]_PWR_5_o_equal_23_o ),
    .D(rgb_s[15]),
    .Q(\vga_ctrl_i/green [7])
  );
  FDE   \vga_ctrl_i/green_6  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/phase[1]_PWR_5_o_equal_23_o ),
    .D(rgb_s[14]),
    .Q(\vga_ctrl_i/green [6])
  );
  FDE   \vga_ctrl_i/green_5  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/phase[1]_PWR_5_o_equal_23_o ),
    .D(rgb_s[13]),
    .Q(\vga_ctrl_i/green [5])
  );
  FDE   \vga_ctrl_i/green_4  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/phase[1]_PWR_5_o_equal_23_o ),
    .D(rgb_s[12]),
    .Q(\vga_ctrl_i/green [4])
  );
  FDE   \vga_ctrl_i/green_3  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/phase[1]_PWR_5_o_equal_23_o ),
    .D(rgb_s[11]),
    .Q(\vga_ctrl_i/green [3])
  );
  FDE   \vga_ctrl_i/green_2  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/phase[1]_PWR_5_o_equal_23_o ),
    .D(rgb_s[10]),
    .Q(\vga_ctrl_i/green [2])
  );
  FDE   \vga_ctrl_i/green_1  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/phase[1]_PWR_5_o_equal_23_o ),
    .D(rgb_s[9]),
    .Q(\vga_ctrl_i/green [1])
  );
  FDE   \vga_ctrl_i/green_0  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/phase[1]_PWR_5_o_equal_23_o ),
    .D(rgb_s[8]),
    .Q(\vga_ctrl_i/green [0])
  );
  FDE   \vga_ctrl_i/red_7  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/phase[1]_PWR_5_o_equal_23_o ),
    .D(rgb_s[7]),
    .Q(\vga_ctrl_i/red [7])
  );
  FDE   \vga_ctrl_i/red_6  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/phase[1]_PWR_5_o_equal_23_o ),
    .D(rgb_s[6]),
    .Q(\vga_ctrl_i/red [6])
  );
  FDE   \vga_ctrl_i/red_5  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/phase[1]_PWR_5_o_equal_23_o ),
    .D(rgb_s[5]),
    .Q(\vga_ctrl_i/red [5])
  );
  FDE   \vga_ctrl_i/red_4  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/phase[1]_PWR_5_o_equal_23_o ),
    .D(rgb_s[4]),
    .Q(\vga_ctrl_i/red [4])
  );
  FDE   \vga_ctrl_i/red_3  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/phase[1]_PWR_5_o_equal_23_o ),
    .D(rgb_s[3]),
    .Q(\vga_ctrl_i/red [3])
  );
  FDE   \vga_ctrl_i/red_2  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/phase[1]_PWR_5_o_equal_23_o ),
    .D(rgb_s[2]),
    .Q(\vga_ctrl_i/red [2])
  );
  FDE   \vga_ctrl_i/red_1  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/phase[1]_PWR_5_o_equal_23_o ),
    .D(rgb_s[1]),
    .Q(\vga_ctrl_i/red [1])
  );
  FDE   \vga_ctrl_i/red_0  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/phase[1]_PWR_5_o_equal_23_o ),
    .D(rgb_s[0]),
    .Q(\vga_ctrl_i/red [0])
  );
  FDE   \vga_ctrl_i/blue_7  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/phase[1]_PWR_5_o_equal_23_o ),
    .D(rgb_s[23]),
    .Q(\vga_ctrl_i/blue [7])
  );
  FDE   \vga_ctrl_i/blue_6  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/phase[1]_PWR_5_o_equal_23_o ),
    .D(rgb_s[22]),
    .Q(\vga_ctrl_i/blue [6])
  );
  FDE   \vga_ctrl_i/blue_5  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/phase[1]_PWR_5_o_equal_23_o ),
    .D(rgb_s[21]),
    .Q(\vga_ctrl_i/blue [5])
  );
  FDE   \vga_ctrl_i/blue_4  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/phase[1]_PWR_5_o_equal_23_o ),
    .D(rgb_s[20]),
    .Q(\vga_ctrl_i/blue [4])
  );
  FDE   \vga_ctrl_i/blue_3  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/phase[1]_PWR_5_o_equal_23_o ),
    .D(rgb_s[19]),
    .Q(\vga_ctrl_i/blue [3])
  );
  FDE   \vga_ctrl_i/blue_2  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/phase[1]_PWR_5_o_equal_23_o ),
    .D(rgb_s[18]),
    .Q(\vga_ctrl_i/blue [2])
  );
  FDE   \vga_ctrl_i/blue_1  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/phase[1]_PWR_5_o_equal_23_o ),
    .D(rgb_s[17]),
    .Q(\vga_ctrl_i/blue [1])
  );
  FDE   \vga_ctrl_i/blue_0  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/phase[1]_PWR_5_o_equal_23_o ),
    .D(rgb_s[16]),
    .Q(\vga_ctrl_i/blue [0])
  );
  XORCY   \fb_less_2d_gpu_i/Madd_sprt_addr_s9_xor<9>  (
    .CI(\fb_less_2d_gpu_i/Madd_sprt_addr_s9_cy [8]),
    .LI(\fb_less_2d_gpu_i/n1239[9] ),
    .O(\fb_less_2d_gpu_i/sprt_addr_s9 [9])
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_sprt_addr_s9_cy<9>  (
    .CI(\fb_less_2d_gpu_i/Madd_sprt_addr_s9_cy [8]),
    .DI(bus_we),
    .S(\fb_less_2d_gpu_i/n1239[9] ),
    .O(\fb_less_2d_gpu_i/Madd_sprt_addr_s9_cy [9])
  );
  XORCY   \fb_less_2d_gpu_i/Madd_sprt_addr_s9_xor<8>  (
    .CI(\fb_less_2d_gpu_i/Madd_sprt_addr_s9_cy [7]),
    .LI(pow_save_on_OBUF_78),
    .O(\fb_less_2d_gpu_i/sprt_addr_s9 [8])
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_sprt_addr_s9_cy<8>  (
    .CI(\fb_less_2d_gpu_i/Madd_sprt_addr_s9_cy [7]),
    .DI(pow_save_on_OBUF_78),
    .S(pow_save_on_OBUF_78),
    .O(\fb_less_2d_gpu_i/Madd_sprt_addr_s9_cy [8])
  );
  XORCY   \fb_less_2d_gpu_i/Madd_sprt_addr_s9_xor<7>  (
    .CI(\fb_less_2d_gpu_i/Madd_sprt_addr_s9_cy [6]),
    .LI(\fb_less_2d_gpu_i/n1239[7] ),
    .O(\fb_less_2d_gpu_i/sprt_addr_s9 [7])
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_sprt_addr_s9_cy<7>  (
    .CI(\fb_less_2d_gpu_i/Madd_sprt_addr_s9_cy [6]),
    .DI(bus_we),
    .S(\fb_less_2d_gpu_i/n1239[7] ),
    .O(\fb_less_2d_gpu_i/Madd_sprt_addr_s9_cy [7])
  );
  XORCY   \fb_less_2d_gpu_i/Madd_sprt_addr_s9_xor<6>  (
    .CI(\fb_less_2d_gpu_i/Madd_sprt_addr_s9_cy [5]),
    .LI(\fb_less_2d_gpu_i/n1239[6] ),
    .O(\fb_less_2d_gpu_i/sprt_addr_s9 [6])
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_sprt_addr_s9_cy<6>  (
    .CI(\fb_less_2d_gpu_i/Madd_sprt_addr_s9_cy [5]),
    .DI(bus_we),
    .S(\fb_less_2d_gpu_i/n1239[6] ),
    .O(\fb_less_2d_gpu_i/Madd_sprt_addr_s9_cy [6])
  );
  XORCY   \fb_less_2d_gpu_i/Madd_sprt_addr_s9_xor<5>  (
    .CI(\fb_less_2d_gpu_i/Madd_sprt_addr_s9_cy [4]),
    .LI(\fb_less_2d_gpu_i/Madd_sprt_addr_s9_lut [5]),
    .O(\fb_less_2d_gpu_i/sprt_addr_s9 [5])
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_sprt_addr_s9_cy<5>  (
    .CI(\fb_less_2d_gpu_i/Madd_sprt_addr_s9_cy [4]),
    .DI(\fb_less_2d_gpu_i/sprt_tex_offset_r9 [7]),
    .S(\fb_less_2d_gpu_i/Madd_sprt_addr_s9_lut [5]),
    .O(\fb_less_2d_gpu_i/Madd_sprt_addr_s9_cy [5])
  );
  XORCY   \fb_less_2d_gpu_i/Madd_sprt_addr_s9_xor<4>  (
    .CI(\fb_less_2d_gpu_i/Madd_sprt_addr_s9_cy [3]),
    .LI(\fb_less_2d_gpu_i/Madd_sprt_addr_s9_lut [4]),
    .O(\fb_less_2d_gpu_i/sprt_addr_s9 [4])
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_sprt_addr_s9_cy<4>  (
    .CI(\fb_less_2d_gpu_i/Madd_sprt_addr_s9_cy [3]),
    .DI(pow_save_on_OBUF_78),
    .S(\fb_less_2d_gpu_i/Madd_sprt_addr_s9_lut [4]),
    .O(\fb_less_2d_gpu_i/Madd_sprt_addr_s9_cy [4])
  );
  XORCY   \fb_less_2d_gpu_i/Madd_sprt_addr_s9_xor<3>  (
    .CI(\fb_less_2d_gpu_i/Madd_sprt_addr_s9_cy [2]),
    .LI(\fb_less_2d_gpu_i/Madd_sprt_addr_s9_lut [3]),
    .O(\fb_less_2d_gpu_i/sprt_addr_s9 [3])
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_sprt_addr_s9_cy<3>  (
    .CI(\fb_less_2d_gpu_i/Madd_sprt_addr_s9_cy [2]),
    .DI(\fb_less_2d_gpu_i/sprt_tex_offset_r9 [5]),
    .S(\fb_less_2d_gpu_i/Madd_sprt_addr_s9_lut [3]),
    .O(\fb_less_2d_gpu_i/Madd_sprt_addr_s9_cy [3])
  );
  XORCY   \fb_less_2d_gpu_i/Madd_sprt_addr_s9_xor<2>  (
    .CI(\fb_less_2d_gpu_i/Madd_sprt_addr_s9_cy [1]),
    .LI(\fb_less_2d_gpu_i/Madd_sprt_addr_s9_lut [2]),
    .O(\fb_less_2d_gpu_i/sprt_addr_s9 [2])
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_sprt_addr_s9_cy<2>  (
    .CI(\fb_less_2d_gpu_i/Madd_sprt_addr_s9_cy [1]),
    .DI(\fb_less_2d_gpu_i/sprt_tex_offset_r9 [4]),
    .S(\fb_less_2d_gpu_i/Madd_sprt_addr_s9_lut [2]),
    .O(\fb_less_2d_gpu_i/Madd_sprt_addr_s9_cy [2])
  );
  XORCY   \fb_less_2d_gpu_i/Madd_sprt_addr_s9_xor<1>  (
    .CI(\fb_less_2d_gpu_i/Madd_sprt_addr_s9_cy [0]),
    .LI(\fb_less_2d_gpu_i/Madd_sprt_addr_s9_lut [1]),
    .O(\fb_less_2d_gpu_i/sprt_addr_s9 [1])
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_sprt_addr_s9_cy<1>  (
    .CI(\fb_less_2d_gpu_i/Madd_sprt_addr_s9_cy [0]),
    .DI(\fb_less_2d_gpu_i/sprt_tex_offset_r9 [3]),
    .S(\fb_less_2d_gpu_i/Madd_sprt_addr_s9_lut [1]),
    .O(\fb_less_2d_gpu_i/Madd_sprt_addr_s9_cy [1])
  );
  XORCY   \fb_less_2d_gpu_i/Madd_sprt_addr_s9_xor<0>  (
    .CI(bus_we),
    .LI(\fb_less_2d_gpu_i/Madd_sprt_addr_s9_lut [0]),
    .O(\fb_less_2d_gpu_i/sprt_addr_s9 [0])
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_sprt_addr_s9_cy<0>  (
    .CI(bus_we),
    .DI(\fb_less_2d_gpu_i/sprt_tex_offset_r9 [2]),
    .S(\fb_less_2d_gpu_i/Madd_sprt_addr_s9_lut [0]),
    .O(\fb_less_2d_gpu_i/Madd_sprt_addr_s9_cy [0])
  );
  XORCY   \fb_less_2d_gpu_i/Madd_map_addr_s0_xor<11>  (
    .CI(\fb_less_2d_gpu_i/Madd_map_addr_s0_cy [10]),
    .LI(\fb_less_2d_gpu_i/Madd_map_index_s0_cy<0>10 ),
    .O(\fb_less_2d_gpu_i/map_addr_s0 [11])
  );
  XORCY   \fb_less_2d_gpu_i/Madd_map_addr_s0_xor<10>  (
    .CI(\fb_less_2d_gpu_i/Madd_map_addr_s0_cy [9]),
    .LI(\fb_less_2d_gpu_i/map_index_s0[10] ),
    .O(\fb_less_2d_gpu_i/map_addr_s0 [10])
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_map_addr_s0_cy<10>  (
    .CI(\fb_less_2d_gpu_i/Madd_map_addr_s0_cy [9]),
    .DI(bus_we),
    .S(\fb_less_2d_gpu_i/map_index_s0[10] ),
    .O(\fb_less_2d_gpu_i/Madd_map_addr_s0_cy [10])
  );
  XORCY   \fb_less_2d_gpu_i/Madd_map_addr_s0_xor<9>  (
    .CI(\fb_less_2d_gpu_i/Madd_map_addr_s0_cy [8]),
    .LI(\fb_less_2d_gpu_i/Madd_map_addr_s0_lut[9] ),
    .O(\fb_less_2d_gpu_i/map_addr_s0 [9])
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_map_addr_s0_cy<9>  (
    .CI(\fb_less_2d_gpu_i/Madd_map_addr_s0_cy [8]),
    .DI(pow_save_on_OBUF_78),
    .S(\fb_less_2d_gpu_i/Madd_map_addr_s0_lut[9] ),
    .O(\fb_less_2d_gpu_i/Madd_map_addr_s0_cy [9])
  );
  XORCY   \fb_less_2d_gpu_i/Madd_map_addr_s0_xor<8>  (
    .CI(\fb_less_2d_gpu_i/Madd_map_addr_s0_cy [7]),
    .LI(\fb_less_2d_gpu_i/map_index_s0[8] ),
    .O(\fb_less_2d_gpu_i/map_addr_s0 [8])
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_map_addr_s0_cy<8>  (
    .CI(\fb_less_2d_gpu_i/Madd_map_addr_s0_cy [7]),
    .DI(bus_we),
    .S(\fb_less_2d_gpu_i/map_index_s0[8] ),
    .O(\fb_less_2d_gpu_i/Madd_map_addr_s0_cy [8])
  );
  XORCY   \fb_less_2d_gpu_i/Madd_map_addr_s0_xor<7>  (
    .CI(\fb_less_2d_gpu_i/Madd_map_addr_s0_cy [6]),
    .LI(\fb_less_2d_gpu_i/map_index_s0[7] ),
    .O(\fb_less_2d_gpu_i/map_addr_s0 [7])
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_map_addr_s0_cy<7>  (
    .CI(\fb_less_2d_gpu_i/Madd_map_addr_s0_cy [6]),
    .DI(bus_we),
    .S(\fb_less_2d_gpu_i/map_index_s0[7] ),
    .O(\fb_less_2d_gpu_i/Madd_map_addr_s0_cy [7])
  );
  XORCY   \fb_less_2d_gpu_i/Madd_map_addr_s0_xor<6>  (
    .CI(\fb_less_2d_gpu_i/Madd_map_addr_s0_cy [5]),
    .LI(\fb_less_2d_gpu_i/Madd_map_addr_s0_lut[6] ),
    .O(\fb_less_2d_gpu_i/map_addr_s0 [6])
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_map_addr_s0_cy<6>  (
    .CI(\fb_less_2d_gpu_i/Madd_map_addr_s0_cy [5]),
    .DI(pow_save_on_OBUF_78),
    .S(\fb_less_2d_gpu_i/Madd_map_addr_s0_lut[6] ),
    .O(\fb_less_2d_gpu_i/Madd_map_addr_s0_cy [6])
  );
  XORCY   \fb_less_2d_gpu_i/Madd_map_addr_s0_xor<5>  (
    .CI(\fb_less_2d_gpu_i/Madd_map_addr_s0_cy [4]),
    .LI(\fb_less_2d_gpu_i/Madd_map_addr_s0_lut[5] ),
    .O(\fb_less_2d_gpu_i/map_addr_s0 [5])
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_map_addr_s0_cy<5>  (
    .CI(\fb_less_2d_gpu_i/Madd_map_addr_s0_cy [4]),
    .DI(pow_save_on_OBUF_78),
    .S(\fb_less_2d_gpu_i/Madd_map_addr_s0_lut[5] ),
    .O(\fb_less_2d_gpu_i/Madd_map_addr_s0_cy [5])
  );
  XORCY   \fb_less_2d_gpu_i/Madd_map_addr_s0_xor<4>  (
    .CI(\fb_less_2d_gpu_i/Madd_map_addr_s0_cy [3]),
    .LI(\fb_less_2d_gpu_i/Madd_map_addr_s0_lut[4] ),
    .O(\fb_less_2d_gpu_i/map_addr_s0 [4])
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_map_addr_s0_cy<4>  (
    .CI(\fb_less_2d_gpu_i/Madd_map_addr_s0_cy [3]),
    .DI(pow_save_on_OBUF_78),
    .S(\fb_less_2d_gpu_i/Madd_map_addr_s0_lut[4] ),
    .O(\fb_less_2d_gpu_i/Madd_map_addr_s0_cy [4])
  );
  XORCY   \fb_less_2d_gpu_i/Madd_map_addr_s0_xor<3>  (
    .CI(\fb_less_2d_gpu_i/Madd_map_addr_s0_cy [2]),
    .LI(\fb_less_2d_gpu_i/Madd_map_addr_s0_lut[3] ),
    .O(\fb_less_2d_gpu_i/map_addr_s0 [3])
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_map_addr_s0_cy<3>  (
    .CI(\fb_less_2d_gpu_i/Madd_map_addr_s0_cy [2]),
    .DI(pow_save_on_OBUF_78),
    .S(\fb_less_2d_gpu_i/Madd_map_addr_s0_lut[3] ),
    .O(\fb_less_2d_gpu_i/Madd_map_addr_s0_cy [3])
  );
  XORCY   \fb_less_2d_gpu_i/Madd_map_addr_s0_xor<2>  (
    .CI(\fb_less_2d_gpu_i/Madd_map_addr_s0_cy [1]),
    .LI(\fb_less_2d_gpu_i/Madd_map_addr_s0_lut[2] ),
    .O(\fb_less_2d_gpu_i/map_addr_s0 [2])
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_map_addr_s0_cy<2>  (
    .CI(\fb_less_2d_gpu_i/Madd_map_addr_s0_cy [1]),
    .DI(pow_save_on_OBUF_78),
    .S(\fb_less_2d_gpu_i/Madd_map_addr_s0_lut[2] ),
    .O(\fb_less_2d_gpu_i/Madd_map_addr_s0_cy [2])
  );
  XORCY   \fb_less_2d_gpu_i/Madd_map_addr_s0_xor<1>  (
    .CI(\fb_less_2d_gpu_i/Madd_map_addr_s0_cy [0]),
    .LI(\fb_less_2d_gpu_i/Madd_map_addr_s0_lut[1] ),
    .O(\fb_less_2d_gpu_i/map_addr_s0 [1])
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_map_addr_s0_cy<1>  (
    .CI(\fb_less_2d_gpu_i/Madd_map_addr_s0_cy [0]),
    .DI(pow_save_on_OBUF_78),
    .S(\fb_less_2d_gpu_i/Madd_map_addr_s0_lut[1] ),
    .O(\fb_less_2d_gpu_i/Madd_map_addr_s0_cy [1])
  );
  XORCY   \fb_less_2d_gpu_i/Madd_map_addr_s0_xor<0>  (
    .CI(bus_we),
    .LI(\fb_less_2d_gpu_i/Madd_map_addr_s0_lut[0] ),
    .O(\fb_less_2d_gpu_i/map_addr_s0 [0])
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_map_addr_s0_cy<0>  (
    .CI(bus_we),
    .DI(pow_save_on_OBUF_78),
    .S(\fb_less_2d_gpu_i/Madd_map_addr_s0_lut[0] ),
    .O(\fb_less_2d_gpu_i/Madd_map_addr_s0_cy [0])
  );
  XORCY   \fb_less_2d_gpu_i/Madd_img_pix_addr_s6_xor<12>  (
    .CI(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy [11]),
    .LI(\fb_less_2d_gpu_i/img_addr_r6 [12]),
    .O(\fb_less_2d_gpu_i/img_pix_addr_s6 [12])
  );
  XORCY   \fb_less_2d_gpu_i/Madd_img_pix_addr_s6_xor<11>  (
    .CI(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy [10]),
    .LI(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy<11>_rt_553 ),
    .O(\fb_less_2d_gpu_i/img_pix_addr_s6 [11])
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy<11>  (
    .CI(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy [10]),
    .DI(bus_we),
    .S(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy<11>_rt_553 ),
    .O(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy [11])
  );
  XORCY   \fb_less_2d_gpu_i/Madd_img_pix_addr_s6_xor<10>  (
    .CI(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy [9]),
    .LI(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy<10>_rt_554 ),
    .O(\fb_less_2d_gpu_i/img_pix_addr_s6 [10])
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy<10>  (
    .CI(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy [9]),
    .DI(bus_we),
    .S(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy<10>_rt_554 ),
    .O(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy [10])
  );
  XORCY   \fb_less_2d_gpu_i/Madd_img_pix_addr_s6_xor<9>  (
    .CI(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy [8]),
    .LI(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy<9>_rt_555 ),
    .O(\fb_less_2d_gpu_i/img_pix_addr_s6 [9])
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy<9>  (
    .CI(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy [8]),
    .DI(bus_we),
    .S(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy<9>_rt_555 ),
    .O(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy [9])
  );
  XORCY   \fb_less_2d_gpu_i/Madd_img_pix_addr_s6_xor<8>  (
    .CI(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy [7]),
    .LI(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy<8>_rt_556 ),
    .O(\fb_less_2d_gpu_i/img_pix_addr_s6 [8])
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy<8>  (
    .CI(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy [7]),
    .DI(bus_we),
    .S(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy<8>_rt_556 ),
    .O(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy [8])
  );
  XORCY   \fb_less_2d_gpu_i/Madd_img_pix_addr_s6_xor<7>  (
    .CI(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy [6]),
    .LI(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy<7>_rt_557 ),
    .O(\fb_less_2d_gpu_i/img_pix_addr_s6 [7])
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy<7>  (
    .CI(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy [6]),
    .DI(bus_we),
    .S(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy<7>_rt_557 ),
    .O(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy [7])
  );
  XORCY   \fb_less_2d_gpu_i/Madd_img_pix_addr_s6_xor<6>  (
    .CI(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy [5]),
    .LI(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy<6>_rt_558 ),
    .O(\fb_less_2d_gpu_i/img_pix_addr_s6 [6])
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy<6>  (
    .CI(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy [5]),
    .DI(bus_we),
    .S(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy<6>_rt_558 ),
    .O(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy [6])
  );
  XORCY   \fb_less_2d_gpu_i/Madd_img_pix_addr_s6_xor<5>  (
    .CI(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy [4]),
    .LI(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_lut [5]),
    .O(\fb_less_2d_gpu_i/img_pix_addr_s6 [5])
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy<5>  (
    .CI(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy [4]),
    .DI(\fb_less_2d_gpu_i/img_addr_r6 [5]),
    .S(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_lut [5]),
    .O(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy [5])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \fb_less_2d_gpu_i/Madd_img_pix_addr_s6_lut<5>  (
    .I0(\fb_less_2d_gpu_i/img_addr_r6 [5]),
    .I1(\fb_less_2d_gpu_i/img_tex_word_r6 [5]),
    .O(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_lut [5])
  );
  XORCY   \fb_less_2d_gpu_i/Madd_img_pix_addr_s6_xor<4>  (
    .CI(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy [3]),
    .LI(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_lut [4]),
    .O(\fb_less_2d_gpu_i/img_pix_addr_s6 [4])
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy<4>  (
    .CI(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy [3]),
    .DI(\fb_less_2d_gpu_i/img_addr_r6 [4]),
    .S(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_lut [4]),
    .O(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy [4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \fb_less_2d_gpu_i/Madd_img_pix_addr_s6_lut<4>  (
    .I0(\fb_less_2d_gpu_i/img_addr_r6 [4]),
    .I1(\fb_less_2d_gpu_i/img_tex_word_r6 [4]),
    .O(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_lut [4])
  );
  XORCY   \fb_less_2d_gpu_i/Madd_img_pix_addr_s6_xor<3>  (
    .CI(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy [2]),
    .LI(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_lut [3]),
    .O(\fb_less_2d_gpu_i/img_pix_addr_s6 [3])
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy<3>  (
    .CI(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy [2]),
    .DI(\fb_less_2d_gpu_i/img_addr_r6 [3]),
    .S(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_lut [3]),
    .O(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy [3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \fb_less_2d_gpu_i/Madd_img_pix_addr_s6_lut<3>  (
    .I0(\fb_less_2d_gpu_i/img_addr_r6 [3]),
    .I1(\fb_less_2d_gpu_i/img_tex_word_r6 [3]),
    .O(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_lut [3])
  );
  XORCY   \fb_less_2d_gpu_i/Madd_img_pix_addr_s6_xor<2>  (
    .CI(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy [1]),
    .LI(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_lut [2]),
    .O(\fb_less_2d_gpu_i/img_pix_addr_s6 [2])
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy<2>  (
    .CI(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy [1]),
    .DI(\fb_less_2d_gpu_i/img_addr_r6 [2]),
    .S(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_lut [2]),
    .O(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy [2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \fb_less_2d_gpu_i/Madd_img_pix_addr_s6_lut<2>  (
    .I0(\fb_less_2d_gpu_i/img_addr_r6 [2]),
    .I1(\fb_less_2d_gpu_i/img_tex_word_r6 [2]),
    .O(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_lut [2])
  );
  XORCY   \fb_less_2d_gpu_i/Madd_img_pix_addr_s6_xor<1>  (
    .CI(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy [0]),
    .LI(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_lut [1]),
    .O(\fb_less_2d_gpu_i/img_pix_addr_s6 [1])
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy<1>  (
    .CI(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy [0]),
    .DI(\fb_less_2d_gpu_i/img_addr_r6 [1]),
    .S(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_lut [1]),
    .O(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \fb_less_2d_gpu_i/Madd_img_pix_addr_s6_lut<1>  (
    .I0(\fb_less_2d_gpu_i/img_addr_r6 [1]),
    .I1(\fb_less_2d_gpu_i/img_tex_word_r6 [1]),
    .O(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_lut [1])
  );
  XORCY   \fb_less_2d_gpu_i/Madd_img_pix_addr_s6_xor<0>  (
    .CI(bus_we),
    .LI(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_lut [0]),
    .O(\fb_less_2d_gpu_i/img_pix_addr_s6 [0])
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy<0>  (
    .CI(bus_we),
    .DI(\fb_less_2d_gpu_i/img_addr_r6 [0]),
    .S(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_lut [0]),
    .O(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy [0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \fb_less_2d_gpu_i/Madd_img_pix_addr_s6_lut<0>  (
    .I0(\fb_less_2d_gpu_i/img_addr_r6 [0]),
    .I1(\fb_less_2d_gpu_i/img_tex_word_r6 [0]),
    .O(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_lut [0])
  );
  FD   \fb_less_2d_gpu_i/sprt_addr_r10_10  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/Madd_sprt_addr_s9_cy [9]),
    .Q(\fb_less_2d_gpu_i/sprt_addr_r10 [10])
  );
  FD   \fb_less_2d_gpu_i/sprt_addr_r10_9  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/sprt_addr_s9 [9]),
    .Q(\fb_less_2d_gpu_i/sprt_addr_r10 [9])
  );
  FD   \fb_less_2d_gpu_i/sprt_addr_r10_8  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/sprt_addr_s9 [8]),
    .Q(\fb_less_2d_gpu_i/sprt_addr_r10 [8])
  );
  FD   \fb_less_2d_gpu_i/sprt_addr_r10_7  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/sprt_addr_s9 [7]),
    .Q(\fb_less_2d_gpu_i/sprt_addr_r10 [7])
  );
  FD   \fb_less_2d_gpu_i/sprt_addr_r10_6  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/sprt_addr_s9 [6]),
    .Q(\fb_less_2d_gpu_i/sprt_addr_r10 [6])
  );
  FD   \fb_less_2d_gpu_i/sprt_addr_r10_5  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/sprt_addr_s9 [5]),
    .Q(\fb_less_2d_gpu_i/sprt_addr_r10 [5])
  );
  FD   \fb_less_2d_gpu_i/sprt_addr_r10_4  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/sprt_addr_s9 [4]),
    .Q(\fb_less_2d_gpu_i/sprt_addr_r10 [4])
  );
  FD   \fb_less_2d_gpu_i/sprt_addr_r10_3  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/sprt_addr_s9 [3]),
    .Q(\fb_less_2d_gpu_i/sprt_addr_r10 [3])
  );
  FD   \fb_less_2d_gpu_i/sprt_addr_r10_2  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/sprt_addr_s9 [2]),
    .Q(\fb_less_2d_gpu_i/sprt_addr_r10 [2])
  );
  FD   \fb_less_2d_gpu_i/sprt_addr_r10_1  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/sprt_addr_s9 [1]),
    .Q(\fb_less_2d_gpu_i/sprt_addr_r10 [1])
  );
  FD   \fb_less_2d_gpu_i/sprt_addr_r10_0  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/sprt_addr_s9 [0]),
    .Q(\fb_less_2d_gpu_i/sprt_addr_r10 [0])
  );
  FD   \fb_less_2d_gpu_i/palette_idx_r14_7  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/palette_idx_s13 [7]),
    .Q(\fb_less_2d_gpu_i/palette_idx_r14 [7])
  );
  FD   \fb_less_2d_gpu_i/palette_idx_r14_6  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/palette_idx_s13 [6]),
    .Q(\fb_less_2d_gpu_i/palette_idx_r14 [6])
  );
  FD   \fb_less_2d_gpu_i/palette_idx_r14_5  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/palette_idx_s13 [5]),
    .Q(\fb_less_2d_gpu_i/palette_idx_r14 [5])
  );
  FD   \fb_less_2d_gpu_i/palette_idx_r14_4  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/palette_idx_s13 [4]),
    .Q(\fb_less_2d_gpu_i/palette_idx_r14 [4])
  );
  FD   \fb_less_2d_gpu_i/palette_idx_r14_3  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/palette_idx_s13 [3]),
    .Q(\fb_less_2d_gpu_i/palette_idx_r14 [3])
  );
  FD   \fb_less_2d_gpu_i/palette_idx_r14_2  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/palette_idx_s13 [2]),
    .Q(\fb_less_2d_gpu_i/palette_idx_r14 [2])
  );
  FD   \fb_less_2d_gpu_i/palette_idx_r14_1  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/palette_idx_s13 [1]),
    .Q(\fb_less_2d_gpu_i/palette_idx_r14 [1])
  );
  FD   \fb_less_2d_gpu_i/palette_idx_r14_0  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/palette_idx_s13 [0]),
    .Q(\fb_less_2d_gpu_i/palette_idx_r14 [0])
  );
  FD   \fb_less_2d_gpu_i/sprt_int_col_r7_3  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/sprt_int_col_s6 [3]),
    .Q(\fb_less_2d_gpu_i/sprt_int_col_r7 [3])
  );
  FD   \fb_less_2d_gpu_i/sprt_int_col_r7_2  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/sprt_int_col_s6 [2]),
    .Q(\fb_less_2d_gpu_i/sprt_int_col_r7 [2])
  );
  FD   \fb_less_2d_gpu_i/sprt_int_col_r7_1  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/sprt_int_col_s6 [1]),
    .Q(\fb_less_2d_gpu_i/sprt_int_col_r7 [1])
  );
  FD   \fb_less_2d_gpu_i/sprt_int_col_r7_0  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/sprt_int_col_s6 [0]),
    .Q(\fb_less_2d_gpu_i/sprt_int_col_r7 [0])
  );
  FD   \fb_less_2d_gpu_i/img_color_idx_r10_7  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/img_color_idx_s9 [7]),
    .Q(\fb_less_2d_gpu_i/img_color_idx_r10 [7])
  );
  FD   \fb_less_2d_gpu_i/img_color_idx_r10_6  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/img_color_idx_s9 [6]),
    .Q(\fb_less_2d_gpu_i/img_color_idx_r10 [6])
  );
  FD   \fb_less_2d_gpu_i/img_color_idx_r10_5  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/img_color_idx_s9 [5]),
    .Q(\fb_less_2d_gpu_i/img_color_idx_r10 [5])
  );
  FD   \fb_less_2d_gpu_i/img_color_idx_r10_4  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/img_color_idx_s9 [4]),
    .Q(\fb_less_2d_gpu_i/img_color_idx_r10 [4])
  );
  FD   \fb_less_2d_gpu_i/img_color_idx_r10_3  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/img_color_idx_s9 [3]),
    .Q(\fb_less_2d_gpu_i/img_color_idx_r10 [3])
  );
  FD   \fb_less_2d_gpu_i/img_color_idx_r10_2  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/img_color_idx_s9 [2]),
    .Q(\fb_less_2d_gpu_i/img_color_idx_r10 [2])
  );
  FD   \fb_less_2d_gpu_i/img_color_idx_r10_1  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/img_color_idx_s9 [1]),
    .Q(\fb_less_2d_gpu_i/img_color_idx_r10 [1])
  );
  FD   \fb_less_2d_gpu_i/img_color_idx_r10_0  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/img_color_idx_s9 [0]),
    .Q(\fb_less_2d_gpu_i/img_color_idx_r10 [0])
  );
  FD   \fb_less_2d_gpu_i/img_pix_addr_r7_12  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/img_pix_addr_s6 [12]),
    .Q(\fb_less_2d_gpu_i/img_pix_addr_r7 [12])
  );
  FD   \fb_less_2d_gpu_i/img_pix_addr_r7_11  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/img_pix_addr_s6 [11]),
    .Q(\fb_less_2d_gpu_i/img_pix_addr_r7 [11])
  );
  FD   \fb_less_2d_gpu_i/img_pix_addr_r7_10  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/img_pix_addr_s6 [10]),
    .Q(\fb_less_2d_gpu_i/img_pix_addr_r7 [10])
  );
  FD   \fb_less_2d_gpu_i/img_pix_addr_r7_9  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/img_pix_addr_s6 [9]),
    .Q(\fb_less_2d_gpu_i/img_pix_addr_r7 [9])
  );
  FD   \fb_less_2d_gpu_i/img_pix_addr_r7_8  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/img_pix_addr_s6 [8]),
    .Q(\fb_less_2d_gpu_i/img_pix_addr_r7 [8])
  );
  FD   \fb_less_2d_gpu_i/img_pix_addr_r7_7  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/img_pix_addr_s6 [7]),
    .Q(\fb_less_2d_gpu_i/img_pix_addr_r7 [7])
  );
  FD   \fb_less_2d_gpu_i/img_pix_addr_r7_6  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/img_pix_addr_s6 [6]),
    .Q(\fb_less_2d_gpu_i/img_pix_addr_r7 [6])
  );
  FD   \fb_less_2d_gpu_i/img_pix_addr_r7_5  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/img_pix_addr_s6 [5]),
    .Q(\fb_less_2d_gpu_i/img_pix_addr_r7 [5])
  );
  FD   \fb_less_2d_gpu_i/img_pix_addr_r7_4  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/img_pix_addr_s6 [4]),
    .Q(\fb_less_2d_gpu_i/img_pix_addr_r7 [4])
  );
  FD   \fb_less_2d_gpu_i/img_pix_addr_r7_3  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/img_pix_addr_s6 [3]),
    .Q(\fb_less_2d_gpu_i/img_pix_addr_r7 [3])
  );
  FD   \fb_less_2d_gpu_i/img_pix_addr_r7_2  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/img_pix_addr_s6 [2]),
    .Q(\fb_less_2d_gpu_i/img_pix_addr_r7 [2])
  );
  FD   \fb_less_2d_gpu_i/img_pix_addr_r7_1  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/img_pix_addr_s6 [1]),
    .Q(\fb_less_2d_gpu_i/img_pix_addr_r7 [1])
  );
  FD   \fb_less_2d_gpu_i/img_pix_addr_r7_0  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/img_pix_addr_s6 [0]),
    .Q(\fb_less_2d_gpu_i/img_pix_addr_r7 [0])
  );
  FD   \fb_less_2d_gpu_i/spr_color_idx_r13_7  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/spr_color_idx_s12 [7]),
    .Q(\fb_less_2d_gpu_i/spr_color_idx_r13 [7])
  );
  FD   \fb_less_2d_gpu_i/spr_color_idx_r13_6  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/spr_color_idx_s12 [6]),
    .Q(\fb_less_2d_gpu_i/spr_color_idx_r13 [6])
  );
  FD   \fb_less_2d_gpu_i/spr_color_idx_r13_5  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/spr_color_idx_s12 [5]),
    .Q(\fb_less_2d_gpu_i/spr_color_idx_r13 [5])
  );
  FD   \fb_less_2d_gpu_i/spr_color_idx_r13_4  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/spr_color_idx_s12 [4]),
    .Q(\fb_less_2d_gpu_i/spr_color_idx_r13 [4])
  );
  FD   \fb_less_2d_gpu_i/spr_color_idx_r13_3  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/spr_color_idx_s12 [3]),
    .Q(\fb_less_2d_gpu_i/spr_color_idx_r13 [3])
  );
  FD   \fb_less_2d_gpu_i/spr_color_idx_r13_2  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/spr_color_idx_s12 [2]),
    .Q(\fb_less_2d_gpu_i/spr_color_idx_r13 [2])
  );
  FD   \fb_less_2d_gpu_i/spr_color_idx_r13_1  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/spr_color_idx_s12 [1]),
    .Q(\fb_less_2d_gpu_i/spr_color_idx_r13 [1])
  );
  FD   \fb_less_2d_gpu_i/spr_color_idx_r13_0  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/spr_color_idx_s12 [0]),
    .Q(\fb_less_2d_gpu_i/spr_color_idx_r13 [0])
  );
  FD   \fb_less_2d_gpu_i/img_tex_word_r6_5  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/img_tex_row_r5 [3]),
    .Q(\fb_less_2d_gpu_i/img_tex_word_r6 [5])
  );
  FD   \fb_less_2d_gpu_i/img_tex_word_r6_4  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/img_tex_row_r5 [2]),
    .Q(\fb_less_2d_gpu_i/img_tex_word_r6 [4])
  );
  FD   \fb_less_2d_gpu_i/img_tex_word_r6_3  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/img_tex_row_r5 [1]),
    .Q(\fb_less_2d_gpu_i/img_tex_word_r6 [3])
  );
  FD   \fb_less_2d_gpu_i/img_tex_word_r6_2  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/img_tex_row_r5 [0]),
    .Q(\fb_less_2d_gpu_i/img_tex_word_r6 [2])
  );
  FD   \fb_less_2d_gpu_i/img_tex_word_r6_1  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/img_tex_col_r5 [3]),
    .Q(\fb_less_2d_gpu_i/img_tex_word_r6 [1])
  );
  FD   \fb_less_2d_gpu_i/img_tex_word_r6_0  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/img_tex_col_r5 [2]),
    .Q(\fb_less_2d_gpu_i/img_tex_word_r6 [0])
  );
  FD   \fb_less_2d_gpu_i/img_tex_row_r5_3  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/img_tex_row_s4 [3]),
    .Q(\fb_less_2d_gpu_i/img_tex_row_r5 [3])
  );
  FD   \fb_less_2d_gpu_i/img_tex_row_r5_2  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/img_tex_row_s4 [2]),
    .Q(\fb_less_2d_gpu_i/img_tex_row_r5 [2])
  );
  FD   \fb_less_2d_gpu_i/img_tex_row_r5_1  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/img_tex_row_s4 [1]),
    .Q(\fb_less_2d_gpu_i/img_tex_row_r5 [1])
  );
  FD   \fb_less_2d_gpu_i/img_tex_row_r5_0  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/img_tex_row_s4 [0]),
    .Q(\fb_less_2d_gpu_i/img_tex_row_r5 [0])
  );
  FD   \fb_less_2d_gpu_i/img_tex_col_r5_3  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/img_tex_col_s4 [3]),
    .Q(\fb_less_2d_gpu_i/img_tex_col_r5 [3])
  );
  FD   \fb_less_2d_gpu_i/img_tex_col_r5_2  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/img_tex_col_s4 [2]),
    .Q(\fb_less_2d_gpu_i/img_tex_col_r5 [2])
  );
  FD   \fb_less_2d_gpu_i/img_tex_col_r5_1  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/img_tex_col_s4 [1]),
    .Q(\fb_less_2d_gpu_i/img_tex_col_r5 [1])
  );
  FD   \fb_less_2d_gpu_i/img_tex_col_r5_0  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/img_tex_col_s4 [0]),
    .Q(\fb_less_2d_gpu_i/img_tex_col_r5 [0])
  );
  FD   \fb_less_2d_gpu_i/map_addr_r1_11  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/map_addr_s0 [11]),
    .Q(\fb_less_2d_gpu_i/map_addr_r1 [11])
  );
  FD   \fb_less_2d_gpu_i/map_addr_r1_10  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/map_addr_s0 [10]),
    .Q(\fb_less_2d_gpu_i/map_addr_r1 [10])
  );
  FD   \fb_less_2d_gpu_i/map_addr_r1_9  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/map_addr_s0 [9]),
    .Q(\fb_less_2d_gpu_i/map_addr_r1 [9])
  );
  FD   \fb_less_2d_gpu_i/map_addr_r1_8  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/map_addr_s0 [8]),
    .Q(\fb_less_2d_gpu_i/map_addr_r1 [8])
  );
  FD   \fb_less_2d_gpu_i/map_addr_r1_7  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/map_addr_s0 [7]),
    .Q(\fb_less_2d_gpu_i/map_addr_r1 [7])
  );
  FD   \fb_less_2d_gpu_i/map_addr_r1_6  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/map_addr_s0 [6]),
    .Q(\fb_less_2d_gpu_i/map_addr_r1 [6])
  );
  FD   \fb_less_2d_gpu_i/map_addr_r1_5  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/map_addr_s0 [5]),
    .Q(\fb_less_2d_gpu_i/map_addr_r1 [5])
  );
  FD   \fb_less_2d_gpu_i/map_addr_r1_4  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/map_addr_s0 [4]),
    .Q(\fb_less_2d_gpu_i/map_addr_r1 [4])
  );
  FD   \fb_less_2d_gpu_i/map_addr_r1_3  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/map_addr_s0 [3]),
    .Q(\fb_less_2d_gpu_i/map_addr_r1 [3])
  );
  FD   \fb_less_2d_gpu_i/map_addr_r1_2  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/map_addr_s0 [2]),
    .Q(\fb_less_2d_gpu_i/map_addr_r1 [2])
  );
  FD   \fb_less_2d_gpu_i/map_addr_r1_1  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/map_addr_s0 [1]),
    .Q(\fb_less_2d_gpu_i/map_addr_r1 [1])
  );
  FD   \fb_less_2d_gpu_i/map_addr_r1_0  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/map_addr_s0 [0]),
    .Q(\fb_less_2d_gpu_i/map_addr_r1 [0])
  );
  FD   \fb_less_2d_gpu_i/img_col_r4_3  (
    .C(clk_100MHz),
    .D(\vga_ctrl_i/pixel_x [3]),
    .Q(\fb_less_2d_gpu_i/img_col_r4 [3])
  );
  FD   \fb_less_2d_gpu_i/img_col_r4_2  (
    .C(clk_100MHz),
    .D(\vga_ctrl_i/pixel_x [2]),
    .Q(\fb_less_2d_gpu_i/img_col_r4 [2])
  );
  FD   \fb_less_2d_gpu_i/img_col_r4_1  (
    .C(clk_100MHz),
    .D(\vga_ctrl_i/pixel_x [1]),
    .Q(\fb_less_2d_gpu_i/img_col_r4 [1])
  );
  FD   \fb_less_2d_gpu_i/img_col_r4_0  (
    .C(clk_100MHz),
    .D(\vga_ctrl_i/pixel_x [0]),
    .Q(\fb_less_2d_gpu_i/img_col_r4 [0])
  );
  FD   \fb_less_2d_gpu_i/img_row_r4_3  (
    .C(clk_100MHz),
    .D(\vga_ctrl_i/pixel_y [3]),
    .Q(\fb_less_2d_gpu_i/img_row_r4 [3])
  );
  FD   \fb_less_2d_gpu_i/img_row_r4_2  (
    .C(clk_100MHz),
    .D(\vga_ctrl_i/pixel_y [2]),
    .Q(\fb_less_2d_gpu_i/img_row_r4 [2])
  );
  FD   \fb_less_2d_gpu_i/img_row_r4_1  (
    .C(clk_100MHz),
    .D(\vga_ctrl_i/pixel_y [1]),
    .Q(\fb_less_2d_gpu_i/img_row_r4 [1])
  );
  FD   \fb_less_2d_gpu_i/img_row_r4_0  (
    .C(clk_100MHz),
    .D(\vga_ctrl_i/pixel_y [0]),
    .Q(\fb_less_2d_gpu_i/img_row_r4 [0])
  );
  FD   \fb_less_2d_gpu_i/img_rot_r4_7  (
    .C(clk_100MHz),
    .D(rgb_s[23]),
    .Q(\fb_less_2d_gpu_i/img_rot_r4 [7])
  );
  FD   \fb_less_2d_gpu_i/img_rot_r4_6  (
    .C(clk_100MHz),
    .D(rgb_s[22]),
    .Q(\fb_less_2d_gpu_i/img_rot_r4 [6])
  );
  FD   \fb_less_2d_gpu_i/img_rot_r4_5  (
    .C(clk_100MHz),
    .D(rgb_s[21]),
    .Q(\fb_less_2d_gpu_i/img_rot_r4 [5])
  );
  FD   \fb_less_2d_gpu_i/img_rot_r4_4  (
    .C(clk_100MHz),
    .D(rgb_s[20]),
    .Q(\fb_less_2d_gpu_i/img_rot_r4 [4])
  );
  FD   \fb_less_2d_gpu_i/img_rot_r4_3  (
    .C(clk_100MHz),
    .D(rgb_s[19]),
    .Q(\fb_less_2d_gpu_i/img_rot_r4 [3])
  );
  FD   \fb_less_2d_gpu_i/img_rot_r4_2  (
    .C(clk_100MHz),
    .D(rgb_s[18]),
    .Q(\fb_less_2d_gpu_i/img_rot_r4 [2])
  );
  FD   \fb_less_2d_gpu_i/img_rot_r4_1  (
    .C(clk_100MHz),
    .D(rgb_s[17]),
    .Q(\fb_less_2d_gpu_i/img_rot_r4 [1])
  );
  FD   \fb_less_2d_gpu_i/img_rot_r4_0  (
    .C(clk_100MHz),
    .D(rgb_s[16]),
    .Q(\fb_less_2d_gpu_i/img_rot_r4 [0])
  );
  FD   \fb_less_2d_gpu_i/reg_intsect_r1_7  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/reg_intsect_s0 [7]),
    .Q(\fb_less_2d_gpu_i/reg_intsect_r1 [7])
  );
  FD   \fb_less_2d_gpu_i/reg_intsect_r1_6  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/reg_intsect_s0 [6]),
    .Q(\fb_less_2d_gpu_i/reg_intsect_r1 [6])
  );
  FD   \fb_less_2d_gpu_i/reg_intsect_r1_5  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/reg_intsect_s0 [5]),
    .Q(\fb_less_2d_gpu_i/reg_intsect_r1 [5])
  );
  FD   \fb_less_2d_gpu_i/reg_intsect_r1_4  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/reg_intsect_s0 [4]),
    .Q(\fb_less_2d_gpu_i/reg_intsect_r1 [4])
  );
  FD   \fb_less_2d_gpu_i/reg_intsect_r1_3  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/reg_intsect_s0 [3]),
    .Q(\fb_less_2d_gpu_i/reg_intsect_r1 [3])
  );
  FD   \fb_less_2d_gpu_i/reg_intsect_r1_2  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/reg_intsect_s0 [2]),
    .Q(\fb_less_2d_gpu_i/reg_intsect_r1 [2])
  );
  FD   \fb_less_2d_gpu_i/reg_intsect_r1_1  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/reg_intsect_s0 [1]),
    .Q(\fb_less_2d_gpu_i/reg_intsect_r1 [1])
  );
  FD   \fb_less_2d_gpu_i/reg_intsect_r1_0  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/reg_intsect_s0 [0]),
    .Q(\fb_less_2d_gpu_i/reg_intsect_r1 [0])
  );
  LUT4 #(
    .INIT ( 16'h02AA ))
  \vga_ctrl_i/PWR_5_o_INV_20_o2  (
    .I0(\vga_ctrl_i/PWR_5_o_INV_20_o1 ),
    .I1(\vga_ctrl_i/pixel_x_d1 [8]),
    .I2(\vga_ctrl_i/pixel_x_d1 [7]),
    .I3(\vga_ctrl_i/pixel_x_d1 [9]),
    .O(\vga_ctrl_i/PWR_5_o_INV_20_o )
  );
  LUT5 #(
    .INIT ( 32'hFFFFEFFF ))
  \vga_ctrl_i/PWR_5_o_INV_22_o1  (
    .I0(\vga_ctrl_i/PWR_5_o_INV_20_o1 ),
    .I1(\vga_ctrl_i/pixel_y_d1 [2]),
    .I2(\vga_ctrl_i/pixel_y_d1 [1]),
    .I3(\vga_ctrl_i/pixel_y_d1 [3]),
    .I4(\vga_ctrl_i/pixel_y_d1 [4]),
    .O(\vga_ctrl_i/PWR_5_o_INV_22_o )
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \vga_ctrl_i/PWR_5_o_INV_20_o11  (
    .I0(\vga_ctrl_i/pixel_y_d1 [5]),
    .I1(\vga_ctrl_i/pixel_y_d1 [6]),
    .I2(\vga_ctrl_i/pixel_y_d1 [7]),
    .I3(\vga_ctrl_i/pixel_y_d1 [8]),
    .O(\vga_ctrl_i/PWR_5_o_INV_20_o1 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \vga_ctrl_i/Mcount_phase_xor<1>11  (
    .I0(\vga_ctrl_i/phase [1]),
    .I1(\vga_ctrl_i/phase [0]),
    .O(\vga_ctrl_i/Result [1])
  );
  LUT6 #(
    .INIT ( 64'hFFFFD557FFFFFFFF ))
  \vga_ctrl_i/PWR_5_o_INV_21_o1  (
    .I0(\vga_ctrl_i/pixel_x_d1 [9]),
    .I1(\vga_ctrl_i/pixel_x_d1 [6]),
    .I2(\vga_ctrl_i/pixel_x_d1 [4]),
    .I3(\vga_ctrl_i/pixel_x_d1 [5]),
    .I4(\vga_ctrl_i/pixel_x_d1 [8]),
    .I5(\vga_ctrl_i/pixel_x_d1 [7]),
    .O(\vga_ctrl_i/PWR_5_o_INV_21_o )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \vga_ctrl_i/phase[1]_PWR_5_o_equal_23_o<1>1  (
    .I0(\vga_ctrl_i/phase [1]),
    .I1(\vga_ctrl_i/phase [0]),
    .O(\vga_ctrl_i/phase[1]_PWR_5_o_equal_23_o )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \vga_ctrl_i/en_25MHz<1>1  (
    .I0(\vga_ctrl_i/phase [1]),
    .I1(\vga_ctrl_i/phase [0]),
    .O(\vga_ctrl_i/en_25MHz )
  );
  LUT5 #(
    .INIT ( 32'h0514EBFA ))
  \fb_less_2d_gpu_i/Mmux_img_tex_row_s441  (
    .I0(\fb_less_2d_gpu_i/_n1441 ),
    .I1(\fb_less_2d_gpu_i/img_rot_r4 [0]),
    .I2(\fb_less_2d_gpu_i/img_rot_r4 [1]),
    .I3(\fb_less_2d_gpu_i/img_row_r4 [3]),
    .I4(\fb_less_2d_gpu_i/img_col_r4 [3]),
    .O(\fb_less_2d_gpu_i/img_tex_row_s4 [3])
  );
  LUT5 #(
    .INIT ( 32'h0514EBFA ))
  \fb_less_2d_gpu_i/Mmux_img_tex_row_s431  (
    .I0(\fb_less_2d_gpu_i/_n1441 ),
    .I1(\fb_less_2d_gpu_i/img_rot_r4 [0]),
    .I2(\fb_less_2d_gpu_i/img_rot_r4 [1]),
    .I3(\fb_less_2d_gpu_i/img_row_r4 [2]),
    .I4(\fb_less_2d_gpu_i/img_col_r4 [2]),
    .O(\fb_less_2d_gpu_i/img_tex_row_s4 [2])
  );
  LUT5 #(
    .INIT ( 32'h0514EBFA ))
  \fb_less_2d_gpu_i/Mmux_img_tex_row_s421  (
    .I0(\fb_less_2d_gpu_i/_n1441 ),
    .I1(\fb_less_2d_gpu_i/img_rot_r4 [0]),
    .I2(\fb_less_2d_gpu_i/img_rot_r4 [1]),
    .I3(\fb_less_2d_gpu_i/img_row_r4 [1]),
    .I4(\fb_less_2d_gpu_i/img_col_r4 [1]),
    .O(\fb_less_2d_gpu_i/img_tex_row_s4 [1])
  );
  LUT5 #(
    .INIT ( 32'h0514EBFA ))
  \fb_less_2d_gpu_i/Mmux_img_tex_row_s411  (
    .I0(\fb_less_2d_gpu_i/_n1441 ),
    .I1(\fb_less_2d_gpu_i/img_rot_r4 [0]),
    .I2(\fb_less_2d_gpu_i/img_rot_r4 [1]),
    .I3(\fb_less_2d_gpu_i/img_row_r4 [0]),
    .I4(\fb_less_2d_gpu_i/img_col_r4 [0]),
    .O(\fb_less_2d_gpu_i/img_tex_row_s4 [0])
  );
  LUT5 #(
    .INIT ( 32'hEBFA0514 ))
  \fb_less_2d_gpu_i/Mmux_img_tex_col_s441  (
    .I0(\fb_less_2d_gpu_i/_n1441 ),
    .I1(\fb_less_2d_gpu_i/img_rot_r4 [0]),
    .I2(\fb_less_2d_gpu_i/img_rot_r4 [1]),
    .I3(\fb_less_2d_gpu_i/img_col_r4 [3]),
    .I4(\fb_less_2d_gpu_i/img_row_r4 [3]),
    .O(\fb_less_2d_gpu_i/img_tex_col_s4 [3])
  );
  LUT5 #(
    .INIT ( 32'hEBFA0514 ))
  \fb_less_2d_gpu_i/Mmux_img_tex_col_s431  (
    .I0(\fb_less_2d_gpu_i/_n1441 ),
    .I1(\fb_less_2d_gpu_i/img_rot_r4 [0]),
    .I2(\fb_less_2d_gpu_i/img_rot_r4 [1]),
    .I3(\fb_less_2d_gpu_i/img_col_r4 [2]),
    .I4(\fb_less_2d_gpu_i/img_row_r4 [2]),
    .O(\fb_less_2d_gpu_i/img_tex_col_s4 [2])
  );
  LUT5 #(
    .INIT ( 32'hEBFA0514 ))
  \fb_less_2d_gpu_i/Mmux_img_tex_col_s421  (
    .I0(\fb_less_2d_gpu_i/_n1441 ),
    .I1(\fb_less_2d_gpu_i/img_rot_r4 [0]),
    .I2(\fb_less_2d_gpu_i/img_rot_r4 [1]),
    .I3(\fb_less_2d_gpu_i/img_col_r4 [1]),
    .I4(\fb_less_2d_gpu_i/img_row_r4 [1]),
    .O(\fb_less_2d_gpu_i/img_tex_col_s4 [1])
  );
  LUT5 #(
    .INIT ( 32'hEBFA0514 ))
  \fb_less_2d_gpu_i/Mmux_img_tex_col_s411  (
    .I0(\fb_less_2d_gpu_i/_n1441 ),
    .I1(\fb_less_2d_gpu_i/img_rot_r4 [0]),
    .I2(\fb_less_2d_gpu_i/img_rot_r4 [1]),
    .I3(\fb_less_2d_gpu_i/img_col_r4 [0]),
    .I4(\fb_less_2d_gpu_i/img_row_r4 [0]),
    .O(\fb_less_2d_gpu_i/img_tex_col_s4 [0])
  );
  LUT5 #(
    .INIT ( 32'h6662622A ))
  \fb_less_2d_gpu_i/Madd_map_index_s0_xor<0>111  (
    .I0(\vga_ctrl_i/pixel_y [8]),
    .I1(\vga_ctrl_i/pixel_y [7]),
    .I2(\vga_ctrl_i/pixel_y [5]),
    .I3(\vga_ctrl_i/pixel_y [6]),
    .I4(\fb_less_2d_gpu_i/Madd_map_index_s0_cy<0>7 ),
    .O(\fb_less_2d_gpu_i/map_index_s0[10] )
  );
  LUT5 #(
    .INIT ( 32'h88888880 ))
  \fb_less_2d_gpu_i/Madd_map_index_s0_cy<0>111  (
    .I0(\vga_ctrl_i/pixel_y [8]),
    .I1(\vga_ctrl_i/pixel_y [7]),
    .I2(\fb_less_2d_gpu_i/Madd_map_index_s0_cy<0>7 ),
    .I3(\vga_ctrl_i/pixel_y [5]),
    .I4(\vga_ctrl_i/pixel_y [6]),
    .O(\fb_less_2d_gpu_i/Madd_map_index_s0_cy<0>10 )
  );
  LUT5 #(
    .INIT ( 32'h69969696 ))
  \fb_less_2d_gpu_i/Madd_map_index_s0_xor<0>91  (
    .I0(\vga_ctrl_i/pixel_y [6]),
    .I1(\vga_ctrl_i/pixel_y [8]),
    .I2(\fb_less_2d_gpu_i/Madd_map_index_s0_cy<0>7 ),
    .I3(\vga_ctrl_i/pixel_y [5]),
    .I4(\vga_ctrl_i/pixel_y [7]),
    .O(\fb_less_2d_gpu_i/map_index_s0[8] )
  );
  LUT6 #(
    .INIT ( 64'h0000FFFF0133FFFF ))
  \fb_less_2d_gpu_i/pixel_col_i[9]_reg_end_col_s[1][9]_LessThan_60_o1  (
    .I0(\vga_ctrl_i/pixel_x [0]),
    .I1(\vga_ctrl_i/pixel_x [3]),
    .I2(\vga_ctrl_i/pixel_x [1]),
    .I3(\vga_ctrl_i/pixel_x [2]),
    .I4(\vga_ctrl_i/pixel_x [5]),
    .I5(\vga_ctrl_i/pixel_x [4]),
    .O(\fb_less_2d_gpu_i/pixel_col_i[9]_reg_end_col_s[1][9]_LessThan_60_o1_172 )
  );
  LUT4 #(
    .INIT ( 16'h569A ))
  \fb_less_2d_gpu_i/Msub_sprt_int_col_s6<3:0>_xor<3>11  (
    .I0(\fb_less_2d_gpu_i/Msub_sprt_int_col_s6<3:0>_lut<3> ),
    .I1(\fb_less_2d_gpu_i/Msub_sprt_int_col_s6<3:0>_lut<2> ),
    .I2(\vga_ctrl_i/pixel_x [2]),
    .I3(\fb_less_2d_gpu_i/Msub_sprt_int_col_s6<3:0>_cy<1> ),
    .O(\fb_less_2d_gpu_i/sprt_int_col_s6 [3])
  );
  LUT6 #(
    .INIT ( 64'hDFD5DAD08F858A80 ))
  \fb_less_2d_gpu_i/Mmux_spr_color_idx_s1281  (
    .I0(\fb_less_2d_gpu_i/sprt_tex_offset_r12 [0]),
    .I1(rgb_s[7]),
    .I2(\fb_less_2d_gpu_i/sprt_tex_offset_r12 [1]),
    .I3(rgb_s[23]),
    .I4(\fb_less_2d_gpu_i/mem_data_s [31]),
    .I5(rgb_s[15]),
    .O(\fb_less_2d_gpu_i/spr_color_idx_s12 [7])
  );
  LUT6 #(
    .INIT ( 64'hDFD5DAD08F858A80 ))
  \fb_less_2d_gpu_i/Mmux_spr_color_idx_s1271  (
    .I0(\fb_less_2d_gpu_i/sprt_tex_offset_r12 [0]),
    .I1(rgb_s[6]),
    .I2(\fb_less_2d_gpu_i/sprt_tex_offset_r12 [1]),
    .I3(rgb_s[22]),
    .I4(\fb_less_2d_gpu_i/mem_data_s [30]),
    .I5(rgb_s[14]),
    .O(\fb_less_2d_gpu_i/spr_color_idx_s12 [6])
  );
  LUT6 #(
    .INIT ( 64'hDFD5DAD08F858A80 ))
  \fb_less_2d_gpu_i/Mmux_spr_color_idx_s1261  (
    .I0(\fb_less_2d_gpu_i/sprt_tex_offset_r12 [0]),
    .I1(rgb_s[5]),
    .I2(\fb_less_2d_gpu_i/sprt_tex_offset_r12 [1]),
    .I3(rgb_s[21]),
    .I4(\fb_less_2d_gpu_i/mem_data_s [29]),
    .I5(rgb_s[13]),
    .O(\fb_less_2d_gpu_i/spr_color_idx_s12 [5])
  );
  LUT6 #(
    .INIT ( 64'hDFD5DAD08F858A80 ))
  \fb_less_2d_gpu_i/Mmux_spr_color_idx_s1251  (
    .I0(\fb_less_2d_gpu_i/sprt_tex_offset_r12 [0]),
    .I1(rgb_s[4]),
    .I2(\fb_less_2d_gpu_i/sprt_tex_offset_r12 [1]),
    .I3(rgb_s[20]),
    .I4(\fb_less_2d_gpu_i/mem_data_s [28]),
    .I5(rgb_s[12]),
    .O(\fb_less_2d_gpu_i/spr_color_idx_s12 [4])
  );
  LUT6 #(
    .INIT ( 64'hDFD5DAD08F858A80 ))
  \fb_less_2d_gpu_i/Mmux_spr_color_idx_s1241  (
    .I0(\fb_less_2d_gpu_i/sprt_tex_offset_r12 [0]),
    .I1(rgb_s[3]),
    .I2(\fb_less_2d_gpu_i/sprt_tex_offset_r12 [1]),
    .I3(rgb_s[19]),
    .I4(\fb_less_2d_gpu_i/mem_data_s [27]),
    .I5(rgb_s[11]),
    .O(\fb_less_2d_gpu_i/spr_color_idx_s12 [3])
  );
  LUT6 #(
    .INIT ( 64'hDFD5DAD08F858A80 ))
  \fb_less_2d_gpu_i/Mmux_spr_color_idx_s1231  (
    .I0(\fb_less_2d_gpu_i/sprt_tex_offset_r12 [0]),
    .I1(rgb_s[2]),
    .I2(\fb_less_2d_gpu_i/sprt_tex_offset_r12 [1]),
    .I3(rgb_s[18]),
    .I4(\fb_less_2d_gpu_i/mem_data_s [26]),
    .I5(rgb_s[10]),
    .O(\fb_less_2d_gpu_i/spr_color_idx_s12 [2])
  );
  LUT6 #(
    .INIT ( 64'hDFD5DAD08F858A80 ))
  \fb_less_2d_gpu_i/Mmux_spr_color_idx_s1221  (
    .I0(\fb_less_2d_gpu_i/sprt_tex_offset_r12 [0]),
    .I1(rgb_s[1]),
    .I2(\fb_less_2d_gpu_i/sprt_tex_offset_r12 [1]),
    .I3(rgb_s[17]),
    .I4(\fb_less_2d_gpu_i/mem_data_s [25]),
    .I5(rgb_s[9]),
    .O(\fb_less_2d_gpu_i/spr_color_idx_s12 [1])
  );
  LUT6 #(
    .INIT ( 64'hDFD5DAD08F858A80 ))
  \fb_less_2d_gpu_i/Mmux_spr_color_idx_s1211  (
    .I0(\fb_less_2d_gpu_i/sprt_tex_offset_r12 [0]),
    .I1(rgb_s[0]),
    .I2(\fb_less_2d_gpu_i/sprt_tex_offset_r12 [1]),
    .I3(rgb_s[16]),
    .I4(\fb_less_2d_gpu_i/mem_data_s [24]),
    .I5(rgb_s[8]),
    .O(\fb_less_2d_gpu_i/spr_color_idx_s12 [0])
  );
  LUT6 #(
    .INIT ( 64'hDFD5DAD08F858A80 ))
  \fb_less_2d_gpu_i/Mmux_mem_addr_s91  (
    .I0(\vga_ctrl_i/phase [0]),
    .I1(\fb_less_2d_gpu_i/img_pix_addr_r7 [5]),
    .I2(\vga_ctrl_i/phase [1]),
    .I3(\fb_less_2d_gpu_i/map_addr_r1 [5]),
    .I4(\fb_less_2d_gpu_i/palette_addr_r16 [5]),
    .I5(\fb_less_2d_gpu_i/sprt_addr_r10 [5]),
    .O(\fb_less_2d_gpu_i/mem_addr_s [5])
  );
  LUT6 #(
    .INIT ( 64'hDFD5DAD08F858A80 ))
  \fb_less_2d_gpu_i/Mmux_mem_addr_s81  (
    .I0(\vga_ctrl_i/phase [0]),
    .I1(\fb_less_2d_gpu_i/img_pix_addr_r7 [4]),
    .I2(\vga_ctrl_i/phase [1]),
    .I3(\fb_less_2d_gpu_i/map_addr_r1 [4]),
    .I4(\fb_less_2d_gpu_i/palette_addr_r16 [4]),
    .I5(\fb_less_2d_gpu_i/sprt_addr_r10 [4]),
    .O(\fb_less_2d_gpu_i/mem_addr_s [4])
  );
  LUT6 #(
    .INIT ( 64'hDFD5DAD08F858A80 ))
  \fb_less_2d_gpu_i/Mmux_mem_addr_s71  (
    .I0(\vga_ctrl_i/phase [0]),
    .I1(\fb_less_2d_gpu_i/img_pix_addr_r7 [3]),
    .I2(\vga_ctrl_i/phase [1]),
    .I3(\fb_less_2d_gpu_i/map_addr_r1 [3]),
    .I4(\fb_less_2d_gpu_i/palette_addr_r16 [3]),
    .I5(\fb_less_2d_gpu_i/sprt_addr_r10 [3]),
    .O(\fb_less_2d_gpu_i/mem_addr_s [3])
  );
  LUT6 #(
    .INIT ( 64'hDFD5DAD08F858A80 ))
  \fb_less_2d_gpu_i/Mmux_mem_addr_s61  (
    .I0(\vga_ctrl_i/phase [0]),
    .I1(\fb_less_2d_gpu_i/img_pix_addr_r7 [2]),
    .I2(\vga_ctrl_i/phase [1]),
    .I3(\fb_less_2d_gpu_i/map_addr_r1 [2]),
    .I4(\fb_less_2d_gpu_i/palette_addr_r16 [2]),
    .I5(\fb_less_2d_gpu_i/sprt_addr_r10 [2]),
    .O(\fb_less_2d_gpu_i/mem_addr_s [2])
  );
  LUT6 #(
    .INIT ( 64'hDFD5DAD08F858A80 ))
  \fb_less_2d_gpu_i/Mmux_mem_addr_s51  (
    .I0(\vga_ctrl_i/phase [0]),
    .I1(\fb_less_2d_gpu_i/img_pix_addr_r7 [1]),
    .I2(\vga_ctrl_i/phase [1]),
    .I3(\fb_less_2d_gpu_i/map_addr_r1 [1]),
    .I4(\fb_less_2d_gpu_i/palette_addr_r16 [1]),
    .I5(\fb_less_2d_gpu_i/sprt_addr_r10 [1]),
    .O(\fb_less_2d_gpu_i/mem_addr_s [1])
  );
  LUT6 #(
    .INIT ( 64'hDFD5DAD08F858A80 ))
  \fb_less_2d_gpu_i/Mmux_mem_addr_s111  (
    .I0(\vga_ctrl_i/phase [0]),
    .I1(\fb_less_2d_gpu_i/img_pix_addr_r7 [7]),
    .I2(\vga_ctrl_i/phase [1]),
    .I3(\fb_less_2d_gpu_i/map_addr_r1 [7]),
    .I4(\fb_less_2d_gpu_i/palette_addr_r16 [7]),
    .I5(\fb_less_2d_gpu_i/sprt_addr_r10 [7]),
    .O(\fb_less_2d_gpu_i/mem_addr_s [7])
  );
  LUT6 #(
    .INIT ( 64'hDFD5DAD08F858A80 ))
  \fb_less_2d_gpu_i/Mmux_mem_addr_s101  (
    .I0(\vga_ctrl_i/phase [0]),
    .I1(\fb_less_2d_gpu_i/img_pix_addr_r7 [6]),
    .I2(\vga_ctrl_i/phase [1]),
    .I3(\fb_less_2d_gpu_i/map_addr_r1 [6]),
    .I4(\fb_less_2d_gpu_i/palette_addr_r16 [6]),
    .I5(\fb_less_2d_gpu_i/sprt_addr_r10 [6]),
    .O(\fb_less_2d_gpu_i/mem_addr_s [6])
  );
  LUT6 #(
    .INIT ( 64'hDFD5DAD08F858A80 ))
  \fb_less_2d_gpu_i/Mmux_mem_addr_s11  (
    .I0(\vga_ctrl_i/phase [0]),
    .I1(\fb_less_2d_gpu_i/img_pix_addr_r7 [0]),
    .I2(\vga_ctrl_i/phase [1]),
    .I3(\fb_less_2d_gpu_i/map_addr_r1 [0]),
    .I4(\fb_less_2d_gpu_i/palette_addr_r16 [0]),
    .I5(\fb_less_2d_gpu_i/sprt_addr_r10 [0]),
    .O(\fb_less_2d_gpu_i/mem_addr_s [0])
  );
  LUT6 #(
    .INIT ( 64'hDFD5DAD08F858A80 ))
  \fb_less_2d_gpu_i/Mmux_img_color_idx_s981  (
    .I0(\fb_less_2d_gpu_i/img_tex_pix_sel_r9 [0]),
    .I1(rgb_s[7]),
    .I2(\fb_less_2d_gpu_i/img_tex_pix_sel_r9 [1]),
    .I3(rgb_s[23]),
    .I4(\fb_less_2d_gpu_i/mem_data_s [31]),
    .I5(rgb_s[15]),
    .O(\fb_less_2d_gpu_i/img_color_idx_s9 [7])
  );
  LUT6 #(
    .INIT ( 64'hDFD5DAD08F858A80 ))
  \fb_less_2d_gpu_i/Mmux_img_color_idx_s971  (
    .I0(\fb_less_2d_gpu_i/img_tex_pix_sel_r9 [0]),
    .I1(rgb_s[6]),
    .I2(\fb_less_2d_gpu_i/img_tex_pix_sel_r9 [1]),
    .I3(rgb_s[22]),
    .I4(\fb_less_2d_gpu_i/mem_data_s [30]),
    .I5(rgb_s[14]),
    .O(\fb_less_2d_gpu_i/img_color_idx_s9 [6])
  );
  LUT6 #(
    .INIT ( 64'hDFD5DAD08F858A80 ))
  \fb_less_2d_gpu_i/Mmux_img_color_idx_s961  (
    .I0(\fb_less_2d_gpu_i/img_tex_pix_sel_r9 [0]),
    .I1(rgb_s[5]),
    .I2(\fb_less_2d_gpu_i/img_tex_pix_sel_r9 [1]),
    .I3(rgb_s[21]),
    .I4(\fb_less_2d_gpu_i/mem_data_s [29]),
    .I5(rgb_s[13]),
    .O(\fb_less_2d_gpu_i/img_color_idx_s9 [5])
  );
  LUT6 #(
    .INIT ( 64'hDFD5DAD08F858A80 ))
  \fb_less_2d_gpu_i/Mmux_img_color_idx_s951  (
    .I0(\fb_less_2d_gpu_i/img_tex_pix_sel_r9 [0]),
    .I1(rgb_s[4]),
    .I2(\fb_less_2d_gpu_i/img_tex_pix_sel_r9 [1]),
    .I3(rgb_s[20]),
    .I4(\fb_less_2d_gpu_i/mem_data_s [28]),
    .I5(rgb_s[12]),
    .O(\fb_less_2d_gpu_i/img_color_idx_s9 [4])
  );
  LUT6 #(
    .INIT ( 64'hDFD5DAD08F858A80 ))
  \fb_less_2d_gpu_i/Mmux_img_color_idx_s941  (
    .I0(\fb_less_2d_gpu_i/img_tex_pix_sel_r9 [0]),
    .I1(rgb_s[3]),
    .I2(\fb_less_2d_gpu_i/img_tex_pix_sel_r9 [1]),
    .I3(rgb_s[19]),
    .I4(\fb_less_2d_gpu_i/mem_data_s [27]),
    .I5(rgb_s[11]),
    .O(\fb_less_2d_gpu_i/img_color_idx_s9 [3])
  );
  LUT6 #(
    .INIT ( 64'hDFD5DAD08F858A80 ))
  \fb_less_2d_gpu_i/Mmux_img_color_idx_s931  (
    .I0(\fb_less_2d_gpu_i/img_tex_pix_sel_r9 [0]),
    .I1(rgb_s[2]),
    .I2(\fb_less_2d_gpu_i/img_tex_pix_sel_r9 [1]),
    .I3(rgb_s[18]),
    .I4(\fb_less_2d_gpu_i/mem_data_s [26]),
    .I5(rgb_s[10]),
    .O(\fb_less_2d_gpu_i/img_color_idx_s9 [2])
  );
  LUT6 #(
    .INIT ( 64'hDFD5DAD08F858A80 ))
  \fb_less_2d_gpu_i/Mmux_img_color_idx_s921  (
    .I0(\fb_less_2d_gpu_i/img_tex_pix_sel_r9 [0]),
    .I1(rgb_s[1]),
    .I2(\fb_less_2d_gpu_i/img_tex_pix_sel_r9 [1]),
    .I3(rgb_s[17]),
    .I4(\fb_less_2d_gpu_i/mem_data_s [25]),
    .I5(rgb_s[9]),
    .O(\fb_less_2d_gpu_i/img_color_idx_s9 [1])
  );
  LUT6 #(
    .INIT ( 64'hDFD5DAD08F858A80 ))
  \fb_less_2d_gpu_i/Mmux_img_color_idx_s911  (
    .I0(\fb_less_2d_gpu_i/img_tex_pix_sel_r9 [0]),
    .I1(rgb_s[0]),
    .I2(\fb_less_2d_gpu_i/img_tex_pix_sel_r9 [1]),
    .I3(rgb_s[16]),
    .I4(\fb_less_2d_gpu_i/mem_data_s [24]),
    .I5(rgb_s[8]),
    .O(\fb_less_2d_gpu_i/img_color_idx_s9 [0])
  );
  LUT4 #(
    .INIT ( 16'hB1B5 ))
  \fb_less_2d_gpu_i/mux2611  (
    .I0(\fb_less_2d_gpu_i/reg_intersected_r9 [3]),
    .I1(\fb_less_2d_gpu_i/reg_intersected_r9 [2]),
    .I2(\fb_less_2d_gpu_i/reg_intersected_r9 [0]),
    .I3(\fb_less_2d_gpu_i/reg_intersected_r9 [1]),
    .O(\fb_less_2d_gpu_i/n1239[7] )
  );
  LUT5 #(
    .INIT ( 32'hE6C4A280 ))
  \fb_less_2d_gpu_i/Mmux_mem_addr_s21  (
    .I0(\vga_ctrl_i/phase [1]),
    .I1(\vga_ctrl_i/phase [0]),
    .I2(\fb_less_2d_gpu_i/img_pix_addr_r7 [10]),
    .I3(\fb_less_2d_gpu_i/sprt_addr_r10 [10]),
    .I4(\fb_less_2d_gpu_i/map_addr_r1 [10]),
    .O(\fb_less_2d_gpu_i/mem_addr_s [10])
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \fb_less_2d_gpu_i/Mmux_mem_addr_s31  (
    .I0(\vga_ctrl_i/phase [0]),
    .I1(\vga_ctrl_i/phase [1]),
    .I2(\fb_less_2d_gpu_i/map_addr_r1 [11]),
    .I3(\fb_less_2d_gpu_i/img_pix_addr_r7 [11]),
    .O(\fb_less_2d_gpu_i/mem_addr_s [11])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \fb_less_2d_gpu_i/Mmux_mem_addr_s41  (
    .I0(\vga_ctrl_i/phase [0]),
    .I1(\fb_less_2d_gpu_i/img_pix_addr_r7 [12]),
    .I2(\vga_ctrl_i/phase [1]),
    .O(\fb_less_2d_gpu_i/mem_addr_s [12])
  );
  LUT5 #(
    .INIT ( 32'hE6C4A280 ))
  \fb_less_2d_gpu_i/Mmux_mem_addr_s121  (
    .I0(\vga_ctrl_i/phase [1]),
    .I1(\vga_ctrl_i/phase [0]),
    .I2(\fb_less_2d_gpu_i/img_pix_addr_r7 [8]),
    .I3(\fb_less_2d_gpu_i/sprt_addr_r10 [8]),
    .I4(\fb_less_2d_gpu_i/map_addr_r1 [8]),
    .O(\fb_less_2d_gpu_i/mem_addr_s [8])
  );
  LUT5 #(
    .INIT ( 32'hE6C4A280 ))
  \fb_less_2d_gpu_i/Mmux_mem_addr_s131  (
    .I0(\vga_ctrl_i/phase [1]),
    .I1(\vga_ctrl_i/phase [0]),
    .I2(\fb_less_2d_gpu_i/img_pix_addr_r7 [9]),
    .I3(\fb_less_2d_gpu_i/sprt_addr_r10 [9]),
    .I4(\fb_less_2d_gpu_i/map_addr_r1 [9]),
    .O(\fb_less_2d_gpu_i/mem_addr_s [9])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFEAAFFFF0000 ))
  \fb_less_2d_gpu_i/reg_col_s[1][9]_pixel_col_i[9]_LessThan_59_o1  (
    .I0(\vga_ctrl_i/pixel_x [3]),
    .I1(\vga_ctrl_i/pixel_x [0]),
    .I2(\vga_ctrl_i/pixel_x [1]),
    .I3(\vga_ctrl_i/pixel_x [2]),
    .I4(\vga_ctrl_i/pixel_x [5]),
    .I5(\vga_ctrl_i/pixel_x [4]),
    .O(\fb_less_2d_gpu_i/reg_col_s[1][9]_pixel_col_i[9]_LessThan_59_o1_218 )
  );
  LUT4 #(
    .INIT ( 16'h8889 ))
  \fb_less_2d_gpu_i/mux2511  (
    .I0(\fb_less_2d_gpu_i/reg_intersected_r9 [0]),
    .I1(\fb_less_2d_gpu_i/reg_intersected_r9 [3]),
    .I2(\fb_less_2d_gpu_i/reg_intersected_r9 [2]),
    .I3(\fb_less_2d_gpu_i/reg_intersected_r9 [1]),
    .O(\fb_less_2d_gpu_i/n1239[6] )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \fb_less_2d_gpu_i/mux611  (
    .I0(\fb_less_2d_gpu_i/spr_color_idx_r13 [6]),
    .I1(\fb_less_2d_gpu_i/img_color_idx_r13 [6]),
    .I2(\fb_less_2d_gpu_i/reg_intersected_r13[3]_img_z_coor_r13[7]_AND_105_o ),
    .O(\fb_less_2d_gpu_i/palette_idx_s13 [6])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \fb_less_2d_gpu_i/mux511  (
    .I0(\fb_less_2d_gpu_i/spr_color_idx_r13 [5]),
    .I1(\fb_less_2d_gpu_i/img_color_idx_r13 [5]),
    .I2(\fb_less_2d_gpu_i/reg_intersected_r13[3]_img_z_coor_r13[7]_AND_105_o ),
    .O(\fb_less_2d_gpu_i/palette_idx_s13 [5])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \fb_less_2d_gpu_i/mux711  (
    .I0(\fb_less_2d_gpu_i/spr_color_idx_r13 [7]),
    .I1(\fb_less_2d_gpu_i/img_color_idx_r13 [7]),
    .I2(\fb_less_2d_gpu_i/reg_intersected_r13[3]_img_z_coor_r13[7]_AND_105_o ),
    .O(\fb_less_2d_gpu_i/palette_idx_s13 [7])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \fb_less_2d_gpu_i/mux411  (
    .I0(\fb_less_2d_gpu_i/spr_color_idx_r13 [4]),
    .I1(\fb_less_2d_gpu_i/img_color_idx_r13 [4]),
    .I2(\fb_less_2d_gpu_i/reg_intersected_r13[3]_img_z_coor_r13[7]_AND_105_o ),
    .O(\fb_less_2d_gpu_i/palette_idx_s13 [4])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \fb_less_2d_gpu_i/mux311  (
    .I0(\fb_less_2d_gpu_i/spr_color_idx_r13 [3]),
    .I1(\fb_less_2d_gpu_i/img_color_idx_r13 [3]),
    .I2(\fb_less_2d_gpu_i/reg_intersected_r13[3]_img_z_coor_r13[7]_AND_105_o ),
    .O(\fb_less_2d_gpu_i/palette_idx_s13 [3])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \fb_less_2d_gpu_i/mux2111  (
    .I0(\fb_less_2d_gpu_i/spr_color_idx_r13 [2]),
    .I1(\fb_less_2d_gpu_i/img_color_idx_r13 [2]),
    .I2(\fb_less_2d_gpu_i/reg_intersected_r13[3]_img_z_coor_r13[7]_AND_105_o ),
    .O(\fb_less_2d_gpu_i/palette_idx_s13 [2])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \fb_less_2d_gpu_i/mux1111  (
    .I0(\fb_less_2d_gpu_i/spr_color_idx_r13 [1]),
    .I1(\fb_less_2d_gpu_i/img_color_idx_r13 [1]),
    .I2(\fb_less_2d_gpu_i/reg_intersected_r13[3]_img_z_coor_r13[7]_AND_105_o ),
    .O(\fb_less_2d_gpu_i/palette_idx_s13 [1])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \fb_less_2d_gpu_i/mux1101  (
    .I0(\fb_less_2d_gpu_i/spr_color_idx_r13 [0]),
    .I1(\fb_less_2d_gpu_i/img_color_idx_r13 [0]),
    .I2(\fb_less_2d_gpu_i/reg_intersected_r13[3]_img_z_coor_r13[7]_AND_105_o ),
    .O(\fb_less_2d_gpu_i/palette_idx_s13 [0])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \fb_less_2d_gpu_i/_n1441<7>1  (
    .I0(\fb_less_2d_gpu_i/img_rot_r4 [3]),
    .I1(\fb_less_2d_gpu_i/img_rot_r4 [2]),
    .I2(\fb_less_2d_gpu_i/img_rot_r4 [7]),
    .I3(\fb_less_2d_gpu_i/img_rot_r4 [6]),
    .I4(\fb_less_2d_gpu_i/img_rot_r4 [5]),
    .I5(\fb_less_2d_gpu_i/img_rot_r4 [4]),
    .O(\fb_less_2d_gpu_i/_n1441 )
  );
  LUT4 #(
    .INIT ( 16'h5655 ))
  \fb_less_2d_gpu_i/Msub_sprt_int_col_s6<3:0>_lut<3>1  (
    .I0(\vga_ctrl_i/pixel_x [3]),
    .I1(\fb_less_2d_gpu_i/reg_intersected_r6 [3]),
    .I2(\fb_less_2d_gpu_i/reg_intersected_r6 [2]),
    .I3(\fb_less_2d_gpu_i/reg_intersected_r6 [1]),
    .O(\fb_less_2d_gpu_i/Msub_sprt_int_col_s6<3:0>_lut<3> )
  );
  LUT5 #(
    .INIT ( 32'h66656565 ))
  \fb_less_2d_gpu_i/Msub_sprt_int_col_s6<3:0>_lut<2>1  (
    .I0(\vga_ctrl_i/pixel_x [2]),
    .I1(\fb_less_2d_gpu_i/reg_intersected_r6 [3]),
    .I2(\fb_less_2d_gpu_i/reg_intersected_r6 [0]),
    .I3(\fb_less_2d_gpu_i/reg_intersected_r6 [1]),
    .I4(\fb_less_2d_gpu_i/reg_intersected_r6 [2]),
    .O(\fb_less_2d_gpu_i/Msub_sprt_int_col_s6<3:0>_lut<2> )
  );
  LUT5 #(
    .INIT ( 32'h66665966 ))
  \fb_less_2d_gpu_i/Msub_sprt_int_col_s6<3:0>_lut<1>1  (
    .I0(\vga_ctrl_i/pixel_x [1]),
    .I1(\fb_less_2d_gpu_i/reg_intersected_r6 [0]),
    .I2(\fb_less_2d_gpu_i/reg_intersected_r6 [1]),
    .I3(\fb_less_2d_gpu_i/reg_intersected_r6 [2]),
    .I4(\fb_less_2d_gpu_i/reg_intersected_r6 [3]),
    .O(\fb_less_2d_gpu_i/Msub_sprt_int_col_s6<3:0>_lut<1> )
  );
  LUT4 #(
    .INIT ( 16'h666A ))
  \fb_less_2d_gpu_i/Msub_sprt_int_col_s6<3:0>_lut<0>1  (
    .I0(\vga_ctrl_i/pixel_x [0]),
    .I1(\fb_less_2d_gpu_i/reg_intersected_r6 [0]),
    .I2(\fb_less_2d_gpu_i/reg_intersected_r6 [3]),
    .I3(\fb_less_2d_gpu_i/reg_intersected_r6 [2]),
    .O(\fb_less_2d_gpu_i/Msub_sprt_int_col_s6<3:0>_lut<0> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFDFFFFFFFFFF ))
  \vga_ctrl_i/en_25MHz_pixel_x[9]_AND_4_o_SW0  (
    .I0(\vga_ctrl_i/pixel_x [9]),
    .I1(\vga_ctrl_i/pixel_x [6]),
    .I2(\vga_ctrl_i/pixel_x [7]),
    .I3(\vga_ctrl_i/pixel_x [4]),
    .I4(\vga_ctrl_i/pixel_x [5]),
    .I5(\vga_ctrl_i/pixel_x [8]),
    .O(N2)
  );
  LUT6 #(
    .INIT ( 64'h0000000080000000 ))
  \vga_ctrl_i/en_25MHz_pixel_x[9]_AND_4_o  (
    .I0(\vga_ctrl_i/pixel_x [3]),
    .I1(\vga_ctrl_i/pixel_x [0]),
    .I2(\vga_ctrl_i/pixel_x [2]),
    .I3(\vga_ctrl_i/pixel_x [1]),
    .I4(\vga_ctrl_i/en_25MHz<1>1_580 ),
    .I5(N2),
    .O(\vga_ctrl_i/en_25MHz_pixel_x[9]_AND_4_o_132 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \fb_less_2d_gpu_i/reg_intsect_s0<4>_SW0  (
    .I0(\vga_ctrl_i/pixel_x [3]),
    .I1(\vga_ctrl_i/pixel_x [0]),
    .I2(\vga_ctrl_i/pixel_x [2]),
    .I3(\vga_ctrl_i/pixel_x [1]),
    .O(N4)
  );
  LUT6 #(
    .INIT ( 64'h4000020000000000 ))
  \fb_less_2d_gpu_i/reg_intsect_s0<4>  (
    .I0(\vga_ctrl_i/pixel_x [6]),
    .I1(\vga_ctrl_i/pixel_x [5]),
    .I2(\vga_ctrl_i/pixel_x [4]),
    .I3(\vga_ctrl_i/pixel_x [7]),
    .I4(N4),
    .I5(\fb_less_2d_gpu_i/reg_intsect_s0<3>2_149 ),
    .O(\fb_less_2d_gpu_i/reg_intsect_s0 [4])
  );
  LUT5 #(
    .INIT ( 32'h10000000 ))
  \fb_less_2d_gpu_i/reg_intsect_s0<8>1  (
    .I0(\vga_ctrl_i/pixel_y [7]),
    .I1(\vga_ctrl_i/pixel_y [6]),
    .I2(\vga_ctrl_i/pixel_y [5]),
    .I3(\vga_ctrl_i/pixel_y [8]),
    .I4(\vga_ctrl_i/pixel_y [4]),
    .O(\fb_less_2d_gpu_i/reg_intsect_s0<8>1_493 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \fb_less_2d_gpu_i/reg_intsect_s0<8>3  (
    .I0(\vga_ctrl_i/pixel_x [6]),
    .I1(\vga_ctrl_i/pixel_x [7]),
    .I2(\vga_ctrl_i/pixel_x [5]),
    .I3(\vga_ctrl_i/pixel_x [4]),
    .O(\fb_less_2d_gpu_i/reg_intsect_s0<8>3_494 )
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \fb_less_2d_gpu_i/reg_intsect_s0<8>5  (
    .I0(\vga_ctrl_i/pixel_x [6]),
    .I1(\vga_ctrl_i/pixel_x [5]),
    .I2(\vga_ctrl_i/pixel_x [4]),
    .I3(\vga_ctrl_i/pixel_x [7]),
    .I4(\vga_ctrl_i/pixel_x [8]),
    .O(\fb_less_2d_gpu_i/reg_intsect_s0<8>5_495 )
  );
  LUT3 #(
    .INIT ( 8'hEF ))
  \fb_less_2d_gpu_i/reg_intsect_s0<7>2_SW0  (
    .I0(\vga_ctrl_i/pixel_x [9]),
    .I1(\vga_ctrl_i/pixel_y [7]),
    .I2(\vga_ctrl_i/pixel_x [6]),
    .O(N6)
  );
  LUT6 #(
    .INIT ( 64'h0000000020000000 ))
  \fb_less_2d_gpu_i/reg_intsect_s0<7>2  (
    .I0(\vga_ctrl_i/pixel_y [8]),
    .I1(\vga_ctrl_i/pixel_y [6]),
    .I2(\vga_ctrl_i/pixel_y [5]),
    .I3(\vga_ctrl_i/pixel_y [4]),
    .I4(\vga_ctrl_i/pixel_x [7]),
    .I5(N6),
    .O(\fb_less_2d_gpu_i/reg_intsect_s0<7>2_150 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFEFFFFFFF ))
  \fb_less_2d_gpu_i/reg_intsect_s0<1>_SW0  (
    .I0(\vga_ctrl_i/pixel_x [9]),
    .I1(\vga_ctrl_i/pixel_y [7]),
    .I2(\vga_ctrl_i/pixel_x [6]),
    .I3(\vga_ctrl_i/pixel_y [4]),
    .I4(\vga_ctrl_i/pixel_x [7]),
    .I5(\vga_ctrl_i/pixel_x [8]),
    .O(N8)
  );
  LUT6 #(
    .INIT ( 64'h0080000000000000 ))
  \fb_less_2d_gpu_i/reg_intsect_s0<1>  (
    .I0(\vga_ctrl_i/pixel_y [8]),
    .I1(\vga_ctrl_i/pixel_y [6]),
    .I2(\vga_ctrl_i/pixel_y [5]),
    .I3(N8),
    .I4(\fb_less_2d_gpu_i/pixel_col_i[9]_reg_end_col_s[1][9]_LessThan_60_o1_172 ),
    .I5(\fb_less_2d_gpu_i/reg_col_s[1][9]_pixel_col_i[9]_LessThan_59_o1_218 ),
    .O(\fb_less_2d_gpu_i/reg_intsect_s0 [1])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \fb_less_2d_gpu_i/reg_intsect_s0<3>2_SW0  (
    .I0(\vga_ctrl_i/pixel_x [9]),
    .I1(\vga_ctrl_i/pixel_y [7]),
    .O(N10)
  );
  LUT6 #(
    .INIT ( 64'h0000000080000000 ))
  \fb_less_2d_gpu_i/reg_intsect_s0<3>2  (
    .I0(\vga_ctrl_i/pixel_y [8]),
    .I1(\vga_ctrl_i/pixel_y [6]),
    .I2(\vga_ctrl_i/pixel_y [5]),
    .I3(\vga_ctrl_i/pixel_y [4]),
    .I4(\vga_ctrl_i/pixel_x [8]),
    .I5(N10),
    .O(\fb_less_2d_gpu_i/reg_intsect_s0<3>2_149 )
  );
  LUT6 #(
    .INIT ( 64'h0000AA80557F0000 ))
  \fb_less_2d_gpu_i/reg_intsect_s0<2>1  (
    .I0(\vga_ctrl_i/pixel_x [3]),
    .I1(\vga_ctrl_i/pixel_x [0]),
    .I2(\vga_ctrl_i/pixel_x [1]),
    .I3(\vga_ctrl_i/pixel_x [2]),
    .I4(\vga_ctrl_i/pixel_x [5]),
    .I5(\vga_ctrl_i/pixel_x [4]),
    .O(\fb_less_2d_gpu_i/reg_intsect_s0<2>1_499 )
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  \fb_less_2d_gpu_i/reg_intsect_s0<2>2  (
    .I0(\vga_ctrl_i/pixel_x [6]),
    .I1(\vga_ctrl_i/pixel_x [7]),
    .I2(\fb_less_2d_gpu_i/reg_intsect_s0<2>1_499 ),
    .I3(\fb_less_2d_gpu_i/reg_intsect_s0<3>2_149 ),
    .O(\fb_less_2d_gpu_i/reg_intsect_s0 [2])
  );
  LUT6 #(
    .INIT ( 64'h0C0E0C0E0C0E0C0F ))
  \fb_less_2d_gpu_i/Mmux_GND_6_o_PWR_6_o_mux_155_OUT1  (
    .I0(\fb_less_2d_gpu_i/reg_intsect_s0 [5]),
    .I1(\fb_less_2d_gpu_i/reg_intsect_s0 [7]),
    .I2(\fb_less_2d_gpu_i/reg_intsect_s0 [8]),
    .I3(\fb_less_2d_gpu_i/reg_intsect_s0 [6]),
    .I4(N18),
    .I5(\fb_less_2d_gpu_i/reg_intsect_s0 [4]),
    .O(\fb_less_2d_gpu_i/GND_6_o_PWR_6_o_mux_155_OUT<0>1 )
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0AAAACCCC ))
  \fb_less_2d_gpu_i/reg_intersected_r13[3]_img_z_coor_r13[7]_AND_105_o1  (
    .I0(\fb_less_2d_gpu_i/reg_intsect_r1 [5]),
    .I1(\fb_less_2d_gpu_i/reg_intsect_r1 [1]),
    .I2(\fb_less_2d_gpu_i/reg_intsect_r1 [3]),
    .I3(\fb_less_2d_gpu_i/reg_intsect_r1 [7]),
    .I4(\fb_less_2d_gpu_i/reg_intersected_r13 [2]),
    .I5(\fb_less_2d_gpu_i/reg_intersected_r13 [1]),
    .O(\fb_less_2d_gpu_i/reg_intersected_r13[3]_img_z_coor_r13[7]_AND_105_o1_501 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \fb_less_2d_gpu_i/reg_intersected_r13[3]_img_z_coor_r13[7]_AND_105_o5  (
    .I0(\fb_less_2d_gpu_i/img_color_idx_r13 [6]),
    .I1(\fb_less_2d_gpu_i/img_color_idx_r13 [7]),
    .I2(\fb_less_2d_gpu_i/img_color_idx_r13 [5]),
    .I3(\fb_less_2d_gpu_i/img_color_idx_r13 [4]),
    .I4(\fb_less_2d_gpu_i/img_color_idx_r13 [3]),
    .I5(\fb_less_2d_gpu_i/img_color_idx_r13 [2]),
    .O(\fb_less_2d_gpu_i/reg_intersected_r13[3]_img_z_coor_r13[7]_AND_105_o5_503 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \fb_less_2d_gpu_i/reg_intersected_r13[3]_img_z_coor_r13[7]_AND_105_o6  (
    .I0(\fb_less_2d_gpu_i/spr_color_idx_r13 [4]),
    .I1(\fb_less_2d_gpu_i/spr_color_idx_r13 [5]),
    .I2(\fb_less_2d_gpu_i/spr_color_idx_r13 [2]),
    .I3(\fb_less_2d_gpu_i/spr_color_idx_r13 [3]),
    .I4(\fb_less_2d_gpu_i/spr_color_idx_r13 [0]),
    .I5(\fb_less_2d_gpu_i/spr_color_idx_r13 [1]),
    .O(\fb_less_2d_gpu_i/reg_intersected_r13[3]_img_z_coor_r13[7]_AND_105_o6_504 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \fb_less_2d_gpu_i/reg_intersected_r13[3]_img_z_coor_r13[7]_AND_105_o7  (
    .I0(\fb_less_2d_gpu_i/spr_color_idx_r13 [6]),
    .I1(\fb_less_2d_gpu_i/spr_color_idx_r13 [7]),
    .I2(\fb_less_2d_gpu_i/reg_intersected_r13[3]_img_z_coor_r13[7]_AND_105_o6_504 ),
    .O(\fb_less_2d_gpu_i/reg_intersected_r13[3]_img_z_coor_r13[7]_AND_105_o7_505 )
  );
  LUT6 #(
    .INIT ( 64'h10FF100000000000 ))
  \fb_less_2d_gpu_i/reg_intersected_r13[3]_img_z_coor_r13[7]_AND_105_o8  (
    .I0(\fb_less_2d_gpu_i/img_color_idx_r13 [1]),
    .I1(\fb_less_2d_gpu_i/img_color_idx_r13 [0]),
    .I2(\fb_less_2d_gpu_i/reg_intersected_r13[3]_img_z_coor_r13[7]_AND_105_o5_503 ),
    .I3(\fb_less_2d_gpu_i/n1006 ),
    .I4(\fb_less_2d_gpu_i/reg_intersected_r13[3]_img_z_coor_r13[7]_AND_105_o7_505 ),
    .I5(\fb_less_2d_gpu_i/reg_intersected_r13[3]_img_z_coor_r13[7]_AND_105_o4_502 ),
    .O(\fb_less_2d_gpu_i/reg_intersected_r13[3]_img_z_coor_r13[7]_AND_105_o )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \fb_less_2d_gpu_i/n10061_SW0  (
    .I0(\fb_less_2d_gpu_i/img_z_coor_r13 [2]),
    .I1(\fb_less_2d_gpu_i/img_z_coor_r13 [1]),
    .I2(\fb_less_2d_gpu_i/img_z_coor_r13 [0]),
    .O(N20)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \fb_less_2d_gpu_i/n10061  (
    .I0(\fb_less_2d_gpu_i/img_z_coor_r13 [5]),
    .I1(\fb_less_2d_gpu_i/img_z_coor_r13 [4]),
    .I2(\fb_less_2d_gpu_i/img_z_coor_r13 [7]),
    .I3(\fb_less_2d_gpu_i/img_z_coor_r13 [6]),
    .I4(\fb_less_2d_gpu_i/img_z_coor_r13 [3]),
    .I5(N20),
    .O(\fb_less_2d_gpu_i/n1006 )
  );
  IBUF   rst_in_IBUF (
    .I(rst_in),
    .O(rst_in_IBUF_1)
  );
  OBUF   red_o_7_OBUF (
    .I(\vga_ctrl_i/red [7]),
    .O(red_o[7])
  );
  OBUF   red_o_6_OBUF (
    .I(\vga_ctrl_i/red [6]),
    .O(red_o[6])
  );
  OBUF   red_o_5_OBUF (
    .I(\vga_ctrl_i/red [5]),
    .O(red_o[5])
  );
  OBUF   red_o_4_OBUF (
    .I(\vga_ctrl_i/red [4]),
    .O(red_o[4])
  );
  OBUF   red_o_3_OBUF (
    .I(\vga_ctrl_i/red [3]),
    .O(red_o[3])
  );
  OBUF   red_o_2_OBUF (
    .I(\vga_ctrl_i/red [2]),
    .O(red_o[2])
  );
  OBUF   red_o_1_OBUF (
    .I(\vga_ctrl_i/red [1]),
    .O(red_o[1])
  );
  OBUF   red_o_0_OBUF (
    .I(\vga_ctrl_i/red [0]),
    .O(red_o[0])
  );
  OBUF   green_o_7_OBUF (
    .I(\vga_ctrl_i/green [7]),
    .O(green_o[7])
  );
  OBUF   green_o_6_OBUF (
    .I(\vga_ctrl_i/green [6]),
    .O(green_o[6])
  );
  OBUF   green_o_5_OBUF (
    .I(\vga_ctrl_i/green [5]),
    .O(green_o[5])
  );
  OBUF   green_o_4_OBUF (
    .I(\vga_ctrl_i/green [4]),
    .O(green_o[4])
  );
  OBUF   green_o_3_OBUF (
    .I(\vga_ctrl_i/green [3]),
    .O(green_o[3])
  );
  OBUF   green_o_2_OBUF (
    .I(\vga_ctrl_i/green [2]),
    .O(green_o[2])
  );
  OBUF   green_o_1_OBUF (
    .I(\vga_ctrl_i/green [1]),
    .O(green_o[1])
  );
  OBUF   green_o_0_OBUF (
    .I(\vga_ctrl_i/green [0]),
    .O(green_o[0])
  );
  OBUF   blue_o_7_OBUF (
    .I(\vga_ctrl_i/blue [7]),
    .O(blue_o[7])
  );
  OBUF   blue_o_6_OBUF (
    .I(\vga_ctrl_i/blue [6]),
    .O(blue_o[6])
  );
  OBUF   blue_o_5_OBUF (
    .I(\vga_ctrl_i/blue [5]),
    .O(blue_o[5])
  );
  OBUF   blue_o_4_OBUF (
    .I(\vga_ctrl_i/blue [4]),
    .O(blue_o[4])
  );
  OBUF   blue_o_3_OBUF (
    .I(\vga_ctrl_i/blue [3]),
    .O(blue_o[3])
  );
  OBUF   blue_o_2_OBUF (
    .I(\vga_ctrl_i/blue [2]),
    .O(blue_o[2])
  );
  OBUF   blue_o_1_OBUF (
    .I(\vga_ctrl_i/blue [1]),
    .O(blue_o[1])
  );
  OBUF   blue_o_0_OBUF (
    .I(\vga_ctrl_i/blue [0]),
    .O(blue_o[0])
  );
  OBUF   vga_clk_o_OBUF (
    .I(\vga_ctrl_i/vga_clk_49 ),
    .O(vga_clk_o)
  );
  OBUF   blank_on_OBUF (
    .I(\vga_ctrl_i/n_blank_50 ),
    .O(blank_on)
  );
  OBUF   h_sync_on_OBUF (
    .I(\vga_ctrl_i/n_h_sync_51 ),
    .O(h_sync_on)
  );
  OBUF   v_sync_on_OBUF (
    .I(\vga_ctrl_i/n_v_sync_52 ),
    .O(v_sync_on)
  );
  OBUF   sync_on_OBUF (
    .I(\vga_ctrl_i/n_sync_53 ),
    .O(sync_on)
  );
  OBUF   pow_save_on_OBUF (
    .I(pow_save_on_OBUF_78),
    .O(pow_save_on)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \vga_ctrl_i/Mcount_pixel_x_cy<8>_rt  (
    .I0(\vga_ctrl_i/pixel_x [8]),
    .O(\vga_ctrl_i/Mcount_pixel_x_cy<8>_rt_538 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \vga_ctrl_i/Mcount_pixel_x_cy<7>_rt  (
    .I0(\vga_ctrl_i/pixel_x [7]),
    .O(\vga_ctrl_i/Mcount_pixel_x_cy<7>_rt_539 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \vga_ctrl_i/Mcount_pixel_x_cy<6>_rt  (
    .I0(\vga_ctrl_i/pixel_x [6]),
    .O(\vga_ctrl_i/Mcount_pixel_x_cy<6>_rt_540 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \vga_ctrl_i/Mcount_pixel_x_cy<5>_rt  (
    .I0(\vga_ctrl_i/pixel_x [5]),
    .O(\vga_ctrl_i/Mcount_pixel_x_cy<5>_rt_541 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \vga_ctrl_i/Mcount_pixel_x_cy<4>_rt  (
    .I0(\vga_ctrl_i/pixel_x [4]),
    .O(\vga_ctrl_i/Mcount_pixel_x_cy<4>_rt_542 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \vga_ctrl_i/Mcount_pixel_x_cy<3>_rt  (
    .I0(\vga_ctrl_i/pixel_x [3]),
    .O(\vga_ctrl_i/Mcount_pixel_x_cy<3>_rt_543 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \vga_ctrl_i/Mcount_pixel_x_cy<2>_rt  (
    .I0(\vga_ctrl_i/pixel_x [2]),
    .O(\vga_ctrl_i/Mcount_pixel_x_cy<2>_rt_544 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \vga_ctrl_i/Mcount_pixel_x_cy<1>_rt  (
    .I0(\vga_ctrl_i/pixel_x [1]),
    .O(\vga_ctrl_i/Mcount_pixel_x_cy<1>_rt_545 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \vga_ctrl_i/Mcount_pixel_y_cy<7>_rt  (
    .I0(\vga_ctrl_i/pixel_y [7]),
    .O(\vga_ctrl_i/Mcount_pixel_y_cy<7>_rt_546 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \vga_ctrl_i/Mcount_pixel_y_cy<6>_rt  (
    .I0(\vga_ctrl_i/pixel_y [6]),
    .O(\vga_ctrl_i/Mcount_pixel_y_cy<6>_rt_547 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \vga_ctrl_i/Mcount_pixel_y_cy<5>_rt  (
    .I0(\vga_ctrl_i/pixel_y [5]),
    .O(\vga_ctrl_i/Mcount_pixel_y_cy<5>_rt_548 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \vga_ctrl_i/Mcount_pixel_y_cy<4>_rt  (
    .I0(\vga_ctrl_i/pixel_y [4]),
    .O(\vga_ctrl_i/Mcount_pixel_y_cy<4>_rt_549 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \vga_ctrl_i/Mcount_pixel_y_cy<3>_rt  (
    .I0(\vga_ctrl_i/pixel_y [3]),
    .O(\vga_ctrl_i/Mcount_pixel_y_cy<3>_rt_550 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \vga_ctrl_i/Mcount_pixel_y_cy<2>_rt  (
    .I0(\vga_ctrl_i/pixel_y [2]),
    .O(\vga_ctrl_i/Mcount_pixel_y_cy<2>_rt_551 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \vga_ctrl_i/Mcount_pixel_y_cy<1>_rt  (
    .I0(\vga_ctrl_i/pixel_y [1]),
    .O(\vga_ctrl_i/Mcount_pixel_y_cy<1>_rt_552 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy<11>_rt  (
    .I0(\fb_less_2d_gpu_i/img_addr_r6 [11]),
    .O(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy<11>_rt_553 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy<10>_rt  (
    .I0(\fb_less_2d_gpu_i/img_addr_r6 [10]),
    .O(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy<10>_rt_554 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy<9>_rt  (
    .I0(\fb_less_2d_gpu_i/img_addr_r6 [9]),
    .O(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy<9>_rt_555 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy<8>_rt  (
    .I0(\fb_less_2d_gpu_i/img_addr_r6 [8]),
    .O(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy<8>_rt_556 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy<7>_rt  (
    .I0(\fb_less_2d_gpu_i/img_addr_r6 [7]),
    .O(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy<7>_rt_557 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy<6>_rt  (
    .I0(\fb_less_2d_gpu_i/img_addr_r6 [6]),
    .O(\fb_less_2d_gpu_i/Madd_img_pix_addr_s6_cy<6>_rt_558 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \vga_ctrl_i/Mcount_pixel_x_xor<9>_rt  (
    .I0(\vga_ctrl_i/pixel_x [9]),
    .O(\vga_ctrl_i/Mcount_pixel_x_xor<9>_rt_559 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \vga_ctrl_i/Mcount_pixel_y_xor<8>_rt  (
    .I0(\vga_ctrl_i/pixel_y [8]),
    .O(\vga_ctrl_i/Mcount_pixel_y_xor<8>_rt_560 )
  );
  FD   \fb_less_2d_gpu_i/reg_intersected_r1_2  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/reg_intersected_r1_2_rstpot_561 ),
    .Q(\fb_less_2d_gpu_i/reg_intersected_r1 [2])
  );
  FD   \fb_less_2d_gpu_i/reg_intersected_r1_3  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/reg_intersected_r1_3_rstpot_562 ),
    .Q(\fb_less_2d_gpu_i/reg_intersected_r1 [3])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \fb_less_2d_gpu_i/_n1475<1>  (
    .I0(\fb_less_2d_gpu_i/reg_intsect_s0 [5]),
    .I1(\fb_less_2d_gpu_i/reg_intsect_s0 [7]),
    .I2(\fb_less_2d_gpu_i/reg_intsect_s0 [6]),
    .I3(\fb_less_2d_gpu_i/reg_intsect_s0 [2]),
    .I4(\fb_less_2d_gpu_i/reg_intsect_s0 [3]),
    .I5(N26),
    .O(\fb_less_2d_gpu_i/reg_intsect_s0<9>_0 )
  );
  LUT6 #(
    .INIT ( 64'h0303131303031303 ))
  \fb_less_2d_gpu_i/Mmux_GND_6_o_PWR_6_o_mux_155_OUT2  (
    .I0(\fb_less_2d_gpu_i/reg_intsect_s0 [5]),
    .I1(\fb_less_2d_gpu_i/reg_intsect_s0 [8]),
    .I2(N28),
    .I3(\fb_less_2d_gpu_i/reg_intsect_s0 [2]),
    .I4(\fb_less_2d_gpu_i/reg_intsect_s0 [4]),
    .I5(\fb_less_2d_gpu_i/reg_intsect_s0 [3]),
    .O(\fb_less_2d_gpu_i/GND_6_o_PWR_6_o_mux_155_OUT [1])
  );
  LUT4 #(
    .INIT ( 16'h57FF ))
  \fb_less_2d_gpu_i/reg_intsect_s0<3>_SW0_SW0  (
    .I0(\vga_ctrl_i/pixel_x [3]),
    .I1(\vga_ctrl_i/pixel_x [0]),
    .I2(\vga_ctrl_i/pixel_x [1]),
    .I3(\vga_ctrl_i/pixel_x [2]),
    .O(N30)
  );
  LUT6 #(
    .INIT ( 64'h0008000200000000 ))
  \fb_less_2d_gpu_i/reg_intsect_s0<3>  (
    .I0(\vga_ctrl_i/pixel_x [6]),
    .I1(\vga_ctrl_i/pixel_x [4]),
    .I2(\vga_ctrl_i/pixel_x [5]),
    .I3(\vga_ctrl_i/pixel_x [7]),
    .I4(N30),
    .I5(\fb_less_2d_gpu_i/reg_intsect_s0<3>2_149 ),
    .O(\fb_less_2d_gpu_i/reg_intsect_s0 [3])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \fb_less_2d_gpu_i/reg_intsect_s0<5>_SW0_SW0  (
    .I0(\vga_ctrl_i/pixel_x [2]),
    .I1(\vga_ctrl_i/pixel_x [1]),
    .O(N32)
  );
  LUT6 #(
    .INIT ( 64'hCCCCCCCCCCCCCCC8 ))
  \fb_less_2d_gpu_i/reg_intersected_r1_3_rstpot  (
    .I0(\fb_less_2d_gpu_i/reg_intsect_s0 [7]),
    .I1(\fb_less_2d_gpu_i/reg_intsect_s0 [8]),
    .I2(\fb_less_2d_gpu_i/reg_intsect_s0 [6]),
    .I3(N34),
    .I4(\fb_less_2d_gpu_i/reg_intsect_s0 [3]),
    .I5(N26),
    .O(\fb_less_2d_gpu_i/reg_intersected_r1_3_rstpot_562 )
  );
  LUT4 #(
    .INIT ( 16'hBFFD ))
  \fb_less_2d_gpu_i/reg_intsect_s0<4>_SW1  (
    .I0(\vga_ctrl_i/pixel_x [6]),
    .I1(\vga_ctrl_i/pixel_x [5]),
    .I2(\vga_ctrl_i/pixel_x [4]),
    .I3(N4),
    .O(N36)
  );
  LUT5 #(
    .INIT ( 32'hFFFFFF08 ))
  \fb_less_2d_gpu_i/_n1475<1>_SW0_SW0  (
    .I0(\vga_ctrl_i/pixel_x [7]),
    .I1(\fb_less_2d_gpu_i/reg_intsect_s0<3>2_149 ),
    .I2(N36),
    .I3(\fb_less_2d_gpu_i/reg_intsect_s0 [1]),
    .I4(\fb_less_2d_gpu_i/reg_intsect_s0 [8]),
    .O(N26)
  );
  LUT5 #(
    .INIT ( 32'h2BA9BD95 ))
  \fb_less_2d_gpu_i/Madd_map_addr_s0_lut<9>  (
    .I0(\vga_ctrl_i/pixel_y [7]),
    .I1(\fb_less_2d_gpu_i/Madd_map_index_s0_cy<0>7 ),
    .I2(\vga_ctrl_i/pixel_y [6]),
    .I3(\vga_ctrl_i/pixel_y [5]),
    .I4(\vga_ctrl_i/pixel_y [8]),
    .O(\fb_less_2d_gpu_i/Madd_map_addr_s0_lut[9] )
  );
  LUT4 #(
    .INIT ( 16'hFEEE ))
  \fb_less_2d_gpu_i/reg_intsect_s0<8>6_SW0  (
    .I0(\vga_ctrl_i/pixel_x [3]),
    .I1(\vga_ctrl_i/pixel_x [2]),
    .I2(\vga_ctrl_i/pixel_x [1]),
    .I3(\vga_ctrl_i/pixel_x [0]),
    .O(N38)
  );
  LUT6 #(
    .INIT ( 64'h5520000000200000 ))
  \fb_less_2d_gpu_i/reg_intsect_s0<8>6  (
    .I0(\vga_ctrl_i/pixel_x [9]),
    .I1(\vga_ctrl_i/pixel_x [8]),
    .I2(\fb_less_2d_gpu_i/reg_intsect_s0<8>3_494 ),
    .I3(N38),
    .I4(\fb_less_2d_gpu_i/reg_intsect_s0<8>1_493 ),
    .I5(\fb_less_2d_gpu_i/reg_intsect_s0<8>5_495 ),
    .O(\fb_less_2d_gpu_i/reg_intsect_s0 [8])
  );
  LUT6 #(
    .INIT ( 64'h2C282C2828080800 ))
  \fb_less_2d_gpu_i/Madd_map_index_s0_cy<0>81  (
    .I0(\vga_ctrl_i/pixel_y [4]),
    .I1(\vga_ctrl_i/pixel_y [5]),
    .I2(\vga_ctrl_i/pixel_y [7]),
    .I3(\vga_ctrl_i/pixel_x [9]),
    .I4(\vga_ctrl_i/pixel_x [8]),
    .I5(\vga_ctrl_i/pixel_y [6]),
    .O(\fb_less_2d_gpu_i/Madd_map_index_s0_cy<0>7 )
  );
  LUT3 #(
    .INIT ( 8'hE1 ))
  \fb_less_2d_gpu_i/Mmux_GND_6_o_PWR_6_o_mux_155_OUT2_SW0_SW0_SW0  (
    .I0(\vga_ctrl_i/pixel_x [3]),
    .I1(\vga_ctrl_i/pixel_x [2]),
    .I2(\vga_ctrl_i/pixel_x [4]),
    .O(N40)
  );
  LUT6 #(
    .INIT ( 64'h33F7F7F7FFFFFFFF ))
  \fb_less_2d_gpu_i/Mmux_GND_6_o_PWR_6_o_mux_155_OUT2_SW0_SW0  (
    .I0(\vga_ctrl_i/pixel_x [5]),
    .I1(\vga_ctrl_i/pixel_x [8]),
    .I2(N40),
    .I3(\fb_less_2d_gpu_i/pixel_col_i[9]_reg_end_col_s[1][9]_LessThan_60_o1_172 ),
    .I4(\fb_less_2d_gpu_i/reg_col_s[1][9]_pixel_col_i[9]_LessThan_59_o1_218 ),
    .I5(\fb_less_2d_gpu_i/reg_intsect_s0<7>2_150 ),
    .O(N28)
  );
  LUT6 #(
    .INIT ( 64'h1F0F0F0F11000000 ))
  \fb_less_2d_gpu_i/_n1475<1>_SW0  (
    .I0(\vga_ctrl_i/pixel_x [6]),
    .I1(\vga_ctrl_i/pixel_x [7]),
    .I2(N42),
    .I3(\fb_less_2d_gpu_i/reg_intsect_s0<2>1_499 ),
    .I4(\fb_less_2d_gpu_i/reg_intsect_s0<3>2_149 ),
    .I5(\fb_less_2d_gpu_i/reg_intsect_s0<7>2_150 ),
    .O(N34)
  );
  LUT6 #(
    .INIT ( 64'hE1FFFFFFFFFFFFFF ))
  \fb_less_2d_gpu_i/reg_intsect_s0<7>2_SW1  (
    .I0(\vga_ctrl_i/pixel_x [3]),
    .I1(\vga_ctrl_i/pixel_x [2]),
    .I2(\vga_ctrl_i/pixel_x [4]),
    .I3(\vga_ctrl_i/pixel_x [5]),
    .I4(\vga_ctrl_i/pixel_x [7]),
    .I5(\vga_ctrl_i/pixel_x [8]),
    .O(N44)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000800 ))
  \fb_less_2d_gpu_i/reg_intsect_s0<7>1  (
    .I0(\vga_ctrl_i/pixel_y [8]),
    .I1(\vga_ctrl_i/pixel_y [4]),
    .I2(\vga_ctrl_i/pixel_y [6]),
    .I3(\vga_ctrl_i/pixel_y [5]),
    .I4(N6),
    .I5(N44),
    .O(\fb_less_2d_gpu_i/reg_intsect_s0 [7])
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \fb_less_2d_gpu_i/reg_intsect_s0<7>2_SW2  (
    .I0(\vga_ctrl_i/pixel_y [4]),
    .I1(\vga_ctrl_i/pixel_y [5]),
    .I2(\vga_ctrl_i/pixel_x [7]),
    .I3(\vga_ctrl_i/pixel_x [8]),
    .O(N46)
  );
  LUT6 #(
    .INIT ( 64'h0002000000000000 ))
  \fb_less_2d_gpu_i/reg_intsect_s0<6>1  (
    .I0(\vga_ctrl_i/pixel_y [8]),
    .I1(\vga_ctrl_i/pixel_y [6]),
    .I2(N6),
    .I3(N46),
    .I4(\fb_less_2d_gpu_i/pixel_col_i[9]_reg_end_col_s[1][9]_LessThan_60_o1_172 ),
    .I5(\fb_less_2d_gpu_i/reg_col_s[1][9]_pixel_col_i[9]_LessThan_59_o1_218 ),
    .O(\fb_less_2d_gpu_i/reg_intsect_s0 [6])
  );
  LUT6 #(
    .INIT ( 64'hFDFFFFFFFFFFFFFF ))
  \fb_less_2d_gpu_i/reg_intsect_s0<7>2_SW3  (
    .I0(\vga_ctrl_i/pixel_y [4]),
    .I1(\vga_ctrl_i/pixel_y [6]),
    .I2(\vga_ctrl_i/pixel_x [5]),
    .I3(\vga_ctrl_i/pixel_x [7]),
    .I4(\vga_ctrl_i/pixel_y [5]),
    .I5(\vga_ctrl_i/pixel_x [8]),
    .O(N48)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000A28 ))
  \fb_less_2d_gpu_i/reg_intsect_s0<5>  (
    .I0(\vga_ctrl_i/pixel_y [8]),
    .I1(\vga_ctrl_i/pixel_x [3]),
    .I2(\vga_ctrl_i/pixel_x [4]),
    .I3(N32),
    .I4(N6),
    .I5(N48),
    .O(\fb_less_2d_gpu_i/reg_intsect_s0 [5])
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \fb_less_2d_gpu_i/_n1475<1>_SW1  (
    .I0(\fb_less_2d_gpu_i/reg_intsect_s0 [5]),
    .I1(\fb_less_2d_gpu_i/reg_intsect_s0 [7]),
    .I2(\fb_less_2d_gpu_i/reg_intsect_s0 [6]),
    .O(N50)
  );
  LUT6 #(
    .INIT ( 64'h5050555550405555 ))
  \fb_less_2d_gpu_i/reg_intersected_r1_2_rstpot  (
    .I0(\fb_less_2d_gpu_i/reg_intsect_s0 [8]),
    .I1(\fb_less_2d_gpu_i/reg_intsect_s0 [2]),
    .I2(\fb_less_2d_gpu_i/reg_intsect_s0 [4]),
    .I3(\fb_less_2d_gpu_i/reg_intsect_s0 [3]),
    .I4(N50),
    .I5(N26),
    .O(\fb_less_2d_gpu_i/reg_intersected_r1_2_rstpot_561 )
  );
  LUT6 #(
    .INIT ( 64'h0F0F00FF33335555 ))
  \fb_less_2d_gpu_i/reg_intersected_r13[3]_img_z_coor_r13[7]_AND_105_o4_SW0  (
    .I0(\fb_less_2d_gpu_i/reg_intsect_r1 [0]),
    .I1(\fb_less_2d_gpu_i/reg_intsect_r1 [4]),
    .I2(\fb_less_2d_gpu_i/reg_intsect_r1 [6]),
    .I3(\fb_less_2d_gpu_i/reg_intsect_r1 [2]),
    .I4(\fb_less_2d_gpu_i/reg_intersected_r13 [2]),
    .I5(\fb_less_2d_gpu_i/reg_intersected_r13 [1]),
    .O(N52)
  );
  LUT5 #(
    .INIT ( 32'h4A4F4045 ))
  \fb_less_2d_gpu_i/reg_intersected_r13[3]_img_z_coor_r13[7]_AND_105_o4  (
    .I0(\fb_less_2d_gpu_i/reg_intersected_r13 [0]),
    .I1(\fb_less_2d_gpu_i/reg_intersected_r1 [3]),
    .I2(\fb_less_2d_gpu_i/reg_intersected_r13 [3]),
    .I3(N52),
    .I4(\fb_less_2d_gpu_i/reg_intersected_r13[3]_img_z_coor_r13[7]_AND_105_o1_501 ),
    .O(\fb_less_2d_gpu_i/reg_intersected_r13[3]_img_z_coor_r13[7]_AND_105_o4_502 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \fb_less_2d_gpu_i/reg_intsect_s0<0>_SW0_SW0  (
    .I0(\vga_ctrl_i/pixel_x [1]),
    .I1(\vga_ctrl_i/pixel_x [0]),
    .I2(\vga_ctrl_i/pixel_x [2]),
    .O(N54)
  );
  LUT6 #(
    .INIT ( 64'h0008000800080800 ))
  \fb_less_2d_gpu_i/reg_intsect_s0<0>  (
    .I0(\vga_ctrl_i/pixel_x [5]),
    .I1(\fb_less_2d_gpu_i/reg_intsect_s0<7>2_150 ),
    .I2(\vga_ctrl_i/pixel_x [8]),
    .I3(\vga_ctrl_i/pixel_x [4]),
    .I4(\vga_ctrl_i/pixel_x [3]),
    .I5(N54),
    .O(\fb_less_2d_gpu_i/reg_intsect_s0 [0])
  );
  LUT6 #(
    .INIT ( 64'hFFFFAA95FFFFFFFF ))
  \fb_less_2d_gpu_i/_n1475<1>_SW0_SW1  (
    .I0(\vga_ctrl_i/pixel_x [4]),
    .I1(\vga_ctrl_i/pixel_x [1]),
    .I2(\vga_ctrl_i/pixel_x [2]),
    .I3(\vga_ctrl_i/pixel_x [3]),
    .I4(\vga_ctrl_i/pixel_x [5]),
    .I5(\vga_ctrl_i/pixel_x [8]),
    .O(N42)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \fb_less_2d_gpu_i/Madd_map_addr_s0_lut<4>  (
    .I0(\vga_ctrl_i/pixel_y [4]),
    .I1(\vga_ctrl_i/pixel_x [8]),
    .O(\fb_less_2d_gpu_i/Madd_map_addr_s0_lut[4] )
  );
  LUT4 #(
    .INIT ( 16'h7887 ))
  \fb_less_2d_gpu_i/Madd_map_addr_s0_lut<5>  (
    .I0(\vga_ctrl_i/pixel_x [8]),
    .I1(\vga_ctrl_i/pixel_y [4]),
    .I2(\vga_ctrl_i/pixel_x [9]),
    .I3(\vga_ctrl_i/pixel_y [5]),
    .O(\fb_less_2d_gpu_i/Madd_map_addr_s0_lut[5] )
  );
  LUT5 #(
    .INIT ( 32'h63693999 ))
  \fb_less_2d_gpu_i/Madd_map_addr_s0_lut<6>  (
    .I0(\vga_ctrl_i/pixel_y [4]),
    .I1(\vga_ctrl_i/pixel_y [6]),
    .I2(\vga_ctrl_i/pixel_x [9]),
    .I3(\vga_ctrl_i/pixel_x [8]),
    .I4(\vga_ctrl_i/pixel_y [5]),
    .O(\fb_less_2d_gpu_i/Madd_map_addr_s0_lut[6] )
  );
  LUT6 #(
    .INIT ( 64'h9A9696A69A96A666 ))
  \fb_less_2d_gpu_i/Madd_map_index_s0_xor<0>81  (
    .I0(\vga_ctrl_i/pixel_y [7]),
    .I1(\vga_ctrl_i/pixel_y [5]),
    .I2(\vga_ctrl_i/pixel_y [4]),
    .I3(\vga_ctrl_i/pixel_x [9]),
    .I4(\vga_ctrl_i/pixel_y [6]),
    .I5(\vga_ctrl_i/pixel_x [8]),
    .O(\fb_less_2d_gpu_i/map_index_s0[7] )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAA8AAA ))
  \vga_ctrl_i/PWR_5_o_INV_23_o1  (
    .I0(\vga_ctrl_i/PWR_5_o_INV_21_o ),
    .I1(\vga_ctrl_i/PWR_5_o_INV_20_o1 ),
    .I2(\vga_ctrl_i/pixel_y_d1 [1]),
    .I3(\vga_ctrl_i/pixel_y_d1 [3]),
    .I4(\vga_ctrl_i/pixel_y_d1 [2]),
    .I5(\vga_ctrl_i/pixel_y_d1 [4]),
    .O(\vga_ctrl_i/PWR_5_o_INV_23_o )
  );
  LUT5 #(
    .INIT ( 32'h5559666A ))
  \fb_less_2d_gpu_i/Msub_sprt_int_col_s6<3:0>_xor<2>11  (
    .I0(\fb_less_2d_gpu_i/Msub_sprt_int_col_s6<3:0>_lut<2> ),
    .I1(\fb_less_2d_gpu_i/Msub_sprt_int_col_s6<3:0>_lut<1> ),
    .I2(\fb_less_2d_gpu_i/Msub_sprt_int_col_s6<3:0>_lut<0> ),
    .I3(\vga_ctrl_i/pixel_x [0]),
    .I4(\vga_ctrl_i/pixel_x [1]),
    .O(\fb_less_2d_gpu_i/sprt_int_col_s6 [2])
  );
  LUT3 #(
    .INIT ( 8'h87 ))
  \fb_less_2d_gpu_i/Madd_sprt_addr_s9_lut<0>  (
    .I0(\fb_less_2d_gpu_i/reg_intersected_r9 [3]),
    .I1(\fb_less_2d_gpu_i/reg_intersected_r9 [0]),
    .I2(\fb_less_2d_gpu_i/sprt_tex_offset_r9 [2]),
    .O(\fb_less_2d_gpu_i/Madd_sprt_addr_s9_lut [0])
  );
  LUT3 #(
    .INIT ( 8'h87 ))
  \fb_less_2d_gpu_i/Madd_sprt_addr_s9_lut<1>  (
    .I0(\fb_less_2d_gpu_i/reg_intersected_r9 [3]),
    .I1(\fb_less_2d_gpu_i/reg_intersected_r9 [0]),
    .I2(\fb_less_2d_gpu_i/sprt_tex_offset_r9 [3]),
    .O(\fb_less_2d_gpu_i/Madd_sprt_addr_s9_lut [1])
  );
  LUT3 #(
    .INIT ( 8'h87 ))
  \fb_less_2d_gpu_i/Madd_sprt_addr_s9_lut<2>  (
    .I0(\fb_less_2d_gpu_i/reg_intersected_r9 [3]),
    .I1(\fb_less_2d_gpu_i/reg_intersected_r9 [0]),
    .I2(\fb_less_2d_gpu_i/sprt_tex_offset_r9 [4]),
    .O(\fb_less_2d_gpu_i/Madd_sprt_addr_s9_lut [2])
  );
  LUT3 #(
    .INIT ( 8'h87 ))
  \fb_less_2d_gpu_i/Madd_sprt_addr_s9_lut<3>  (
    .I0(\fb_less_2d_gpu_i/reg_intersected_r9 [3]),
    .I1(\fb_less_2d_gpu_i/reg_intersected_r9 [0]),
    .I2(\fb_less_2d_gpu_i/sprt_tex_offset_r9 [5]),
    .O(\fb_less_2d_gpu_i/Madd_sprt_addr_s9_lut [3])
  );
  LUT3 #(
    .INIT ( 8'h87 ))
  \fb_less_2d_gpu_i/Madd_sprt_addr_s9_lut<5>  (
    .I0(\fb_less_2d_gpu_i/reg_intersected_r9 [3]),
    .I1(\fb_less_2d_gpu_i/reg_intersected_r9 [0]),
    .I2(\fb_less_2d_gpu_i/sprt_tex_offset_r9 [7]),
    .O(\fb_less_2d_gpu_i/Madd_sprt_addr_s9_lut [5])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \fb_less_2d_gpu_i/mux2811  (
    .I0(\fb_less_2d_gpu_i/reg_intersected_r9 [3]),
    .I1(\fb_less_2d_gpu_i/reg_intersected_r9 [0]),
    .O(\fb_less_2d_gpu_i/n1239[9] )
  );
  LUT3 #(
    .INIT ( 8'hD5 ))
  \vga_ctrl_i/Mcount_phase_val1  (
    .I0(n_reset),
    .I1(\vga_ctrl_i/phase [0]),
    .I2(\vga_ctrl_i/phase [1]),
    .O(\vga_ctrl_i/Mcount_phase_val )
  );
  LUT4 #(
    .INIT ( 16'h9995 ))
  \fb_less_2d_gpu_i/Msub_sprt_int_col_s6<3:0>_xor<0>11  (
    .I0(\vga_ctrl_i/pixel_x [0]),
    .I1(\fb_less_2d_gpu_i/reg_intersected_r6 [0]),
    .I2(\fb_less_2d_gpu_i/reg_intersected_r6 [3]),
    .I3(\fb_less_2d_gpu_i/reg_intersected_r6 [2]),
    .O(\fb_less_2d_gpu_i/sprt_int_col_s6 [0])
  );
  LUT6 #(
    .INIT ( 64'h9999A699AAAA9566 ))
  \fb_less_2d_gpu_i/Msub_sprt_int_col_s6<3:0>_xor<1>11  (
    .I0(\vga_ctrl_i/pixel_x [1]),
    .I1(\fb_less_2d_gpu_i/reg_intersected_r6 [0]),
    .I2(\fb_less_2d_gpu_i/reg_intersected_r6 [1]),
    .I3(\fb_less_2d_gpu_i/reg_intersected_r6 [2]),
    .I4(\fb_less_2d_gpu_i/reg_intersected_r6 [3]),
    .I5(\vga_ctrl_i/pixel_x [0]),
    .O(\fb_less_2d_gpu_i/sprt_int_col_s6 [1])
  );
  LUT6 #(
    .INIT ( 64'hFFFFAAFAAADAAA80 ))
  \fb_less_2d_gpu_i/Msub_sprt_int_col_s6<3:0>_cy<1>11  (
    .I0(\fb_less_2d_gpu_i/reg_intersected_r6 [0]),
    .I1(\fb_less_2d_gpu_i/reg_intersected_r6 [1]),
    .I2(\fb_less_2d_gpu_i/reg_intersected_r6 [2]),
    .I3(\fb_less_2d_gpu_i/reg_intersected_r6 [3]),
    .I4(\vga_ctrl_i/pixel_x [0]),
    .I5(\vga_ctrl_i/pixel_x [1]),
    .O(\fb_less_2d_gpu_i/Msub_sprt_int_col_s6<3:0>_cy<1> )
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  \fb_less_2d_gpu_i/Mmux_GND_6_o_PWR_6_o_mux_155_OUT1_SW0  (
    .I0(\vga_ctrl_i/pixel_x [6]),
    .I1(\vga_ctrl_i/pixel_x [7]),
    .I2(\fb_less_2d_gpu_i/reg_intsect_s0<2>1_499 ),
    .I3(\fb_less_2d_gpu_i/reg_intsect_s0<3>2_149 ),
    .O(N18)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \fb_less_2d_gpu_i/reg_intersected_r1_1_rstpot  (
    .I0(\fb_less_2d_gpu_i/GND_6_o_PWR_6_o_mux_155_OUT [1]),
    .I1(\fb_less_2d_gpu_i/reg_intsect_s0<9>_0 ),
    .O(\fb_less_2d_gpu_i/reg_intersected_r1_1_rstpot_578 )
  );
  FD   \fb_less_2d_gpu_i/reg_intersected_r1_1  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/reg_intersected_r1_1_rstpot_578 ),
    .Q(\fb_less_2d_gpu_i/reg_intersected_r1 [1])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \fb_less_2d_gpu_i/reg_intersected_r1_0_rstpot  (
    .I0(\fb_less_2d_gpu_i/GND_6_o_PWR_6_o_mux_155_OUT<0>1 ),
    .I1(\fb_less_2d_gpu_i/reg_intsect_s0<9>_0 ),
    .O(\fb_less_2d_gpu_i/reg_intersected_r1_0_rstpot_579 )
  );
  FD   \fb_less_2d_gpu_i/reg_intersected_r1_0  (
    .C(clk_100MHz),
    .D(\fb_less_2d_gpu_i/reg_intersected_r1_0_rstpot_579 ),
    .Q(\fb_less_2d_gpu_i/reg_intersected_r1 [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \vga_ctrl_i/en_25MHz<1>1_1  (
    .I0(\vga_ctrl_i/phase [1]),
    .I1(\vga_ctrl_i/phase [0]),
    .O(\vga_ctrl_i/en_25MHz<1>1_580 )
  );
  FD   \vga_ctrl_i/pixel_x_9  (
    .C(clk_100MHz),
    .D(\vga_ctrl_i/pixel_x_9_rstpot_581 ),
    .Q(\vga_ctrl_i/pixel_x [9])
  );
  FD   \vga_ctrl_i/pixel_x_8  (
    .C(clk_100MHz),
    .D(\vga_ctrl_i/pixel_x_8_rstpot_582 ),
    .Q(\vga_ctrl_i/pixel_x [8])
  );
  FD   \vga_ctrl_i/pixel_x_6  (
    .C(clk_100MHz),
    .D(\vga_ctrl_i/pixel_x_6_rstpot_583 ),
    .Q(\vga_ctrl_i/pixel_x [6])
  );
  FD   \vga_ctrl_i/pixel_x_5  (
    .C(clk_100MHz),
    .D(\vga_ctrl_i/pixel_x_5_rstpot_584 ),
    .Q(\vga_ctrl_i/pixel_x [5])
  );
  FD   \vga_ctrl_i/pixel_x_7  (
    .C(clk_100MHz),
    .D(\vga_ctrl_i/pixel_x_7_rstpot_585 ),
    .Q(\vga_ctrl_i/pixel_x [7])
  );
  FD   \vga_ctrl_i/pixel_x_3  (
    .C(clk_100MHz),
    .D(\vga_ctrl_i/pixel_x_3_rstpot_586 ),
    .Q(\vga_ctrl_i/pixel_x [3])
  );
  FD   \vga_ctrl_i/pixel_x_2  (
    .C(clk_100MHz),
    .D(\vga_ctrl_i/pixel_x_2_rstpot_587 ),
    .Q(\vga_ctrl_i/pixel_x [2])
  );
  FD   \vga_ctrl_i/pixel_x_4  (
    .C(clk_100MHz),
    .D(\vga_ctrl_i/pixel_x_4_rstpot_588 ),
    .Q(\vga_ctrl_i/pixel_x [4])
  );
  FD   \vga_ctrl_i/pixel_x_0  (
    .C(clk_100MHz),
    .D(\vga_ctrl_i/pixel_x_0_rstpot_589 ),
    .Q(\vga_ctrl_i/pixel_x [0])
  );
  FD   \vga_ctrl_i/pixel_x_1  (
    .C(clk_100MHz),
    .D(\vga_ctrl_i/pixel_x_1_rstpot_590 ),
    .Q(\vga_ctrl_i/pixel_x [1])
  );
  LUT5 #(
    .INIT ( 32'h44044000 ))
  \vga_ctrl_i/pixel_x_9_rstpot  (
    .I0(\vga_ctrl_i/en_25MHz_pixel_x[9]_AND_4_o_132 ),
    .I1(n_reset),
    .I2(\vga_ctrl_i/en_25MHz ),
    .I3(\vga_ctrl_i/Result [9]),
    .I4(\vga_ctrl_i/pixel_x [9]),
    .O(\vga_ctrl_i/pixel_x_9_rstpot_581 )
  );
  LUT5 #(
    .INIT ( 32'h44044000 ))
  \vga_ctrl_i/pixel_x_8_rstpot  (
    .I0(\vga_ctrl_i/en_25MHz_pixel_x[9]_AND_4_o_132 ),
    .I1(n_reset),
    .I2(\vga_ctrl_i/en_25MHz ),
    .I3(\vga_ctrl_i/Result<8>1 ),
    .I4(\vga_ctrl_i/pixel_x [8]),
    .O(\vga_ctrl_i/pixel_x_8_rstpot_582 )
  );
  LUT5 #(
    .INIT ( 32'h44044000 ))
  \vga_ctrl_i/pixel_x_6_rstpot  (
    .I0(\vga_ctrl_i/en_25MHz_pixel_x[9]_AND_4_o_132 ),
    .I1(n_reset),
    .I2(\vga_ctrl_i/en_25MHz ),
    .I3(\vga_ctrl_i/Result<6>1 ),
    .I4(\vga_ctrl_i/pixel_x [6]),
    .O(\vga_ctrl_i/pixel_x_6_rstpot_583 )
  );
  LUT5 #(
    .INIT ( 32'h44044000 ))
  \vga_ctrl_i/pixel_x_5_rstpot  (
    .I0(\vga_ctrl_i/en_25MHz_pixel_x[9]_AND_4_o_132 ),
    .I1(n_reset),
    .I2(\vga_ctrl_i/en_25MHz ),
    .I3(\vga_ctrl_i/Result<5>1 ),
    .I4(\vga_ctrl_i/pixel_x [5]),
    .O(\vga_ctrl_i/pixel_x_5_rstpot_584 )
  );
  LUT5 #(
    .INIT ( 32'h44044000 ))
  \vga_ctrl_i/pixel_x_7_rstpot  (
    .I0(\vga_ctrl_i/en_25MHz_pixel_x[9]_AND_4_o_132 ),
    .I1(n_reset),
    .I2(\vga_ctrl_i/en_25MHz ),
    .I3(\vga_ctrl_i/Result<7>1 ),
    .I4(\vga_ctrl_i/pixel_x [7]),
    .O(\vga_ctrl_i/pixel_x_7_rstpot_585 )
  );
  LUT5 #(
    .INIT ( 32'h44044000 ))
  \vga_ctrl_i/pixel_x_3_rstpot  (
    .I0(\vga_ctrl_i/en_25MHz_pixel_x[9]_AND_4_o_132 ),
    .I1(n_reset),
    .I2(\vga_ctrl_i/en_25MHz ),
    .I3(\vga_ctrl_i/Result<3>1 ),
    .I4(\vga_ctrl_i/pixel_x [3]),
    .O(\vga_ctrl_i/pixel_x_3_rstpot_586 )
  );
  LUT5 #(
    .INIT ( 32'h44044000 ))
  \vga_ctrl_i/pixel_x_2_rstpot  (
    .I0(\vga_ctrl_i/en_25MHz_pixel_x[9]_AND_4_o_132 ),
    .I1(n_reset),
    .I2(\vga_ctrl_i/en_25MHz ),
    .I3(\vga_ctrl_i/Result<2>1 ),
    .I4(\vga_ctrl_i/pixel_x [2]),
    .O(\vga_ctrl_i/pixel_x_2_rstpot_587 )
  );
  LUT5 #(
    .INIT ( 32'h44044000 ))
  \vga_ctrl_i/pixel_x_4_rstpot  (
    .I0(\vga_ctrl_i/en_25MHz_pixel_x[9]_AND_4_o_132 ),
    .I1(n_reset),
    .I2(\vga_ctrl_i/en_25MHz ),
    .I3(\vga_ctrl_i/Result<4>1 ),
    .I4(\vga_ctrl_i/pixel_x [4]),
    .O(\vga_ctrl_i/pixel_x_4_rstpot_588 )
  );
  LUT5 #(
    .INIT ( 32'h44044000 ))
  \vga_ctrl_i/pixel_x_0_rstpot  (
    .I0(\vga_ctrl_i/en_25MHz_pixel_x[9]_AND_4_o_132 ),
    .I1(n_reset),
    .I2(\vga_ctrl_i/en_25MHz ),
    .I3(\vga_ctrl_i/Result<0>2 ),
    .I4(\vga_ctrl_i/pixel_x [0]),
    .O(\vga_ctrl_i/pixel_x_0_rstpot_589 )
  );
  LUT5 #(
    .INIT ( 32'h44044000 ))
  \vga_ctrl_i/pixel_x_1_rstpot  (
    .I0(\vga_ctrl_i/en_25MHz_pixel_x[9]_AND_4_o_132 ),
    .I1(n_reset),
    .I2(\vga_ctrl_i/en_25MHz ),
    .I3(\vga_ctrl_i/Result<1>2 ),
    .I4(\vga_ctrl_i/pixel_x [1]),
    .O(\vga_ctrl_i/pixel_x_1_rstpot_590 )
  );
  INV   \vga_ctrl_i/Mcount_pixel_x_lut<0>_INV_0  (
    .I(\vga_ctrl_i/pixel_x [0]),
    .O(\vga_ctrl_i/Mcount_pixel_x_lut [0])
  );
  INV   \vga_ctrl_i/Mcount_pixel_y_lut<0>_INV_0  (
    .I(\vga_ctrl_i/pixel_y [0]),
    .O(\vga_ctrl_i/Mcount_pixel_y_lut [0])
  );
  INV   \fb_less_2d_gpu_i/Madd_sprt_addr_s9_lut<4>_INV_0  (
    .I(\fb_less_2d_gpu_i/sprt_tex_offset_r9 [6]),
    .O(\fb_less_2d_gpu_i/Madd_sprt_addr_s9_lut [4])
  );
  INV   \fb_less_2d_gpu_i/Madd_map_addr_s0_lut<3>_INV_0  (
    .I(\vga_ctrl_i/pixel_x [7]),
    .O(\fb_less_2d_gpu_i/Madd_map_addr_s0_lut[3] )
  );
  INV   \fb_less_2d_gpu_i/Madd_map_addr_s0_lut<2>_INV_0  (
    .I(\vga_ctrl_i/pixel_x [6]),
    .O(\fb_less_2d_gpu_i/Madd_map_addr_s0_lut[2] )
  );
  INV   \fb_less_2d_gpu_i/Madd_map_addr_s0_lut<1>_INV_0  (
    .I(\vga_ctrl_i/pixel_x [5]),
    .O(\fb_less_2d_gpu_i/Madd_map_addr_s0_lut[1] )
  );
  INV   \fb_less_2d_gpu_i/Madd_map_addr_s0_lut<0>_INV_0  (
    .I(\vga_ctrl_i/pixel_x [4]),
    .O(\fb_less_2d_gpu_i/Madd_map_addr_s0_lut[0] )
  );
  INV   \clk_gen/in_rst1_INV_0  (
    .I(rst_in_IBUF_1),
    .O(\clk_gen/in_rst )
  );
  INV   \vga_ctrl_i/Mcount_phase_xor<0>11_INV_0  (
    .I(\vga_ctrl_i/phase [0]),
    .O(\vga_ctrl_i/Result [0])
  );
  INV   \vga_ctrl_i/in_reset_inv11_INV_0  (
    .I(n_reset),
    .O(\vga_ctrl_i/in_reset_inv1 )
  );
  RAMB16BWER #(
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0404000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0115554505155555555555551505050400000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000011511115555555551505151515150515 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .DATA_WIDTH_A ( 2 ),
    .DATA_WIDTH_B ( 2 ),
    .DOB_REG ( 1 ),
    .DOA_REG ( 0 ),
    .EN_RSTRAM_A ( "TRUE" ),
    .EN_RSTRAM_B ( "TRUE" ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_A ( 36'h000000000 ),
    .INIT_B ( 36'h000000000 ),
    .RST_PRIORITY_A ( "CE" ),
    .RST_PRIORITY_B ( "CE" ),
    .RSTTYPE ( "SYNC" ),
    .SRVAL_A ( 36'h000000000 ),
    .SRVAL_B ( 36'h000000000 ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .SIM_DEVICE ( "SPARTAN6" ),
    .INIT_FILE ( "NONE" ))
  \fb_less_2d_gpu_i/ram_i/Mram_mem16  (
    .REGCEA(bus_we),
    .CLKA(clk_100MHz),
    .ENB(pow_save_on_OBUF_78),
    .RSTB(bus_we),
    .CLKB(clk_100MHz),
    .REGCEB(pow_save_on_OBUF_78),
    .RSTA(bus_we),
    .ENA(pow_save_on_OBUF_78),
    .DIPA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIPA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIPA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIPA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIPA<0>_UNCONNECTED }),
    .WEA({bus_we, bus_we, bus_we, bus_we}),
    .DOA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOA<0>_UNCONNECTED }),
    .ADDRA({bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_ADDRA<0>_UNCONNECTED }),
    .ADDRB({\fb_less_2d_gpu_i/mem_addr_s [12], \fb_less_2d_gpu_i/mem_addr_s [11], \fb_less_2d_gpu_i/mem_addr_s [10], \fb_less_2d_gpu_i/mem_addr_s [9]
, \fb_less_2d_gpu_i/mem_addr_s [8], \fb_less_2d_gpu_i/mem_addr_s [7], \fb_less_2d_gpu_i/mem_addr_s [6], \fb_less_2d_gpu_i/mem_addr_s [5], 
\fb_less_2d_gpu_i/mem_addr_s [4], \fb_less_2d_gpu_i/mem_addr_s [3], \fb_less_2d_gpu_i/mem_addr_s [2], \fb_less_2d_gpu_i/mem_addr_s [1], 
\fb_less_2d_gpu_i/mem_addr_s [0], \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_ADDRB<0>_UNCONNECTED }),
    .DIB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIB<0>_UNCONNECTED }),
    .DOPA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOPA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOPA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOPA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOPA<0>_UNCONNECTED }),
    .DIPB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIPB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIPB<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIPB<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIPB<0>_UNCONNECTED }),
    .DOPB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOPB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOPB<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOPB<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOPB<0>_UNCONNECTED }),
    .DOB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DOB<2>_UNCONNECTED , 
\fb_less_2d_gpu_i/mem_data_s [31], \fb_less_2d_gpu_i/mem_data_s [30]}),
    .WEB({bus_we, bus_we, bus_we, bus_we}),
    .DIA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<2>_UNCONNECTED , bus_we, bus_we})
  );
  RAMB16BWER #(
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h00131F2EBFBFBFBFBFBFBFBFAA95140000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000100000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .DATA_WIDTH_A ( 2 ),
    .DATA_WIDTH_B ( 2 ),
    .DOB_REG ( 1 ),
    .DOA_REG ( 0 ),
    .EN_RSTRAM_A ( "TRUE" ),
    .EN_RSTRAM_B ( "TRUE" ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_A ( 36'h000000000 ),
    .INIT_B ( 36'h000000000 ),
    .RST_PRIORITY_A ( "CE" ),
    .RST_PRIORITY_B ( "CE" ),
    .RSTTYPE ( "SYNC" ),
    .SRVAL_A ( 36'h000000000 ),
    .SRVAL_B ( 36'h000000000 ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .SIM_DEVICE ( "SPARTAN6" ),
    .INIT_FILE ( "NONE" ))
  \fb_less_2d_gpu_i/ram_i/Mram_mem15  (
    .REGCEA(bus_we),
    .CLKA(clk_100MHz),
    .ENB(pow_save_on_OBUF_78),
    .RSTB(bus_we),
    .CLKB(clk_100MHz),
    .REGCEB(pow_save_on_OBUF_78),
    .RSTA(bus_we),
    .ENA(pow_save_on_OBUF_78),
    .DIPA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIPA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIPA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIPA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIPA<0>_UNCONNECTED }),
    .WEA({bus_we, bus_we, bus_we, bus_we}),
    .DOA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOA<0>_UNCONNECTED }),
    .ADDRA({bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_ADDRA<0>_UNCONNECTED }),
    .ADDRB({\fb_less_2d_gpu_i/mem_addr_s [12], \fb_less_2d_gpu_i/mem_addr_s [11], \fb_less_2d_gpu_i/mem_addr_s [10], \fb_less_2d_gpu_i/mem_addr_s [9]
, \fb_less_2d_gpu_i/mem_addr_s [8], \fb_less_2d_gpu_i/mem_addr_s [7], \fb_less_2d_gpu_i/mem_addr_s [6], \fb_less_2d_gpu_i/mem_addr_s [5], 
\fb_less_2d_gpu_i/mem_addr_s [4], \fb_less_2d_gpu_i/mem_addr_s [3], \fb_less_2d_gpu_i/mem_addr_s [2], \fb_less_2d_gpu_i/mem_addr_s [1], 
\fb_less_2d_gpu_i/mem_addr_s [0], \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_ADDRB<0>_UNCONNECTED }),
    .DIB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIB<0>_UNCONNECTED }),
    .DOPA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOPA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOPA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOPA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOPA<0>_UNCONNECTED }),
    .DIPB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIPB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIPB<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIPB<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIPB<0>_UNCONNECTED }),
    .DOPB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOPB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOPB<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOPB<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOPB<0>_UNCONNECTED }),
    .DOB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DOB<2>_UNCONNECTED , 
\fb_less_2d_gpu_i/mem_data_s [29], \fb_less_2d_gpu_i/mem_data_s [28]}),
    .WEB({bus_we, bus_we, bus_we, bus_we}),
    .DIA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<2>_UNCONNECTED , bus_we, bus_we})
  );
  RAMB16BWER #(
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h25133E2910D0D0D0D0D0D0D0E939132500000000000000000000000000000000 ),
    .INIT_03 ( 256'h022AAA8A0A2AAAAAAAAAAAAA2A0A0A0800000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000033F3223AFAFAFBFF3F0F3F3C3F3F0F2A ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .DATA_WIDTH_A ( 2 ),
    .DATA_WIDTH_B ( 2 ),
    .DOB_REG ( 1 ),
    .DOA_REG ( 0 ),
    .EN_RSTRAM_A ( "TRUE" ),
    .EN_RSTRAM_B ( "TRUE" ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_A ( 36'h000000000 ),
    .INIT_B ( 36'h000000000 ),
    .RST_PRIORITY_A ( "CE" ),
    .RST_PRIORITY_B ( "CE" ),
    .RSTTYPE ( "SYNC" ),
    .SRVAL_A ( 36'h000000000 ),
    .SRVAL_B ( 36'h000000000 ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .SIM_DEVICE ( "SPARTAN6" ),
    .INIT_FILE ( "NONE" ))
  \fb_less_2d_gpu_i/ram_i/Mram_mem14  (
    .REGCEA(bus_we),
    .CLKA(clk_100MHz),
    .ENB(pow_save_on_OBUF_78),
    .RSTB(bus_we),
    .CLKB(clk_100MHz),
    .REGCEB(pow_save_on_OBUF_78),
    .RSTA(bus_we),
    .ENA(pow_save_on_OBUF_78),
    .DIPA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIPA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIPA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIPA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIPA<0>_UNCONNECTED }),
    .WEA({bus_we, bus_we, bus_we, bus_we}),
    .DOA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOA<0>_UNCONNECTED }),
    .ADDRA({bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_ADDRA<0>_UNCONNECTED }),
    .ADDRB({\fb_less_2d_gpu_i/mem_addr_s [12], \fb_less_2d_gpu_i/mem_addr_s [11], \fb_less_2d_gpu_i/mem_addr_s [10], \fb_less_2d_gpu_i/mem_addr_s [9]
, \fb_less_2d_gpu_i/mem_addr_s [8], \fb_less_2d_gpu_i/mem_addr_s [7], \fb_less_2d_gpu_i/mem_addr_s [6], \fb_less_2d_gpu_i/mem_addr_s [5], 
\fb_less_2d_gpu_i/mem_addr_s [4], \fb_less_2d_gpu_i/mem_addr_s [3], \fb_less_2d_gpu_i/mem_addr_s [2], \fb_less_2d_gpu_i/mem_addr_s [1], 
\fb_less_2d_gpu_i/mem_addr_s [0], \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_ADDRB<0>_UNCONNECTED }),
    .DIB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIB<0>_UNCONNECTED }),
    .DOPA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOPA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOPA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOPA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOPA<0>_UNCONNECTED }),
    .DIPB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIPB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIPB<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIPB<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIPB<0>_UNCONNECTED }),
    .DOPB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOPB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOPB<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOPB<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOPB<0>_UNCONNECTED }),
    .DOB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DOB<2>_UNCONNECTED , 
\fb_less_2d_gpu_i/mem_data_s [27], \fb_less_2d_gpu_i/mem_data_s [26]}),
    .WEB({bus_we, bus_we, bus_we, bus_we}),
    .DIA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<2>_UNCONNECTED , bus_we, bus_we})
  );
  RAMB16BWER #(
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h4000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h380F32346DEDEDEDEDEDEDEDF07F013C08599A989191159595A58595959595AA ),
    .INIT_03 ( 256'h0119594A0A0A0002010501100000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h001555554015555540155555401555400000331F5F5F4C00000015041414043F ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000555555555555555555554000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0500000000000000000000000000555555555555050000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000015400000000050000000000000000000000000555555555555 ),
    .INIT_0D ( 256'h4000000000500000000000000000000000000015400000000050000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000154000000000500000000000000000000000000015 ),
    .INIT_0F ( 256'h0000001540000000005000000000000000000000000000154000000000500000 ),
    .INIT_10 ( 256'h0050000000000000000000000000001540000000005000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000015554000000550000000000000000000000000001540000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000500000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h4000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000004000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h4000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000001000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .DATA_WIDTH_A ( 2 ),
    .DATA_WIDTH_B ( 2 ),
    .DOB_REG ( 1 ),
    .DOA_REG ( 0 ),
    .EN_RSTRAM_A ( "TRUE" ),
    .EN_RSTRAM_B ( "TRUE" ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_A ( 36'h000000000 ),
    .INIT_B ( 36'h000000000 ),
    .RST_PRIORITY_A ( "CE" ),
    .RST_PRIORITY_B ( "CE" ),
    .RSTTYPE ( "SYNC" ),
    .SRVAL_A ( 36'h000000000 ),
    .SRVAL_B ( 36'h000000000 ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .SIM_DEVICE ( "SPARTAN6" ),
    .INIT_FILE ( "NONE" ))
  \fb_less_2d_gpu_i/ram_i/Mram_mem13  (
    .REGCEA(bus_we),
    .CLKA(clk_100MHz),
    .ENB(pow_save_on_OBUF_78),
    .RSTB(bus_we),
    .CLKB(clk_100MHz),
    .REGCEB(pow_save_on_OBUF_78),
    .RSTA(bus_we),
    .ENA(pow_save_on_OBUF_78),
    .DIPA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIPA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIPA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIPA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIPA<0>_UNCONNECTED }),
    .WEA({bus_we, bus_we, bus_we, bus_we}),
    .DOA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOA<0>_UNCONNECTED }),
    .ADDRA({bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_ADDRA<0>_UNCONNECTED }),
    .ADDRB({\fb_less_2d_gpu_i/mem_addr_s [12], \fb_less_2d_gpu_i/mem_addr_s [11], \fb_less_2d_gpu_i/mem_addr_s [10], \fb_less_2d_gpu_i/mem_addr_s [9]
, \fb_less_2d_gpu_i/mem_addr_s [8], \fb_less_2d_gpu_i/mem_addr_s [7], \fb_less_2d_gpu_i/mem_addr_s [6], \fb_less_2d_gpu_i/mem_addr_s [5], 
\fb_less_2d_gpu_i/mem_addr_s [4], \fb_less_2d_gpu_i/mem_addr_s [3], \fb_less_2d_gpu_i/mem_addr_s [2], \fb_less_2d_gpu_i/mem_addr_s [1], 
\fb_less_2d_gpu_i/mem_addr_s [0], \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_ADDRB<0>_UNCONNECTED }),
    .DIB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIB<0>_UNCONNECTED }),
    .DOPA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOPA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOPA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOPA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOPA<0>_UNCONNECTED }),
    .DIPB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIPB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIPB<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIPB<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIPB<0>_UNCONNECTED }),
    .DOPB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOPB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOPB<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOPB<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOPB<0>_UNCONNECTED }),
    .DOB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DOB<2>_UNCONNECTED , 
\fb_less_2d_gpu_i/mem_data_s [25], \fb_less_2d_gpu_i/mem_data_s [24]}),
    .WEB({bus_we, bus_we, bus_we, bus_we}),
    .DIA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<2>_UNCONNECTED , bus_we, bus_we})
  );
  RAMB16BWER #(
    .INIT_00 ( 256'h00000000000000000000000004364015008801801A0604019000025000A90078 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0505000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0545454545155555555555554505050500000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000011515515555555555545151555554515 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .DATA_WIDTH_A ( 2 ),
    .DATA_WIDTH_B ( 2 ),
    .DOB_REG ( 1 ),
    .DOA_REG ( 0 ),
    .EN_RSTRAM_A ( "TRUE" ),
    .EN_RSTRAM_B ( "TRUE" ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_A ( 36'h000000000 ),
    .INIT_B ( 36'h000000000 ),
    .RST_PRIORITY_A ( "CE" ),
    .RST_PRIORITY_B ( "CE" ),
    .RSTTYPE ( "SYNC" ),
    .SRVAL_A ( 36'h000000000 ),
    .SRVAL_B ( 36'h000000000 ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .SIM_DEVICE ( "SPARTAN6" ),
    .INIT_FILE ( "NONE" ))
  \fb_less_2d_gpu_i/ram_i/Mram_mem12  (
    .REGCEA(bus_we),
    .CLKA(clk_100MHz),
    .ENB(pow_save_on_OBUF_78),
    .RSTB(bus_we),
    .CLKB(clk_100MHz),
    .REGCEB(pow_save_on_OBUF_78),
    .RSTA(bus_we),
    .ENA(pow_save_on_OBUF_78),
    .DIPA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIPA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIPA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIPA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIPA<0>_UNCONNECTED }),
    .WEA({bus_we, bus_we, bus_we, bus_we}),
    .DOA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOA<0>_UNCONNECTED }),
    .ADDRA({bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_ADDRA<0>_UNCONNECTED }),
    .ADDRB({\fb_less_2d_gpu_i/mem_addr_s [12], \fb_less_2d_gpu_i/mem_addr_s [11], \fb_less_2d_gpu_i/mem_addr_s [10], \fb_less_2d_gpu_i/mem_addr_s [9]
, \fb_less_2d_gpu_i/mem_addr_s [8], \fb_less_2d_gpu_i/mem_addr_s [7], \fb_less_2d_gpu_i/mem_addr_s [6], \fb_less_2d_gpu_i/mem_addr_s [5], 
\fb_less_2d_gpu_i/mem_addr_s [4], \fb_less_2d_gpu_i/mem_addr_s [3], \fb_less_2d_gpu_i/mem_addr_s [2], \fb_less_2d_gpu_i/mem_addr_s [1], 
\fb_less_2d_gpu_i/mem_addr_s [0], \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_ADDRB<0>_UNCONNECTED }),
    .DIB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIB<0>_UNCONNECTED }),
    .DOPA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOPA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOPA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOPA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOPA<0>_UNCONNECTED }),
    .DIPB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIPB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIPB<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIPB<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIPB<0>_UNCONNECTED }),
    .DOPB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOPB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOPB<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOPB<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOPB<0>_UNCONNECTED }),
    .DOB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<2>_UNCONNECTED , rgb_s[23], rgb_s[22]}),
    .WEB({bus_we, bus_we, bus_we, bus_we}),
    .DIA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<2>_UNCONNECTED , bus_we, bus_we})
  );
  RAMB16BWER #(
    .INIT_00 ( 256'h000000000000000000000003F0343FEAFF22FF21F1FCF06B3BC0F8DF5F04FF30 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h00002C2BADADADADADADADADAAA5040000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .DATA_WIDTH_A ( 2 ),
    .DATA_WIDTH_B ( 2 ),
    .DOB_REG ( 1 ),
    .DOA_REG ( 0 ),
    .EN_RSTRAM_A ( "TRUE" ),
    .EN_RSTRAM_B ( "TRUE" ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_A ( 36'h000000000 ),
    .INIT_B ( 36'h000000000 ),
    .RST_PRIORITY_A ( "CE" ),
    .RST_PRIORITY_B ( "CE" ),
    .RSTTYPE ( "SYNC" ),
    .SRVAL_A ( 36'h000000000 ),
    .SRVAL_B ( 36'h000000000 ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .SIM_DEVICE ( "SPARTAN6" ),
    .INIT_FILE ( "NONE" ))
  \fb_less_2d_gpu_i/ram_i/Mram_mem11  (
    .REGCEA(bus_we),
    .CLKA(clk_100MHz),
    .ENB(pow_save_on_OBUF_78),
    .RSTB(bus_we),
    .CLKB(clk_100MHz),
    .REGCEB(pow_save_on_OBUF_78),
    .RSTA(bus_we),
    .ENA(pow_save_on_OBUF_78),
    .DIPA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIPA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIPA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIPA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIPA<0>_UNCONNECTED }),
    .WEA({bus_we, bus_we, bus_we, bus_we}),
    .DOA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOA<0>_UNCONNECTED }),
    .ADDRA({bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_ADDRA<0>_UNCONNECTED }),
    .ADDRB({\fb_less_2d_gpu_i/mem_addr_s [12], \fb_less_2d_gpu_i/mem_addr_s [11], \fb_less_2d_gpu_i/mem_addr_s [10], \fb_less_2d_gpu_i/mem_addr_s [9]
, \fb_less_2d_gpu_i/mem_addr_s [8], \fb_less_2d_gpu_i/mem_addr_s [7], \fb_less_2d_gpu_i/mem_addr_s [6], \fb_less_2d_gpu_i/mem_addr_s [5], 
\fb_less_2d_gpu_i/mem_addr_s [4], \fb_less_2d_gpu_i/mem_addr_s [3], \fb_less_2d_gpu_i/mem_addr_s [2], \fb_less_2d_gpu_i/mem_addr_s [1], 
\fb_less_2d_gpu_i/mem_addr_s [0], \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_ADDRB<0>_UNCONNECTED }),
    .DIB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIB<0>_UNCONNECTED }),
    .DOPA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOPA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOPA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOPA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOPA<0>_UNCONNECTED }),
    .DIPB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIPB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIPB<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIPB<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIPB<0>_UNCONNECTED }),
    .DOPB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOPB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOPB<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOPB<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOPB<0>_UNCONNECTED }),
    .DOB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<2>_UNCONNECTED , rgb_s[21], rgb_s[20]}),
    .WEB({bus_we, bus_we, bus_we, bus_we}),
    .DIA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<2>_UNCONNECTED , bus_we, bus_we})
  );
  RAMB16BWER #(
    .INIT_00 ( 256'h000000000000000000000000103A93A637F92677A00F70E28D59D3EDFAD66908 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h05040E3935F5F5F5F5F5F5F5F90E030900000000000000000000000000000000 ),
    .INIT_03 ( 256'h0A8A8A8A8A2AAAAAAAAAAAAA8A0A0A0A00000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000033F3EA3AFAFFFAFAFACE3F3FFFFFCF2A ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .DATA_WIDTH_A ( 2 ),
    .DATA_WIDTH_B ( 2 ),
    .DOB_REG ( 1 ),
    .DOA_REG ( 0 ),
    .EN_RSTRAM_A ( "TRUE" ),
    .EN_RSTRAM_B ( "TRUE" ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_A ( 36'h000000000 ),
    .INIT_B ( 36'h000000000 ),
    .RST_PRIORITY_A ( "CE" ),
    .RST_PRIORITY_B ( "CE" ),
    .RSTTYPE ( "SYNC" ),
    .SRVAL_A ( 36'h000000000 ),
    .SRVAL_B ( 36'h000000000 ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .SIM_DEVICE ( "SPARTAN6" ),
    .INIT_FILE ( "NONE" ))
  \fb_less_2d_gpu_i/ram_i/Mram_mem10  (
    .REGCEA(bus_we),
    .CLKA(clk_100MHz),
    .ENB(pow_save_on_OBUF_78),
    .RSTB(bus_we),
    .CLKB(clk_100MHz),
    .REGCEB(pow_save_on_OBUF_78),
    .RSTA(bus_we),
    .ENA(pow_save_on_OBUF_78),
    .DIPA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIPA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIPA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIPA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIPA<0>_UNCONNECTED }),
    .WEA({bus_we, bus_we, bus_we, bus_we}),
    .DOA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOA<0>_UNCONNECTED }),
    .ADDRA({bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_ADDRA<0>_UNCONNECTED }),
    .ADDRB({\fb_less_2d_gpu_i/mem_addr_s [12], \fb_less_2d_gpu_i/mem_addr_s [11], \fb_less_2d_gpu_i/mem_addr_s [10], \fb_less_2d_gpu_i/mem_addr_s [9]
, \fb_less_2d_gpu_i/mem_addr_s [8], \fb_less_2d_gpu_i/mem_addr_s [7], \fb_less_2d_gpu_i/mem_addr_s [6], \fb_less_2d_gpu_i/mem_addr_s [5], 
\fb_less_2d_gpu_i/mem_addr_s [4], \fb_less_2d_gpu_i/mem_addr_s [3], \fb_less_2d_gpu_i/mem_addr_s [2], \fb_less_2d_gpu_i/mem_addr_s [1], 
\fb_less_2d_gpu_i/mem_addr_s [0], \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_ADDRB<0>_UNCONNECTED }),
    .DIB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIB<0>_UNCONNECTED }),
    .DOPA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOPA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOPA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOPA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOPA<0>_UNCONNECTED }),
    .DIPB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIPB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIPB<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIPB<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIPB<0>_UNCONNECTED }),
    .DOPB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOPB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOPB<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOPB<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOPB<0>_UNCONNECTED }),
    .DOB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<2>_UNCONNECTED , rgb_s[19], rgb_s[18]}),
    .WEB({bus_we, bus_we, bus_we, bus_we}),
    .DIA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<2>_UNCONNECTED , bus_we, bus_we})
  );
  RAMB16BWER #(
    .INIT_00 ( 256'h00000000000000000000000000308A65476AF83320C814366301202C87B37880 ),
    .INIT_01 ( 256'h8000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0D00050783C3C3C3C3C3C3C3C580060100155654599911515161415151515162 ),
    .INIT_03 ( 256'h05494A4A4A0A000A0A0500000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0015555540155555401555554015554000003F1F5F554F0F0F0315011811003F ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .DATA_WIDTH_A ( 2 ),
    .DATA_WIDTH_B ( 2 ),
    .DOB_REG ( 1 ),
    .DOA_REG ( 0 ),
    .EN_RSTRAM_A ( "TRUE" ),
    .EN_RSTRAM_B ( "TRUE" ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_A ( 36'h000000000 ),
    .INIT_B ( 36'h000000000 ),
    .RST_PRIORITY_A ( "CE" ),
    .RST_PRIORITY_B ( "CE" ),
    .RSTTYPE ( "SYNC" ),
    .SRVAL_A ( 36'h000000000 ),
    .SRVAL_B ( 36'h000000000 ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .SIM_DEVICE ( "SPARTAN6" ),
    .INIT_FILE ( "NONE" ))
  \fb_less_2d_gpu_i/ram_i/Mram_mem9  (
    .REGCEA(bus_we),
    .CLKA(clk_100MHz),
    .ENB(pow_save_on_OBUF_78),
    .RSTB(bus_we),
    .CLKB(clk_100MHz),
    .REGCEB(pow_save_on_OBUF_78),
    .RSTA(bus_we),
    .ENA(pow_save_on_OBUF_78),
    .DIPA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIPA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIPA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIPA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIPA<0>_UNCONNECTED }),
    .WEA({bus_we, bus_we, bus_we, bus_we}),
    .DOA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOA<0>_UNCONNECTED }),
    .ADDRA({bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_ADDRA<0>_UNCONNECTED }),
    .ADDRB({\fb_less_2d_gpu_i/mem_addr_s [12], \fb_less_2d_gpu_i/mem_addr_s [11], \fb_less_2d_gpu_i/mem_addr_s [10], \fb_less_2d_gpu_i/mem_addr_s [9]
, \fb_less_2d_gpu_i/mem_addr_s [8], \fb_less_2d_gpu_i/mem_addr_s [7], \fb_less_2d_gpu_i/mem_addr_s [6], \fb_less_2d_gpu_i/mem_addr_s [5], 
\fb_less_2d_gpu_i/mem_addr_s [4], \fb_less_2d_gpu_i/mem_addr_s [3], \fb_less_2d_gpu_i/mem_addr_s [2], \fb_less_2d_gpu_i/mem_addr_s [1], 
\fb_less_2d_gpu_i/mem_addr_s [0], \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_ADDRB<0>_UNCONNECTED }),
    .DIB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIB<0>_UNCONNECTED }),
    .DOPA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOPA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOPA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOPA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOPA<0>_UNCONNECTED }),
    .DIPB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIPB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIPB<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIPB<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIPB<0>_UNCONNECTED }),
    .DOPB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOPB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOPB<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOPB<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOPB<0>_UNCONNECTED }),
    .DOB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<2>_UNCONNECTED , rgb_s[17], rgb_s[16]}),
    .WEB({bus_we, bus_we, bus_we, bus_we}),
    .DIA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<2>_UNCONNECTED , bus_we, bus_we})
  );
  RAMB16BWER #(
    .INIT_00 ( 256'h000000000000000000000002A936AAAAAA66AAA195AAA8696A85AAAA5A96AAB8 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0101000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h4445454545155555555555454545050100000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000014544555555555555545451555554555 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .DATA_WIDTH_A ( 2 ),
    .DATA_WIDTH_B ( 2 ),
    .DOB_REG ( 1 ),
    .DOA_REG ( 0 ),
    .EN_RSTRAM_A ( "TRUE" ),
    .EN_RSTRAM_B ( "TRUE" ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_A ( 36'h000000000 ),
    .INIT_B ( 36'h000000000 ),
    .RST_PRIORITY_A ( "CE" ),
    .RST_PRIORITY_B ( "CE" ),
    .RSTTYPE ( "SYNC" ),
    .SRVAL_A ( 36'h000000000 ),
    .SRVAL_B ( 36'h000000000 ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .SIM_DEVICE ( "SPARTAN6" ),
    .INIT_FILE ( "NONE" ))
  \fb_less_2d_gpu_i/ram_i/Mram_mem8  (
    .REGCEA(bus_we),
    .CLKA(clk_100MHz),
    .ENB(pow_save_on_OBUF_78),
    .RSTB(bus_we),
    .CLKB(clk_100MHz),
    .REGCEB(pow_save_on_OBUF_78),
    .RSTA(bus_we),
    .ENA(pow_save_on_OBUF_78),
    .DIPA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIPA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIPA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIPA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIPA<0>_UNCONNECTED }),
    .WEA({bus_we, bus_we, bus_we, bus_we}),
    .DOA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOA<0>_UNCONNECTED }),
    .ADDRA({bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_ADDRA<0>_UNCONNECTED }),
    .ADDRB({\fb_less_2d_gpu_i/mem_addr_s [12], \fb_less_2d_gpu_i/mem_addr_s [11], \fb_less_2d_gpu_i/mem_addr_s [10], \fb_less_2d_gpu_i/mem_addr_s [9]
, \fb_less_2d_gpu_i/mem_addr_s [8], \fb_less_2d_gpu_i/mem_addr_s [7], \fb_less_2d_gpu_i/mem_addr_s [6], \fb_less_2d_gpu_i/mem_addr_s [5], 
\fb_less_2d_gpu_i/mem_addr_s [4], \fb_less_2d_gpu_i/mem_addr_s [3], \fb_less_2d_gpu_i/mem_addr_s [2], \fb_less_2d_gpu_i/mem_addr_s [1], 
\fb_less_2d_gpu_i/mem_addr_s [0], \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_ADDRB<0>_UNCONNECTED }),
    .DIB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIB<0>_UNCONNECTED }),
    .DOPA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOPA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOPA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOPA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOPA<0>_UNCONNECTED }),
    .DIPB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIPB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIPB<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIPB<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIPB<0>_UNCONNECTED }),
    .DOPB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOPB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOPB<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOPB<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOPB<0>_UNCONNECTED }),
    .DOB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<2>_UNCONNECTED , rgb_s[15], rgb_s[14]}),
    .WEB({bus_we, bus_we, bus_we, bus_we}),
    .DIA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<2>_UNCONNECTED , bus_we, bus_we})
  );
  RAMB16BWER #(
    .INIT_00 ( 256'h0000000000000000000000015BF0554055DD941E7F50AB93C5709005A53D5570 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0004076B0A0A0A0A0A0A0A0A2A05440000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .DATA_WIDTH_A ( 2 ),
    .DATA_WIDTH_B ( 2 ),
    .DOB_REG ( 1 ),
    .DOA_REG ( 0 ),
    .EN_RSTRAM_A ( "TRUE" ),
    .EN_RSTRAM_B ( "TRUE" ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_A ( 36'h000000000 ),
    .INIT_B ( 36'h000000000 ),
    .RST_PRIORITY_A ( "CE" ),
    .RST_PRIORITY_B ( "CE" ),
    .RSTTYPE ( "SYNC" ),
    .SRVAL_A ( 36'h000000000 ),
    .SRVAL_B ( 36'h000000000 ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .SIM_DEVICE ( "SPARTAN6" ),
    .INIT_FILE ( "NONE" ))
  \fb_less_2d_gpu_i/ram_i/Mram_mem7  (
    .REGCEA(bus_we),
    .CLKA(clk_100MHz),
    .ENB(pow_save_on_OBUF_78),
    .RSTB(bus_we),
    .CLKB(clk_100MHz),
    .REGCEB(pow_save_on_OBUF_78),
    .RSTA(bus_we),
    .ENA(pow_save_on_OBUF_78),
    .DIPA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIPA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIPA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIPA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIPA<0>_UNCONNECTED }),
    .WEA({bus_we, bus_we, bus_we, bus_we}),
    .DOA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOA<0>_UNCONNECTED }),
    .ADDRA({bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_ADDRA<0>_UNCONNECTED }),
    .ADDRB({\fb_less_2d_gpu_i/mem_addr_s [12], \fb_less_2d_gpu_i/mem_addr_s [11], \fb_less_2d_gpu_i/mem_addr_s [10], \fb_less_2d_gpu_i/mem_addr_s [9]
, \fb_less_2d_gpu_i/mem_addr_s [8], \fb_less_2d_gpu_i/mem_addr_s [7], \fb_less_2d_gpu_i/mem_addr_s [6], \fb_less_2d_gpu_i/mem_addr_s [5], 
\fb_less_2d_gpu_i/mem_addr_s [4], \fb_less_2d_gpu_i/mem_addr_s [3], \fb_less_2d_gpu_i/mem_addr_s [2], \fb_less_2d_gpu_i/mem_addr_s [1], 
\fb_less_2d_gpu_i/mem_addr_s [0], \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_ADDRB<0>_UNCONNECTED }),
    .DIB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIB<0>_UNCONNECTED }),
    .DOPA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOPA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOPA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOPA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOPA<0>_UNCONNECTED }),
    .DIPB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIPB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIPB<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIPB<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIPB<0>_UNCONNECTED }),
    .DOPB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOPB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOPB<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOPB<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOPB<0>_UNCONNECTED }),
    .DOB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<2>_UNCONNECTED , rgb_s[13], rgb_s[12]}),
    .WEB({bus_we, bus_we, bus_we, bus_we}),
    .DIA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<2>_UNCONNECTED , bus_we, bus_we})
  );
  RAMB16BWER #(
    .INIT_00 ( 256'h00000000000000000000000237B2296AA9EF192F87A0098CDA341835EE7CBDF0 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h09000E784B4B4B4B4B4B4B4B794E430900000000000000000000000000000000 ),
    .INIT_03 ( 256'h888A8A8A8A2AAAAAAAAAAA8A8A8A0A0200000000000000000000000000000000 ),
    .INIT_04 ( 256'h000000000000000000000000000000003CFCCABABAFAFEFFFFCFCF3FFFFFCFEA ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .DATA_WIDTH_A ( 2 ),
    .DATA_WIDTH_B ( 2 ),
    .DOB_REG ( 1 ),
    .DOA_REG ( 0 ),
    .EN_RSTRAM_A ( "TRUE" ),
    .EN_RSTRAM_B ( "TRUE" ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_A ( 36'h000000000 ),
    .INIT_B ( 36'h000000000 ),
    .RST_PRIORITY_A ( "CE" ),
    .RST_PRIORITY_B ( "CE" ),
    .RSTTYPE ( "SYNC" ),
    .SRVAL_A ( 36'h000000000 ),
    .SRVAL_B ( 36'h000000000 ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .SIM_DEVICE ( "SPARTAN6" ),
    .INIT_FILE ( "NONE" ))
  \fb_less_2d_gpu_i/ram_i/Mram_mem6  (
    .REGCEA(bus_we),
    .CLKA(clk_100MHz),
    .ENB(pow_save_on_OBUF_78),
    .RSTB(bus_we),
    .CLKB(clk_100MHz),
    .REGCEB(pow_save_on_OBUF_78),
    .RSTA(bus_we),
    .ENA(pow_save_on_OBUF_78),
    .DIPA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIPA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIPA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIPA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIPA<0>_UNCONNECTED }),
    .WEA({bus_we, bus_we, bus_we, bus_we}),
    .DOA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOA<0>_UNCONNECTED }),
    .ADDRA({bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_ADDRA<0>_UNCONNECTED }),
    .ADDRB({\fb_less_2d_gpu_i/mem_addr_s [12], \fb_less_2d_gpu_i/mem_addr_s [11], \fb_less_2d_gpu_i/mem_addr_s [10], \fb_less_2d_gpu_i/mem_addr_s [9]
, \fb_less_2d_gpu_i/mem_addr_s [8], \fb_less_2d_gpu_i/mem_addr_s [7], \fb_less_2d_gpu_i/mem_addr_s [6], \fb_less_2d_gpu_i/mem_addr_s [5], 
\fb_less_2d_gpu_i/mem_addr_s [4], \fb_less_2d_gpu_i/mem_addr_s [3], \fb_less_2d_gpu_i/mem_addr_s [2], \fb_less_2d_gpu_i/mem_addr_s [1], 
\fb_less_2d_gpu_i/mem_addr_s [0], \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_ADDRB<0>_UNCONNECTED }),
    .DIB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIB<0>_UNCONNECTED }),
    .DOPA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOPA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOPA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOPA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOPA<0>_UNCONNECTED }),
    .DIPB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIPB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIPB<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIPB<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIPB<0>_UNCONNECTED }),
    .DOPB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOPB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOPB<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOPB<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOPB<0>_UNCONNECTED }),
    .DOB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<2>_UNCONNECTED , rgb_s[11], rgb_s[10]}),
    .WEB({bus_we, bus_we, bus_we, bus_we}),
    .DIA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<2>_UNCONNECTED , bus_we, bus_we})
  );
  RAMB16BWER #(
    .INIT_00 ( 256'h000000000000000000000002903055D861ADB1691D6CC110AD783D9906915640 ),
    .INIT_01 ( 256'h8000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0509075A9B9B9B9B9B9B9B9B9A854B0600055654951559595969455959595966 ),
    .INIT_03 ( 256'hC4464A4A4A0A0008040504004000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h4015555540155555401555554015554000000FDFDF5F03000000050111D9453F ),
    .INIT_05 ( 256'h5555555555555555555555555555555555555555555555555555555555555555 ),
    .INIT_06 ( 256'h5555555555555555555555555555555555555555555555555555555555555555 ),
    .INIT_07 ( 256'h5555555555555555555555555555555555555555555555555555555555555555 ),
    .INIT_08 ( 256'h5555555555555555555555555555555555555555555555555555555555555555 ),
    .INIT_09 ( 256'h5555555555555555555555555555555555555555555555555555555555555555 ),
    .INIT_0A ( 256'h5555AAAAAAAAAAAAAAAAAAAA9555555555555555555555555555555555555555 ),
    .INIT_0B ( 256'h5A55555555555555555555555555AAAAAAAAAAAA5A5555555555555555555555 ),
    .INIT_0C ( 256'h555555555555556A9555555555A5555555555555555555555555AAAAAAAAAAAA ),
    .INIT_0D ( 256'h9555555555A5555555555555555555555555556A9555555555A5555555555555 ),
    .INIT_0E ( 256'h55555555555555555555556A9555555555A5555555555555555555555555556A ),
    .INIT_0F ( 256'h5555556A9555555555A5555555555555555555555555556A9555555555A55555 ),
    .INIT_10 ( 256'h55A5555555555555555555555555556A9555555555A555555555555555555555 ),
    .INIT_11 ( 256'h555555555555556AAA9555555AA5555555555555555555555555556A95555555 ),
    .INIT_12 ( 256'h5555555555555555555555555555555555555555555555555A55555555555555 ),
    .INIT_13 ( 256'h1555555555555555555555555555555555555555555555555555555555555555 ),
    .INIT_14 ( 256'h5555000000000000000000001555555555555555555500000000000000000000 ),
    .INIT_15 ( 256'h5555555555555555555555555555555555555555555555555555555555555555 ),
    .INIT_16 ( 256'h5555555555555555555555555555555555555555555555555555555555555555 ),
    .INIT_17 ( 256'h5555555555555555555555555555555555555555555555555555555555555555 ),
    .INIT_18 ( 256'h9555555555555555555555555555555555555555555555555555555555555555 ),
    .INIT_19 ( 256'h5555555555555555555555555555555555555555555559555555555555555555 ),
    .INIT_1A ( 256'h5555555555555555555555555555555555555555555555555555555555555555 ),
    .INIT_1B ( 256'h9555555555555555555555555555555555555555555555555555555555555555 ),
    .INIT_1C ( 256'h5555555555555555555555555555555555555555555555555555555555555555 ),
    .INIT_1D ( 256'h5555555555555555555556555555555555555555555555555555555555555555 ),
    .INIT_1E ( 256'h5555555555555555555555555555555555555555555555555555555555555555 ),
    .INIT_1F ( 256'h5555555555555555555555555555555555555555555555555555555555555555 ),
    .INIT_20 ( 256'h5555555555555555555555555555555555555555555555555555555555555555 ),
    .INIT_21 ( 256'h5555555555555555555555555555555555555555555555555555555555555555 ),
    .INIT_22 ( 256'h5555555555555555555555555555555555555555555555555555555555555555 ),
    .INIT_23 ( 256'h5555555555555555555555555555555555555555555555555555555555555555 ),
    .INIT_24 ( 256'h5555555555555555555555555555555555555555555555555555555555555555 ),
    .INIT_25 ( 256'h5555555555555555555555555555555555555555555555555555555555555555 ),
    .INIT_26 ( 256'h5555555555555555555555555555555555555555555555555555555555555555 ),
    .INIT_27 ( 256'h5555555555555555555555555555555555555555555555555555555555555555 ),
    .INIT_28 ( 256'h5555555555555555555555555555555555555555555555555555555555555555 ),
    .INIT_29 ( 256'h5555555555555555555555555555555555555555555555555555555555555555 ),
    .INIT_2A ( 256'h0000000000000000000000000000000015555555555555555555555555555555 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .DATA_WIDTH_A ( 2 ),
    .DATA_WIDTH_B ( 2 ),
    .DOB_REG ( 1 ),
    .DOA_REG ( 0 ),
    .EN_RSTRAM_A ( "TRUE" ),
    .EN_RSTRAM_B ( "TRUE" ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_A ( 36'h000000000 ),
    .INIT_B ( 36'h000000000 ),
    .RST_PRIORITY_A ( "CE" ),
    .RST_PRIORITY_B ( "CE" ),
    .RSTTYPE ( "SYNC" ),
    .SRVAL_A ( 36'h000000000 ),
    .SRVAL_B ( 36'h000000000 ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .SIM_DEVICE ( "SPARTAN6" ),
    .INIT_FILE ( "NONE" ))
  \fb_less_2d_gpu_i/ram_i/Mram_mem5  (
    .REGCEA(bus_we),
    .CLKA(clk_100MHz),
    .ENB(pow_save_on_OBUF_78),
    .RSTB(bus_we),
    .CLKB(clk_100MHz),
    .REGCEB(pow_save_on_OBUF_78),
    .RSTA(bus_we),
    .ENA(pow_save_on_OBUF_78),
    .DIPA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIPA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIPA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIPA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIPA<0>_UNCONNECTED }),
    .WEA({bus_we, bus_we, bus_we, bus_we}),
    .DOA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOA<0>_UNCONNECTED }),
    .ADDRA({bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_ADDRA<0>_UNCONNECTED }),
    .ADDRB({\fb_less_2d_gpu_i/mem_addr_s [12], \fb_less_2d_gpu_i/mem_addr_s [11], \fb_less_2d_gpu_i/mem_addr_s [10], \fb_less_2d_gpu_i/mem_addr_s [9]
, \fb_less_2d_gpu_i/mem_addr_s [8], \fb_less_2d_gpu_i/mem_addr_s [7], \fb_less_2d_gpu_i/mem_addr_s [6], \fb_less_2d_gpu_i/mem_addr_s [5], 
\fb_less_2d_gpu_i/mem_addr_s [4], \fb_less_2d_gpu_i/mem_addr_s [3], \fb_less_2d_gpu_i/mem_addr_s [2], \fb_less_2d_gpu_i/mem_addr_s [1], 
\fb_less_2d_gpu_i/mem_addr_s [0], \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_ADDRB<0>_UNCONNECTED }),
    .DIB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIB<0>_UNCONNECTED }),
    .DOPA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOPA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOPA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOPA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOPA<0>_UNCONNECTED }),
    .DIPB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIPB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIPB<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIPB<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIPB<0>_UNCONNECTED }),
    .DOPB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOPB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOPB<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOPB<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOPB<0>_UNCONNECTED }),
    .DOB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<2>_UNCONNECTED , rgb_s[9], rgb_s[8]}),
    .WEB({bus_we, bus_we, bus_we, bus_we}),
    .DIA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<2>_UNCONNECTED , bus_we, bus_we})
  );
  RAMB16BWER #(
    .INIT_00 ( 256'h000000000000000000000003FEC0FFD5FF33FC3BC0F0FEFC1FFFFC2FFF03FFE0 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0101000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h4445454545455555554545454545410100000000000000000000000000000000 ),
    .INIT_04 ( 256'h4000000000000000000000000000000014444455555555454541450555454545 ),
    .INIT_05 ( 256'h5555555555555555555555555555555555555555555555555555555555555555 ),
    .INIT_06 ( 256'h5555555555555555555555555555555555555555555555555555555555555555 ),
    .INIT_07 ( 256'h5555555555555555555555555555555555555555555555555555555555555555 ),
    .INIT_08 ( 256'h5555555555555555555555555555555555555555555555555555555555555555 ),
    .INIT_09 ( 256'h5555555555555555555555555555555555555555555555555555555555555555 ),
    .INIT_0A ( 256'h5555000000000000000000001555555555555555555555555555555555555555 ),
    .INIT_0B ( 256'h5055555555555555555555555555000000000000505555555555555555555555 ),
    .INIT_0C ( 256'h5555555555555540155555555505555555555555555555555555000000000000 ),
    .INIT_0D ( 256'h1555555555055555555555555555555555555540155555555505555555555555 ),
    .INIT_0E ( 256'h5555555555555555555555401555555555055555555555555555555555555540 ),
    .INIT_0F ( 256'h5555554015555555550555555555555555555555555555401555555555055555 ),
    .INIT_10 ( 256'h5505555555555555555555555555554015555555550555555555555555555555 ),
    .INIT_11 ( 256'h5555555555555540001555555005555555555555555555555555554015555555 ),
    .INIT_12 ( 256'h5555555555555555555555555555555555555555555555555055555555555555 ),
    .INIT_13 ( 256'hD555555555555555555555555555555555555555555555555555555555555555 ),
    .INIT_14 ( 256'h5555FFFFFFFFFFFFFFFFFFFFD5555555555555555555FFFFFFFFFFFFFFFFFFFF ),
    .INIT_15 ( 256'h5555555555555555555555555555555555555555555555555555555555555555 ),
    .INIT_16 ( 256'h5555555555555555555555555555555555555555555555555555555555555555 ),
    .INIT_17 ( 256'h5555555555555555555555555555555555555555555555555555555555555555 ),
    .INIT_18 ( 256'h1555555555555555555555555555555555555555555555555555555555555555 ),
    .INIT_19 ( 256'h5555555555555555555555555555555555555555555551555555555555555555 ),
    .INIT_1A ( 256'h5555555555555555555555555555555555555555555555555555555555555555 ),
    .INIT_1B ( 256'h1555555555555555555555555555555555555555555555555555555555555555 ),
    .INIT_1C ( 256'h5555555555555555555555555555555555555555555555555555555555555555 ),
    .INIT_1D ( 256'h5555555555555555555554555555555555555555555555555555555555555555 ),
    .INIT_1E ( 256'h5555555555555555555555555555555555555555555555555555555555555555 ),
    .INIT_1F ( 256'h5555555555555555555555555555555555555555555555555555555555555555 ),
    .INIT_20 ( 256'h5555555555555555555555555555555555555555555555555555555555555555 ),
    .INIT_21 ( 256'h5555555555555555555555555555555555555555555555555555555555555555 ),
    .INIT_22 ( 256'h5555555555555555555555555555555555555555555555555555555555555555 ),
    .INIT_23 ( 256'h5555555555555555555555555555555555555555555555555555555555555555 ),
    .INIT_24 ( 256'h5555555555555555555555555555555555555555555555555555555555555555 ),
    .INIT_25 ( 256'h5555555555555555555555555555555555555555555555555555555555555555 ),
    .INIT_26 ( 256'h5555555555555555555555555555555555555555555555555555555555555555 ),
    .INIT_27 ( 256'h5555555555555555555555555555555555555555555555555555555555555555 ),
    .INIT_28 ( 256'h5555555555555555555555555555555555555555555555555555555555555555 ),
    .INIT_29 ( 256'h5555555555555555555555555555555555555555555555555555555555555555 ),
    .INIT_2A ( 256'h0000000000000000000000000000000015555555555555555555555555555555 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .DATA_WIDTH_A ( 2 ),
    .DATA_WIDTH_B ( 2 ),
    .DOB_REG ( 1 ),
    .DOA_REG ( 0 ),
    .EN_RSTRAM_A ( "TRUE" ),
    .EN_RSTRAM_B ( "TRUE" ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_A ( 36'h000000000 ),
    .INIT_B ( 36'h000000000 ),
    .RST_PRIORITY_A ( "CE" ),
    .RST_PRIORITY_B ( "CE" ),
    .RSTTYPE ( "SYNC" ),
    .SRVAL_A ( 36'h000000000 ),
    .SRVAL_B ( 36'h000000000 ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .SIM_DEVICE ( "SPARTAN6" ),
    .INIT_FILE ( "NONE" ))
  \fb_less_2d_gpu_i/ram_i/Mram_mem4  (
    .REGCEA(bus_we),
    .CLKA(clk_100MHz),
    .ENB(pow_save_on_OBUF_78),
    .RSTB(bus_we),
    .CLKB(clk_100MHz),
    .REGCEB(pow_save_on_OBUF_78),
    .RSTA(bus_we),
    .ENA(pow_save_on_OBUF_78),
    .DIPA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIPA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIPA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIPA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIPA<0>_UNCONNECTED }),
    .WEA({bus_we, bus_we, bus_we, bus_we}),
    .DOA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOA<0>_UNCONNECTED }),
    .ADDRA({bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_ADDRA<0>_UNCONNECTED }),
    .ADDRB({\fb_less_2d_gpu_i/mem_addr_s [12], \fb_less_2d_gpu_i/mem_addr_s [11], \fb_less_2d_gpu_i/mem_addr_s [10], \fb_less_2d_gpu_i/mem_addr_s [9]
, \fb_less_2d_gpu_i/mem_addr_s [8], \fb_less_2d_gpu_i/mem_addr_s [7], \fb_less_2d_gpu_i/mem_addr_s [6], \fb_less_2d_gpu_i/mem_addr_s [5], 
\fb_less_2d_gpu_i/mem_addr_s [4], \fb_less_2d_gpu_i/mem_addr_s [3], \fb_less_2d_gpu_i/mem_addr_s [2], \fb_less_2d_gpu_i/mem_addr_s [1], 
\fb_less_2d_gpu_i/mem_addr_s [0], \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_ADDRB<0>_UNCONNECTED }),
    .DIB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIB<0>_UNCONNECTED }),
    .DOPA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOPA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOPA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOPA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOPA<0>_UNCONNECTED }),
    .DIPB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIPB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIPB<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIPB<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIPB<0>_UNCONNECTED }),
    .DOPB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOPB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOPB<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOPB<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOPB<0>_UNCONNECTED }),
    .DOB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<2>_UNCONNECTED , rgb_s[7], rgb_s[6]}),
    .WEB({bus_we, bus_we, bus_we, bus_we}),
    .DIA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<2>_UNCONNECTED , bus_we, bus_we})
  );
  RAMB16BWER #(
    .INIT_00 ( 256'h000000000000000000000002AEC03ED9FE33EF3DC0F4FF7C0FC0FC4B5F00FFD0 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0004C46B8FCFCFCFCFCFCFCFEA85440000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'hC000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_06 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_07 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_08 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_09 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_0A ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_0B ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_0C ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_0D ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_0E ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_0F ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_10 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_11 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_12 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_13 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_14 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_15 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_16 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_17 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_18 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_19 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_1A ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_1B ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_1C ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_1D ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_1E ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_1F ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_20 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_21 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_22 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_23 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_24 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_25 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_26 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_27 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_28 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_29 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_2A ( 256'h000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .DATA_WIDTH_A ( 2 ),
    .DATA_WIDTH_B ( 2 ),
    .DOB_REG ( 1 ),
    .DOA_REG ( 0 ),
    .EN_RSTRAM_A ( "TRUE" ),
    .EN_RSTRAM_B ( "TRUE" ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_A ( 36'h000000000 ),
    .INIT_B ( 36'h000000000 ),
    .RST_PRIORITY_A ( "CE" ),
    .RST_PRIORITY_B ( "CE" ),
    .RSTTYPE ( "SYNC" ),
    .SRVAL_A ( 36'h000000000 ),
    .SRVAL_B ( 36'h000000000 ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .SIM_DEVICE ( "SPARTAN6" ),
    .INIT_FILE ( "NONE" ))
  \fb_less_2d_gpu_i/ram_i/Mram_mem3  (
    .REGCEA(bus_we),
    .CLKA(clk_100MHz),
    .ENB(pow_save_on_OBUF_78),
    .RSTB(bus_we),
    .CLKB(clk_100MHz),
    .REGCEB(pow_save_on_OBUF_78),
    .RSTA(bus_we),
    .ENA(pow_save_on_OBUF_78),
    .DIPA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIPA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIPA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIPA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIPA<0>_UNCONNECTED }),
    .WEA({bus_we, bus_we, bus_we, bus_we}),
    .DOA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOA<0>_UNCONNECTED }),
    .ADDRA({bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_ADDRA<0>_UNCONNECTED }),
    .ADDRB({\fb_less_2d_gpu_i/mem_addr_s [12], \fb_less_2d_gpu_i/mem_addr_s [11], \fb_less_2d_gpu_i/mem_addr_s [10], \fb_less_2d_gpu_i/mem_addr_s [9]
, \fb_less_2d_gpu_i/mem_addr_s [8], \fb_less_2d_gpu_i/mem_addr_s [7], \fb_less_2d_gpu_i/mem_addr_s [6], \fb_less_2d_gpu_i/mem_addr_s [5], 
\fb_less_2d_gpu_i/mem_addr_s [4], \fb_less_2d_gpu_i/mem_addr_s [3], \fb_less_2d_gpu_i/mem_addr_s [2], \fb_less_2d_gpu_i/mem_addr_s [1], 
\fb_less_2d_gpu_i/mem_addr_s [0], \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_ADDRB<0>_UNCONNECTED }),
    .DIB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIB<0>_UNCONNECTED }),
    .DOPA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOPA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOPA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOPA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOPA<0>_UNCONNECTED }),
    .DIPB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIPB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIPB<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIPB<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIPB<0>_UNCONNECTED }),
    .DOPB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOPB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOPB<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOPB<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOPB<0>_UNCONNECTED }),
    .DOB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<2>_UNCONNECTED , rgb_s[5], rgb_s[4]}),
    .WEB({bus_we, bus_we, bus_we, bus_we}),
    .DIA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<2>_UNCONNECTED , bus_we, bus_we})
  );
  RAMB16BWER #(
    .INIT_00 ( 256'h0000000000000000000000023F803E7FFD33FCBFC0FCFEA80F44F8F7EFC0FFB0 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0900CE7A0404040404040404390E43C900000000000000000000000000000000 ),
    .INIT_03 ( 256'h888A8A8A8A8AAAAAAA8A8A8A8A8A820200000000000000000000000000000000 ),
    .INIT_04 ( 256'hC00000000000000000000000000000003CCCC8BABEFEFECFCFC3CF0FFFCFCFCA ),
    .INIT_05 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_06 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_07 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_08 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_09 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_0A ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_0B ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_0C ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_0D ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_0E ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_0F ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_10 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_11 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_12 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_13 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_14 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_15 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_16 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_17 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_18 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_19 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_1A ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_1B ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_1C ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_1D ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_1E ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_1F ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_20 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_21 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_22 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_23 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_24 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_25 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_26 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_27 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_28 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_29 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_2A ( 256'h000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .DATA_WIDTH_A ( 2 ),
    .DATA_WIDTH_B ( 2 ),
    .DOB_REG ( 1 ),
    .DOA_REG ( 0 ),
    .EN_RSTRAM_A ( "TRUE" ),
    .EN_RSTRAM_B ( "TRUE" ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_A ( 36'h000000000 ),
    .INIT_B ( 36'h000000000 ),
    .RST_PRIORITY_A ( "CE" ),
    .RST_PRIORITY_B ( "CE" ),
    .RSTTYPE ( "SYNC" ),
    .SRVAL_A ( 36'h000000000 ),
    .SRVAL_B ( 36'h000000000 ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .SIM_DEVICE ( "SPARTAN6" ),
    .INIT_FILE ( "NONE" ))
  \fb_less_2d_gpu_i/ram_i/Mram_mem2  (
    .REGCEA(bus_we),
    .CLKA(clk_100MHz),
    .ENB(pow_save_on_OBUF_78),
    .RSTB(bus_we),
    .CLKB(clk_100MHz),
    .REGCEB(pow_save_on_OBUF_78),
    .RSTA(bus_we),
    .ENA(pow_save_on_OBUF_78),
    .DIPA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIPA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIPA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIPA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIPA<0>_UNCONNECTED }),
    .WEA({bus_we, bus_we, bus_we, bus_we}),
    .DOA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOA<0>_UNCONNECTED }),
    .ADDRA({bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_ADDRA<0>_UNCONNECTED }),
    .ADDRB({\fb_less_2d_gpu_i/mem_addr_s [12], \fb_less_2d_gpu_i/mem_addr_s [11], \fb_less_2d_gpu_i/mem_addr_s [10], \fb_less_2d_gpu_i/mem_addr_s [9]
, \fb_less_2d_gpu_i/mem_addr_s [8], \fb_less_2d_gpu_i/mem_addr_s [7], \fb_less_2d_gpu_i/mem_addr_s [6], \fb_less_2d_gpu_i/mem_addr_s [5], 
\fb_less_2d_gpu_i/mem_addr_s [4], \fb_less_2d_gpu_i/mem_addr_s [3], \fb_less_2d_gpu_i/mem_addr_s [2], \fb_less_2d_gpu_i/mem_addr_s [1], 
\fb_less_2d_gpu_i/mem_addr_s [0], \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_ADDRB<0>_UNCONNECTED }),
    .DIB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIB<0>_UNCONNECTED }),
    .DOPA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOPA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOPA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOPA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOPA<0>_UNCONNECTED }),
    .DIPB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIPB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIPB<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIPB<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIPB<0>_UNCONNECTED }),
    .DOPB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOPB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOPB<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOPB<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOPB<0>_UNCONNECTED }),
    .DOB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<2>_UNCONNECTED , rgb_s[3], rgb_s[2]}),
    .WEB({bus_we, bus_we, bus_we, bus_we}),
    .DIA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<2>_UNCONNECTED , bus_we, bus_we})
  );
  RAMB16BWER #(
    .INIT_00 ( 256'h0000000000000000000000023C003CE3CC33FD7A00F0FCBC0FD0CCABBC80FCC0 ),
    .INIT_01 ( 256'h8000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h09CE89A8D6161616161616162BCA8E0AD104444485054545454951414545455A ),
    .INIT_03 ( 256'hC446464A8A820008888988844000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'hC011111100044444401111110004444000000CDFD75303000000050115C5450F ),
    .INIT_05 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_06 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_07 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_08 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_09 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_0A ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_0B ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_0C ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_0D ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_0E ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_0F ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_10 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_11 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_12 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_13 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_14 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_15 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_16 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_17 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_18 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_19 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_1A ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_1B ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_1C ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_1D ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_1E ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_1F ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_20 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_21 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_22 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_23 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_24 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_25 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_26 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_27 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_28 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_29 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_2A ( 256'h000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .DATA_WIDTH_A ( 2 ),
    .DATA_WIDTH_B ( 2 ),
    .DOB_REG ( 1 ),
    .DOA_REG ( 0 ),
    .EN_RSTRAM_A ( "TRUE" ),
    .EN_RSTRAM_B ( "TRUE" ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_A ( 36'h000000000 ),
    .INIT_B ( 36'h000000000 ),
    .RST_PRIORITY_A ( "CE" ),
    .RST_PRIORITY_B ( "CE" ),
    .RSTTYPE ( "SYNC" ),
    .SRVAL_A ( 36'h000000000 ),
    .SRVAL_B ( 36'h000000000 ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .SIM_DEVICE ( "SPARTAN6" ),
    .INIT_FILE ( "NONE" ))
  \fb_less_2d_gpu_i/ram_i/Mram_mem1  (
    .REGCEA(bus_we),
    .CLKA(clk_100MHz),
    .ENB(pow_save_on_OBUF_78),
    .RSTB(bus_we),
    .CLKB(clk_100MHz),
    .REGCEB(pow_save_on_OBUF_78),
    .RSTA(bus_we),
    .ENA(pow_save_on_OBUF_78),
    .DIPA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIPA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIPA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIPA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIPA<0>_UNCONNECTED }),
    .WEA({bus_we, bus_we, bus_we, bus_we}),
    .DOA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOA<0>_UNCONNECTED }),
    .ADDRA({bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, bus_we, 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_ADDRA<0>_UNCONNECTED }),
    .ADDRB({\fb_less_2d_gpu_i/mem_addr_s [12], \fb_less_2d_gpu_i/mem_addr_s [11], \fb_less_2d_gpu_i/mem_addr_s [10], \fb_less_2d_gpu_i/mem_addr_s [9]
, \fb_less_2d_gpu_i/mem_addr_s [8], \fb_less_2d_gpu_i/mem_addr_s [7], \fb_less_2d_gpu_i/mem_addr_s [6], \fb_less_2d_gpu_i/mem_addr_s [5], 
\fb_less_2d_gpu_i/mem_addr_s [4], \fb_less_2d_gpu_i/mem_addr_s [3], \fb_less_2d_gpu_i/mem_addr_s [2], \fb_less_2d_gpu_i/mem_addr_s [1], 
\fb_less_2d_gpu_i/mem_addr_s [0], \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_ADDRB<0>_UNCONNECTED }),
    .DIB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIB<0>_UNCONNECTED }),
    .DOPA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOPA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOPA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOPA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOPA<0>_UNCONNECTED }),
    .DIPB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIPB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIPB<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIPB<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIPB<0>_UNCONNECTED }),
    .DOPB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOPB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOPB<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOPB<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOPB<0>_UNCONNECTED }),
    .DOB({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<2>_UNCONNECTED , rgb_s[1], rgb_s[0]}),
    .WEB({bus_we, bus_we, bus_we, bus_we}),
    .DIA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<31>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<30>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<29>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<28>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<27>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<26>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<25>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<24>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<23>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<22>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<21>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<20>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<19>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<18>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<17>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<16>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<15>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<14>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<13>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<12>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<11>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<10>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<9>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<8>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<7>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<6>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<5>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<4>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<2>_UNCONNECTED , bus_we, bus_we})
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_img_z_coor_r13_7  (
    .A0(bus_we),
    .A1(bus_we),
    .A2(bus_we),
    .A3(pow_save_on_OBUF_78),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(\fb_less_2d_gpu_i/mem_data_s [31]),
    .Q(\fb_less_2d_gpu_i/Mshreg_img_z_coor_r13_7_591 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_img_z_coor_r13_7_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/img_z_coor_r13_7  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_img_z_coor_r13_7_591 ),
    .Q(\fb_less_2d_gpu_i/img_z_coor_r13 [7])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_img_z_coor_r13_6  (
    .A0(bus_we),
    .A1(bus_we),
    .A2(bus_we),
    .A3(pow_save_on_OBUF_78),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(\fb_less_2d_gpu_i/mem_data_s [30]),
    .Q(\fb_less_2d_gpu_i/Mshreg_img_z_coor_r13_6_592 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_img_z_coor_r13_6_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/img_z_coor_r13_6  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_img_z_coor_r13_6_592 ),
    .Q(\fb_less_2d_gpu_i/img_z_coor_r13 [6])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_img_z_coor_r13_5  (
    .A0(bus_we),
    .A1(bus_we),
    .A2(bus_we),
    .A3(pow_save_on_OBUF_78),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(\fb_less_2d_gpu_i/mem_data_s [29]),
    .Q(\fb_less_2d_gpu_i/Mshreg_img_z_coor_r13_5_593 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_img_z_coor_r13_5_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/img_z_coor_r13_5  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_img_z_coor_r13_5_593 ),
    .Q(\fb_less_2d_gpu_i/img_z_coor_r13 [5])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_img_z_coor_r13_4  (
    .A0(bus_we),
    .A1(bus_we),
    .A2(bus_we),
    .A3(pow_save_on_OBUF_78),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(\fb_less_2d_gpu_i/mem_data_s [28]),
    .Q(\fb_less_2d_gpu_i/Mshreg_img_z_coor_r13_4_594 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_img_z_coor_r13_4_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/img_z_coor_r13_4  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_img_z_coor_r13_4_594 ),
    .Q(\fb_less_2d_gpu_i/img_z_coor_r13 [4])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_img_z_coor_r13_3  (
    .A0(bus_we),
    .A1(bus_we),
    .A2(bus_we),
    .A3(pow_save_on_OBUF_78),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(\fb_less_2d_gpu_i/mem_data_s [27]),
    .Q(\fb_less_2d_gpu_i/Mshreg_img_z_coor_r13_3_595 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_img_z_coor_r13_3_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/img_z_coor_r13_3  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_img_z_coor_r13_3_595 ),
    .Q(\fb_less_2d_gpu_i/img_z_coor_r13 [3])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_img_z_coor_r13_2  (
    .A0(bus_we),
    .A1(bus_we),
    .A2(bus_we),
    .A3(pow_save_on_OBUF_78),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(\fb_less_2d_gpu_i/mem_data_s [26]),
    .Q(\fb_less_2d_gpu_i/Mshreg_img_z_coor_r13_2_596 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_img_z_coor_r13_2_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/img_z_coor_r13_2  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_img_z_coor_r13_2_596 ),
    .Q(\fb_less_2d_gpu_i/img_z_coor_r13 [2])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_img_z_coor_r13_1  (
    .A0(bus_we),
    .A1(bus_we),
    .A2(bus_we),
    .A3(pow_save_on_OBUF_78),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(\fb_less_2d_gpu_i/mem_data_s [25]),
    .Q(\fb_less_2d_gpu_i/Mshreg_img_z_coor_r13_1_597 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_img_z_coor_r13_1_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/img_z_coor_r13_1  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_img_z_coor_r13_1_597 ),
    .Q(\fb_less_2d_gpu_i/img_z_coor_r13 [1])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_img_z_coor_r13_0  (
    .A0(bus_we),
    .A1(bus_we),
    .A2(bus_we),
    .A3(pow_save_on_OBUF_78),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(\fb_less_2d_gpu_i/mem_data_s [24]),
    .Q(\fb_less_2d_gpu_i/Mshreg_img_z_coor_r13_0_598 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_img_z_coor_r13_0_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/img_z_coor_r13_0  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_img_z_coor_r13_0_598 ),
    .Q(\fb_less_2d_gpu_i/img_z_coor_r13 [0])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_palette_addr_r16_5  (
    .A0(bus_we),
    .A1(bus_we),
    .A2(bus_we),
    .A3(bus_we),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(\fb_less_2d_gpu_i/palette_idx_r14 [5]),
    .Q(\fb_less_2d_gpu_i/Mshreg_palette_addr_r16_5_599 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_palette_addr_r16_5_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/palette_addr_r16_5  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_palette_addr_r16_5_599 ),
    .Q(\fb_less_2d_gpu_i/palette_addr_r16 [5])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_palette_addr_r16_7  (
    .A0(bus_we),
    .A1(bus_we),
    .A2(bus_we),
    .A3(bus_we),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(\fb_less_2d_gpu_i/palette_idx_r14 [7]),
    .Q(\fb_less_2d_gpu_i/Mshreg_palette_addr_r16_7_600 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_palette_addr_r16_7_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/palette_addr_r16_7  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_palette_addr_r16_7_600 ),
    .Q(\fb_less_2d_gpu_i/palette_addr_r16 [7])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_palette_addr_r16_6  (
    .A0(bus_we),
    .A1(bus_we),
    .A2(bus_we),
    .A3(bus_we),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(\fb_less_2d_gpu_i/palette_idx_r14 [6]),
    .Q(\fb_less_2d_gpu_i/Mshreg_palette_addr_r16_6_601 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_palette_addr_r16_6_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/palette_addr_r16_6  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_palette_addr_r16_6_601 ),
    .Q(\fb_less_2d_gpu_i/palette_addr_r16 [6])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_palette_addr_r16_4  (
    .A0(bus_we),
    .A1(bus_we),
    .A2(bus_we),
    .A3(bus_we),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(\fb_less_2d_gpu_i/palette_idx_r14 [4]),
    .Q(\fb_less_2d_gpu_i/Mshreg_palette_addr_r16_4_602 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_palette_addr_r16_4_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/palette_addr_r16_4  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_palette_addr_r16_4_602 ),
    .Q(\fb_less_2d_gpu_i/palette_addr_r16 [4])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_palette_addr_r16_3  (
    .A0(bus_we),
    .A1(bus_we),
    .A2(bus_we),
    .A3(bus_we),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(\fb_less_2d_gpu_i/palette_idx_r14 [3]),
    .Q(\fb_less_2d_gpu_i/Mshreg_palette_addr_r16_3_603 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_palette_addr_r16_3_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/palette_addr_r16_3  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_palette_addr_r16_3_603 ),
    .Q(\fb_less_2d_gpu_i/palette_addr_r16 [3])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_palette_addr_r16_2  (
    .A0(bus_we),
    .A1(bus_we),
    .A2(bus_we),
    .A3(bus_we),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(\fb_less_2d_gpu_i/palette_idx_r14 [2]),
    .Q(\fb_less_2d_gpu_i/Mshreg_palette_addr_r16_2_604 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_palette_addr_r16_2_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/palette_addr_r16_2  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_palette_addr_r16_2_604 ),
    .Q(\fb_less_2d_gpu_i/palette_addr_r16 [2])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_palette_addr_r16_1  (
    .A0(bus_we),
    .A1(bus_we),
    .A2(bus_we),
    .A3(bus_we),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(\fb_less_2d_gpu_i/palette_idx_r14 [1]),
    .Q(\fb_less_2d_gpu_i/Mshreg_palette_addr_r16_1_605 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_palette_addr_r16_1_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/palette_addr_r16_1  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_palette_addr_r16_1_605 ),
    .Q(\fb_less_2d_gpu_i/palette_addr_r16 [1])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_palette_addr_r16_0  (
    .A0(bus_we),
    .A1(bus_we),
    .A2(bus_we),
    .A3(bus_we),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(\fb_less_2d_gpu_i/palette_idx_r14 [0]),
    .Q(\fb_less_2d_gpu_i/Mshreg_palette_addr_r16_0_606 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_palette_addr_r16_0_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/palette_addr_r16_0  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_palette_addr_r16_0_606 ),
    .Q(\fb_less_2d_gpu_i/palette_addr_r16 [0])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_img_color_idx_r13_7  (
    .A0(pow_save_on_OBUF_78),
    .A1(bus_we),
    .A2(bus_we),
    .A3(bus_we),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(\fb_less_2d_gpu_i/img_color_idx_r10 [7]),
    .Q(\fb_less_2d_gpu_i/Mshreg_img_color_idx_r13_7_607 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_img_color_idx_r13_7_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/img_color_idx_r13_7  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_img_color_idx_r13_7_607 ),
    .Q(\fb_less_2d_gpu_i/img_color_idx_r13 [7])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_img_color_idx_r13_6  (
    .A0(pow_save_on_OBUF_78),
    .A1(bus_we),
    .A2(bus_we),
    .A3(bus_we),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(\fb_less_2d_gpu_i/img_color_idx_r10 [6]),
    .Q(\fb_less_2d_gpu_i/Mshreg_img_color_idx_r13_6_608 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_img_color_idx_r13_6_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/img_color_idx_r13_6  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_img_color_idx_r13_6_608 ),
    .Q(\fb_less_2d_gpu_i/img_color_idx_r13 [6])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_img_color_idx_r13_5  (
    .A0(pow_save_on_OBUF_78),
    .A1(bus_we),
    .A2(bus_we),
    .A3(bus_we),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(\fb_less_2d_gpu_i/img_color_idx_r10 [5]),
    .Q(\fb_less_2d_gpu_i/Mshreg_img_color_idx_r13_5_609 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_img_color_idx_r13_5_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/img_color_idx_r13_5  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_img_color_idx_r13_5_609 ),
    .Q(\fb_less_2d_gpu_i/img_color_idx_r13 [5])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_img_color_idx_r13_2  (
    .A0(pow_save_on_OBUF_78),
    .A1(bus_we),
    .A2(bus_we),
    .A3(bus_we),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(\fb_less_2d_gpu_i/img_color_idx_r10 [2]),
    .Q(\fb_less_2d_gpu_i/Mshreg_img_color_idx_r13_2_610 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_img_color_idx_r13_2_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/img_color_idx_r13_2  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_img_color_idx_r13_2_610 ),
    .Q(\fb_less_2d_gpu_i/img_color_idx_r13 [2])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_img_color_idx_r13_4  (
    .A0(pow_save_on_OBUF_78),
    .A1(bus_we),
    .A2(bus_we),
    .A3(bus_we),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(\fb_less_2d_gpu_i/img_color_idx_r10 [4]),
    .Q(\fb_less_2d_gpu_i/Mshreg_img_color_idx_r13_4_611 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_img_color_idx_r13_4_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/img_color_idx_r13_4  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_img_color_idx_r13_4_611 ),
    .Q(\fb_less_2d_gpu_i/img_color_idx_r13 [4])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_img_color_idx_r13_3  (
    .A0(pow_save_on_OBUF_78),
    .A1(bus_we),
    .A2(bus_we),
    .A3(bus_we),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(\fb_less_2d_gpu_i/img_color_idx_r10 [3]),
    .Q(\fb_less_2d_gpu_i/Mshreg_img_color_idx_r13_3_612 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_img_color_idx_r13_3_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/img_color_idx_r13_3  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_img_color_idx_r13_3_612 ),
    .Q(\fb_less_2d_gpu_i/img_color_idx_r13 [3])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_img_color_idx_r13_1  (
    .A0(pow_save_on_OBUF_78),
    .A1(bus_we),
    .A2(bus_we),
    .A3(bus_we),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(\fb_less_2d_gpu_i/img_color_idx_r10 [1]),
    .Q(\fb_less_2d_gpu_i/Mshreg_img_color_idx_r13_1_613 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_img_color_idx_r13_1_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/img_color_idx_r13_1  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_img_color_idx_r13_1_613 ),
    .Q(\fb_less_2d_gpu_i/img_color_idx_r13 [1])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_img_color_idx_r13_0  (
    .A0(pow_save_on_OBUF_78),
    .A1(bus_we),
    .A2(bus_we),
    .A3(bus_we),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(\fb_less_2d_gpu_i/img_color_idx_r10 [0]),
    .Q(\fb_less_2d_gpu_i/Mshreg_img_color_idx_r13_0_614 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_img_color_idx_r13_0_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/img_color_idx_r13_0  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_img_color_idx_r13_0_614 ),
    .Q(\fb_less_2d_gpu_i/img_color_idx_r13 [0])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_reg_intersected_r6_3  (
    .A0(pow_save_on_OBUF_78),
    .A1(pow_save_on_OBUF_78),
    .A2(bus_we),
    .A3(bus_we),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(\fb_less_2d_gpu_i/reg_intersected_r1 [3]),
    .Q(\fb_less_2d_gpu_i/Mshreg_reg_intersected_r6_3_615 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_reg_intersected_r6_3_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/reg_intersected_r6_3  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_reg_intersected_r6_3_615 ),
    .Q(\fb_less_2d_gpu_i/reg_intersected_r6 [3])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_reg_intersected_r6_2  (
    .A0(pow_save_on_OBUF_78),
    .A1(pow_save_on_OBUF_78),
    .A2(bus_we),
    .A3(bus_we),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(\fb_less_2d_gpu_i/reg_intersected_r1 [2]),
    .Q(\fb_less_2d_gpu_i/Mshreg_reg_intersected_r6_2_616 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_reg_intersected_r6_2_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/reg_intersected_r6_2  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_reg_intersected_r6_2_616 ),
    .Q(\fb_less_2d_gpu_i/reg_intersected_r6 [2])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_reg_intersected_r6_1  (
    .A0(pow_save_on_OBUF_78),
    .A1(pow_save_on_OBUF_78),
    .A2(bus_we),
    .A3(bus_we),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(\fb_less_2d_gpu_i/reg_intersected_r1 [1]),
    .Q(\fb_less_2d_gpu_i/Mshreg_reg_intersected_r6_1_617 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_reg_intersected_r6_1_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/reg_intersected_r6_1  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_reg_intersected_r6_1_617 ),
    .Q(\fb_less_2d_gpu_i/reg_intersected_r6 [1])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_reg_intersected_r6_0  (
    .A0(pow_save_on_OBUF_78),
    .A1(pow_save_on_OBUF_78),
    .A2(bus_we),
    .A3(bus_we),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(\fb_less_2d_gpu_i/reg_intersected_r1 [0]),
    .Q(\fb_less_2d_gpu_i/Mshreg_reg_intersected_r6_0_618 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_reg_intersected_r6_0_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/reg_intersected_r6_0  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_reg_intersected_r6_0_618 ),
    .Q(\fb_less_2d_gpu_i/reg_intersected_r6 [0])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_img_tex_pix_sel_r9_1  (
    .A0(bus_we),
    .A1(pow_save_on_OBUF_78),
    .A2(bus_we),
    .A3(bus_we),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(\fb_less_2d_gpu_i/img_tex_col_r5 [1]),
    .Q(\fb_less_2d_gpu_i/Mshreg_img_tex_pix_sel_r9_1_619 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_img_tex_pix_sel_r9_1_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/img_tex_pix_sel_r9_1  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_img_tex_pix_sel_r9_1_619 ),
    .Q(\fb_less_2d_gpu_i/img_tex_pix_sel_r9 [1])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_img_tex_pix_sel_r9_0  (
    .A0(bus_we),
    .A1(pow_save_on_OBUF_78),
    .A2(bus_we),
    .A3(bus_we),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(\fb_less_2d_gpu_i/img_tex_col_r5 [0]),
    .Q(\fb_less_2d_gpu_i/Mshreg_img_tex_pix_sel_r9_0_620 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_img_tex_pix_sel_r9_0_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/img_tex_pix_sel_r9_0  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_img_tex_pix_sel_r9_0_620 ),
    .Q(\fb_less_2d_gpu_i/img_tex_pix_sel_r9 [0])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_sprt_tex_offset_r12_1  (
    .A0(pow_save_on_OBUF_78),
    .A1(pow_save_on_OBUF_78),
    .A2(bus_we),
    .A3(bus_we),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(\fb_less_2d_gpu_i/sprt_int_col_r7 [1]),
    .Q(\fb_less_2d_gpu_i/Mshreg_sprt_tex_offset_r12_1_621 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_sprt_tex_offset_r12_1_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/sprt_tex_offset_r12_1  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_sprt_tex_offset_r12_1_621 ),
    .Q(\fb_less_2d_gpu_i/sprt_tex_offset_r12 [1])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_sprt_tex_offset_r12_0  (
    .A0(pow_save_on_OBUF_78),
    .A1(pow_save_on_OBUF_78),
    .A2(bus_we),
    .A3(bus_we),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(\fb_less_2d_gpu_i/sprt_int_col_r7 [0]),
    .Q(\fb_less_2d_gpu_i/Mshreg_sprt_tex_offset_r12_0_622 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_sprt_tex_offset_r12_0_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/sprt_tex_offset_r12_0  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_sprt_tex_offset_r12_0_622 ),
    .Q(\fb_less_2d_gpu_i/sprt_tex_offset_r12 [0])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_sprt_tex_offset_r9_7  (
    .A0(bus_we),
    .A1(bus_we),
    .A2(bus_we),
    .A3(bus_we),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(\fb_less_2d_gpu_i/img_row_r4 [3]),
    .Q(\fb_less_2d_gpu_i/Mshreg_sprt_tex_offset_r9_7_623 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_sprt_tex_offset_r9_7_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/sprt_tex_offset_r9_7  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_sprt_tex_offset_r9_7_623 ),
    .Q(\fb_less_2d_gpu_i/sprt_tex_offset_r9 [7])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_sprt_tex_offset_r9_6  (
    .A0(bus_we),
    .A1(bus_we),
    .A2(bus_we),
    .A3(bus_we),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(\fb_less_2d_gpu_i/img_row_r4 [2]),
    .Q(\fb_less_2d_gpu_i/Mshreg_sprt_tex_offset_r9_6_624 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_sprt_tex_offset_r9_6_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/sprt_tex_offset_r9_6  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_sprt_tex_offset_r9_6_624 ),
    .Q(\fb_less_2d_gpu_i/sprt_tex_offset_r9 [6])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_sprt_tex_offset_r9_3  (
    .A0(bus_we),
    .A1(bus_we),
    .A2(bus_we),
    .A3(bus_we),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(\fb_less_2d_gpu_i/sprt_int_col_r7 [3]),
    .Q(\fb_less_2d_gpu_i/Mshreg_sprt_tex_offset_r9_3_625 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_sprt_tex_offset_r9_3_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/sprt_tex_offset_r9_3  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_sprt_tex_offset_r9_3_625 ),
    .Q(\fb_less_2d_gpu_i/sprt_tex_offset_r9 [3])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_sprt_tex_offset_r9_5  (
    .A0(bus_we),
    .A1(bus_we),
    .A2(bus_we),
    .A3(bus_we),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(\fb_less_2d_gpu_i/img_row_r4 [1]),
    .Q(\fb_less_2d_gpu_i/Mshreg_sprt_tex_offset_r9_5_626 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_sprt_tex_offset_r9_5_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/sprt_tex_offset_r9_5  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_sprt_tex_offset_r9_5_626 ),
    .Q(\fb_less_2d_gpu_i/sprt_tex_offset_r9 [5])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_sprt_tex_offset_r9_4  (
    .A0(bus_we),
    .A1(bus_we),
    .A2(bus_we),
    .A3(bus_we),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(\fb_less_2d_gpu_i/img_row_r4 [0]),
    .Q(\fb_less_2d_gpu_i/Mshreg_sprt_tex_offset_r9_4_627 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_sprt_tex_offset_r9_4_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/sprt_tex_offset_r9_4  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_sprt_tex_offset_r9_4_627 ),
    .Q(\fb_less_2d_gpu_i/sprt_tex_offset_r9 [4])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_sprt_tex_offset_r9_2  (
    .A0(bus_we),
    .A1(bus_we),
    .A2(bus_we),
    .A3(bus_we),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(\fb_less_2d_gpu_i/sprt_int_col_r7 [2]),
    .Q(\fb_less_2d_gpu_i/Mshreg_sprt_tex_offset_r9_2_628 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_sprt_tex_offset_r9_2_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/sprt_tex_offset_r9_2  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_sprt_tex_offset_r9_2_628 ),
    .Q(\fb_less_2d_gpu_i/sprt_tex_offset_r9 [2])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_img_addr_r6_12  (
    .A0(pow_save_on_OBUF_78),
    .A1(bus_we),
    .A2(bus_we),
    .A3(bus_we),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(rgb_s[12]),
    .Q(\fb_less_2d_gpu_i/Mshreg_img_addr_r6_12_629 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_img_addr_r6_12_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/img_addr_r6_12  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_img_addr_r6_12_629 ),
    .Q(\fb_less_2d_gpu_i/img_addr_r6 [12])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_img_addr_r6_11  (
    .A0(pow_save_on_OBUF_78),
    .A1(bus_we),
    .A2(bus_we),
    .A3(bus_we),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(rgb_s[11]),
    .Q(\fb_less_2d_gpu_i/Mshreg_img_addr_r6_11_630 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_img_addr_r6_11_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/img_addr_r6_11  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_img_addr_r6_11_630 ),
    .Q(\fb_less_2d_gpu_i/img_addr_r6 [11])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_img_addr_r6_10  (
    .A0(pow_save_on_OBUF_78),
    .A1(bus_we),
    .A2(bus_we),
    .A3(bus_we),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(rgb_s[10]),
    .Q(\fb_less_2d_gpu_i/Mshreg_img_addr_r6_10_631 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_img_addr_r6_10_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/img_addr_r6_10  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_img_addr_r6_10_631 ),
    .Q(\fb_less_2d_gpu_i/img_addr_r6 [10])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_img_addr_r6_7  (
    .A0(pow_save_on_OBUF_78),
    .A1(bus_we),
    .A2(bus_we),
    .A3(bus_we),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(rgb_s[7]),
    .Q(\fb_less_2d_gpu_i/Mshreg_img_addr_r6_7_632 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_img_addr_r6_7_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/img_addr_r6_7  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_img_addr_r6_7_632 ),
    .Q(\fb_less_2d_gpu_i/img_addr_r6 [7])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_img_addr_r6_9  (
    .A0(pow_save_on_OBUF_78),
    .A1(bus_we),
    .A2(bus_we),
    .A3(bus_we),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(rgb_s[9]),
    .Q(\fb_less_2d_gpu_i/Mshreg_img_addr_r6_9_633 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_img_addr_r6_9_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/img_addr_r6_9  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_img_addr_r6_9_633 ),
    .Q(\fb_less_2d_gpu_i/img_addr_r6 [9])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_img_addr_r6_8  (
    .A0(pow_save_on_OBUF_78),
    .A1(bus_we),
    .A2(bus_we),
    .A3(bus_we),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(rgb_s[8]),
    .Q(\fb_less_2d_gpu_i/Mshreg_img_addr_r6_8_634 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_img_addr_r6_8_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/img_addr_r6_8  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_img_addr_r6_8_634 ),
    .Q(\fb_less_2d_gpu_i/img_addr_r6 [8])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_img_addr_r6_6  (
    .A0(pow_save_on_OBUF_78),
    .A1(bus_we),
    .A2(bus_we),
    .A3(bus_we),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(rgb_s[6]),
    .Q(\fb_less_2d_gpu_i/Mshreg_img_addr_r6_6_635 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_img_addr_r6_6_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/img_addr_r6_6  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_img_addr_r6_6_635 ),
    .Q(\fb_less_2d_gpu_i/img_addr_r6 [6])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_img_addr_r6_5  (
    .A0(pow_save_on_OBUF_78),
    .A1(bus_we),
    .A2(bus_we),
    .A3(bus_we),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(rgb_s[5]),
    .Q(\fb_less_2d_gpu_i/Mshreg_img_addr_r6_5_636 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_img_addr_r6_5_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/img_addr_r6_5  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_img_addr_r6_5_636 ),
    .Q(\fb_less_2d_gpu_i/img_addr_r6 [5])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_img_addr_r6_4  (
    .A0(pow_save_on_OBUF_78),
    .A1(bus_we),
    .A2(bus_we),
    .A3(bus_we),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(rgb_s[4]),
    .Q(\fb_less_2d_gpu_i/Mshreg_img_addr_r6_4_637 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_img_addr_r6_4_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/img_addr_r6_4  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_img_addr_r6_4_637 ),
    .Q(\fb_less_2d_gpu_i/img_addr_r6 [4])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_img_addr_r6_3  (
    .A0(pow_save_on_OBUF_78),
    .A1(bus_we),
    .A2(bus_we),
    .A3(bus_we),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(rgb_s[3]),
    .Q(\fb_less_2d_gpu_i/Mshreg_img_addr_r6_3_638 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_img_addr_r6_3_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/img_addr_r6_3  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_img_addr_r6_3_638 ),
    .Q(\fb_less_2d_gpu_i/img_addr_r6 [3])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_img_addr_r6_0  (
    .A0(pow_save_on_OBUF_78),
    .A1(bus_we),
    .A2(bus_we),
    .A3(bus_we),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(rgb_s[0]),
    .Q(\fb_less_2d_gpu_i/Mshreg_img_addr_r6_0_639 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_img_addr_r6_0_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/img_addr_r6_0  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_img_addr_r6_0_639 ),
    .Q(\fb_less_2d_gpu_i/img_addr_r6 [0])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_img_addr_r6_2  (
    .A0(pow_save_on_OBUF_78),
    .A1(bus_we),
    .A2(bus_we),
    .A3(bus_we),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(rgb_s[2]),
    .Q(\fb_less_2d_gpu_i/Mshreg_img_addr_r6_2_640 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_img_addr_r6_2_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/img_addr_r6_2  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_img_addr_r6_2_640 ),
    .Q(\fb_less_2d_gpu_i/img_addr_r6 [2])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_img_addr_r6_1  (
    .A0(pow_save_on_OBUF_78),
    .A1(bus_we),
    .A2(bus_we),
    .A3(bus_we),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(rgb_s[1]),
    .Q(\fb_less_2d_gpu_i/Mshreg_img_addr_r6_1_641 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_img_addr_r6_1_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/img_addr_r6_1  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_img_addr_r6_1_641 ),
    .Q(\fb_less_2d_gpu_i/img_addr_r6 [1])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_reg_intersected_r9_3  (
    .A0(pow_save_on_OBUF_78),
    .A1(bus_we),
    .A2(bus_we),
    .A3(bus_we),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(\fb_less_2d_gpu_i/reg_intersected_r6 [3]),
    .Q(\fb_less_2d_gpu_i/Mshreg_reg_intersected_r9_3_642 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_reg_intersected_r9_3_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/reg_intersected_r9_3  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_reg_intersected_r9_3_642 ),
    .Q(\fb_less_2d_gpu_i/reg_intersected_r9 [3])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_reg_intersected_r9_2  (
    .A0(pow_save_on_OBUF_78),
    .A1(bus_we),
    .A2(bus_we),
    .A3(bus_we),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(\fb_less_2d_gpu_i/reg_intersected_r6 [2]),
    .Q(\fb_less_2d_gpu_i/Mshreg_reg_intersected_r9_2_643 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_reg_intersected_r9_2_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/reg_intersected_r9_2  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_reg_intersected_r9_2_643 ),
    .Q(\fb_less_2d_gpu_i/reg_intersected_r9 [2])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_reg_intersected_r9_1  (
    .A0(pow_save_on_OBUF_78),
    .A1(bus_we),
    .A2(bus_we),
    .A3(bus_we),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(\fb_less_2d_gpu_i/reg_intersected_r6 [1]),
    .Q(\fb_less_2d_gpu_i/Mshreg_reg_intersected_r9_1_644 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_reg_intersected_r9_1_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/reg_intersected_r9_1  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_reg_intersected_r9_1_644 ),
    .Q(\fb_less_2d_gpu_i/reg_intersected_r9 [1])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_reg_intersected_r9_0  (
    .A0(pow_save_on_OBUF_78),
    .A1(bus_we),
    .A2(bus_we),
    .A3(bus_we),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(\fb_less_2d_gpu_i/reg_intersected_r6 [0]),
    .Q(\fb_less_2d_gpu_i/Mshreg_reg_intersected_r9_0_645 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_reg_intersected_r9_0_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/reg_intersected_r9_0  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_reg_intersected_r9_0_645 ),
    .Q(\fb_less_2d_gpu_i/reg_intersected_r9 [0])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_reg_intersected_r13_3  (
    .A0(bus_we),
    .A1(pow_save_on_OBUF_78),
    .A2(bus_we),
    .A3(bus_we),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(\fb_less_2d_gpu_i/reg_intersected_r9 [3]),
    .Q(\fb_less_2d_gpu_i/Mshreg_reg_intersected_r13_3_646 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_reg_intersected_r13_3_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/reg_intersected_r13_3  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_reg_intersected_r13_3_646 ),
    .Q(\fb_less_2d_gpu_i/reg_intersected_r13 [3])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_reg_intersected_r13_2  (
    .A0(bus_we),
    .A1(pow_save_on_OBUF_78),
    .A2(bus_we),
    .A3(bus_we),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(\fb_less_2d_gpu_i/reg_intersected_r9 [2]),
    .Q(\fb_less_2d_gpu_i/Mshreg_reg_intersected_r13_2_647 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_reg_intersected_r13_2_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/reg_intersected_r13_2  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_reg_intersected_r13_2_647 ),
    .Q(\fb_less_2d_gpu_i/reg_intersected_r13 [2])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_reg_intersected_r13_1  (
    .A0(bus_we),
    .A1(pow_save_on_OBUF_78),
    .A2(bus_we),
    .A3(bus_we),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(\fb_less_2d_gpu_i/reg_intersected_r9 [1]),
    .Q(\fb_less_2d_gpu_i/Mshreg_reg_intersected_r13_1_648 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_reg_intersected_r13_1_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/reg_intersected_r13_1  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_reg_intersected_r13_1_648 ),
    .Q(\fb_less_2d_gpu_i/reg_intersected_r13 [1])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \fb_less_2d_gpu_i/Mshreg_reg_intersected_r13_0  (
    .A0(bus_we),
    .A1(pow_save_on_OBUF_78),
    .A2(bus_we),
    .A3(bus_we),
    .CE(pow_save_on_OBUF_78),
    .CLK(clk_100MHz),
    .D(\fb_less_2d_gpu_i/reg_intersected_r9 [0]),
    .Q(\fb_less_2d_gpu_i/Mshreg_reg_intersected_r13_0_649 ),
    .Q15(\NLW_fb_less_2d_gpu_i/Mshreg_reg_intersected_r13_0_Q15_UNCONNECTED )
  );
  FDE   \fb_less_2d_gpu_i/reg_intersected_r13_0  (
    .C(clk_100MHz),
    .CE(pow_save_on_OBUF_78),
    .D(\fb_less_2d_gpu_i/Mshreg_reg_intersected_r13_0_649 ),
    .Q(\fb_less_2d_gpu_i/reg_intersected_r13 [0])
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

