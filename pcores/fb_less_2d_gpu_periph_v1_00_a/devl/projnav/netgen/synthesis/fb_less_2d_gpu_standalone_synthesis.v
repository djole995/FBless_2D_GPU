////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.68d
//  \   \         Application: netgen
//  /   /         Filename: fb_less_2d_gpu_standalone_synthesis.v
// /___/   /\     Timestamp: Thu May 18 11:35:36 2017
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
  wire red_o_0_OBUF_25;
  wire \vga_ctrl_i/vga_clk_27 ;
  wire \vga_ctrl_i/n_blank_28 ;
  wire \vga_ctrl_i/n_h_sync_29 ;
  wire \vga_ctrl_i/n_v_sync_30 ;
  wire \vga_ctrl_i/n_sync_31 ;
  wire pow_save_on_OBUF_33;
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
  wire \vga_ctrl_i/Mcount_phase_val ;
  wire \vga_ctrl_i/PWR_5_o_INV_23_o ;
  wire \vga_ctrl_i/PWR_5_o_INV_22_o ;
  wire \vga_ctrl_i/PWR_5_o_INV_21_o ;
  wire \vga_ctrl_i/PWR_5_o_INV_20_o ;
  wire \vga_ctrl_i/en_25MHz_pixel_x[9]_AND_4_o_85 ;
  wire \vga_ctrl_i/phase[1]_PWR_5_o_equal_23_o ;
  wire \vga_ctrl_i/en_25MHz ;
  wire \fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_lut<5>_102 ;
  wire \fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_cy<4>_103 ;
  wire \fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_lut<4>_104 ;
  wire \fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_lutdi4_105 ;
  wire \fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_cy<3>_106 ;
  wire \fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_lut<3>_107 ;
  wire \fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_lutdi3_108 ;
  wire \fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_cy<2>_109 ;
  wire \fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_lut<2>_110 ;
  wire \fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_lutdi2_111 ;
  wire \fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_cy<1>_112 ;
  wire \fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_lut<1>_113 ;
  wire \fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_lutdi1_114 ;
  wire \fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_cy<0>_115 ;
  wire \fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_lut<0>_116 ;
  wire \fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_lutdi_117 ;
  wire \fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_lut<5>_118 ;
  wire \fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_cy<4>_119 ;
  wire \fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_lut<4>_120 ;
  wire \fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_lutdi4_121 ;
  wire \fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_cy<3>_122 ;
  wire \fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_lut<3>_123 ;
  wire \fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_lutdi3_124 ;
  wire \fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_cy<2>_125 ;
  wire \fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_lut<2>_126 ;
  wire \fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_lutdi2_127 ;
  wire \fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_cy<1>_128 ;
  wire \fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_lut<1>_129 ;
  wire \fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_lutdi1_130 ;
  wire \fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_cy<0>_131 ;
  wire \fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_lut<0>_132 ;
  wire \fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_lutdi_133 ;
  wire \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<15>_134 ;
  wire \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<14>_135 ;
  wire \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<14>_136 ;
  wire \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<13>_137 ;
  wire \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<13>_138 ;
  wire \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<12>_139 ;
  wire \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<12>_140 ;
  wire \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<11>_141 ;
  wire \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<11>_142 ;
  wire \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<10>_143 ;
  wire \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<10>_144 ;
  wire \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<9>_145 ;
  wire \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<9>_146 ;
  wire \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<8>_147 ;
  wire \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<8>_148 ;
  wire \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<7>_149 ;
  wire \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<7>_150 ;
  wire \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<6>_151 ;
  wire \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<6>_152 ;
  wire \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<5>_153 ;
  wire \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<5>_154 ;
  wire \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<4>_155 ;
  wire \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<4>_156 ;
  wire \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<3>_157 ;
  wire \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<3>_158 ;
  wire \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<2>_159 ;
  wire \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<2>_160 ;
  wire \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<1>_161 ;
  wire \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<1>_162 ;
  wire \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<0>_163 ;
  wire \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<0>_164 ;
  wire \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<15>_165 ;
  wire \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<14>_166 ;
  wire \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<14>_167 ;
  wire \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<13>_168 ;
  wire \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<13>_169 ;
  wire \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<12>_170 ;
  wire \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<12>_171 ;
  wire \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<11>_172 ;
  wire \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<11>_173 ;
  wire \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<10>_174 ;
  wire \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<10>_175 ;
  wire \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<9>_176 ;
  wire \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<9>_177 ;
  wire \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<8>_178 ;
  wire \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<8>_179 ;
  wire \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<7>_180 ;
  wire \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<7>_181 ;
  wire \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<6>_182 ;
  wire \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<6>_183 ;
  wire \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<5>_184 ;
  wire \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<5>_185 ;
  wire \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<4>_186 ;
  wire \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<4>_187 ;
  wire \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<3>_188 ;
  wire \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<3>_189 ;
  wire \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<2>_190 ;
  wire \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<2>_191 ;
  wire \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<1>_192 ;
  wire \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<1>_193 ;
  wire \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<0>_194 ;
  wire \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<0>_195 ;
  wire \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_cy<4>_196 ;
  wire \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_lut<4>_197 ;
  wire \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_lutdi4_198 ;
  wire \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_cy<3>_199 ;
  wire \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_lut<3>_200 ;
  wire \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_lutdi3_201 ;
  wire \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_cy<2>_202 ;
  wire \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_lut<2>_203 ;
  wire \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_lutdi2_204 ;
  wire \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_cy<1>_205 ;
  wire \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_lut<1>_206 ;
  wire \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_lutdi1_207 ;
  wire \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_cy<0>_208 ;
  wire \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_lut<0>_209 ;
  wire \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_lutdi_210 ;
  wire \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_cy<4>_211 ;
  wire \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_lut<4>_212 ;
  wire \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_lutdi4_213 ;
  wire \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_cy<3>_214 ;
  wire \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_lut<3>_215 ;
  wire \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_lutdi3_216 ;
  wire \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_cy<2>_217 ;
  wire \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_lut<2>_218 ;
  wire \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_lutdi2_219 ;
  wire \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_cy<1>_220 ;
  wire \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_lut<1>_221 ;
  wire \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_lutdi1_222 ;
  wire \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_cy<0>_223 ;
  wire \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_lut<0>_224 ;
  wire \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_lutdi_225 ;
  wire \fb_less_2d_gpu_i/phase_reg/in_rst_inv ;
  wire \fb_less_2d_gpu_i/_n0813 ;
  wire \fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<0> ;
  wire \fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<1> ;
  wire \fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<2> ;
  wire \fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<3> ;
  wire \fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<4> ;
  wire \fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<5> ;
  wire \fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<6> ;
  wire \fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<7> ;
  wire \fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<8> ;
  wire \fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<9> ;
  wire \fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<10> ;
  wire \fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<11> ;
  wire \fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<12> ;
  wire \fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<13> ;
  wire \fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<14> ;
  wire \fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<15> ;
  wire \fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<0> ;
  wire \fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<1> ;
  wire \fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<2> ;
  wire \fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<3> ;
  wire \fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<4> ;
  wire \fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<5> ;
  wire \fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<6> ;
  wire \fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<7> ;
  wire \fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<8> ;
  wire \fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<9> ;
  wire \fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<10> ;
  wire \fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<11> ;
  wire \fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<12> ;
  wire \fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<13> ;
  wire \fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<14> ;
  wire \fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<15> ;
  wire \fb_less_2d_gpu_i/GND_6_o_rect_col_r[15]_LessThan_66_o ;
  wire \fb_less_2d_gpu_i/rect_col_r[15]_GND_6_o_LessThan_63_o ;
  wire \fb_less_2d_gpu_i/GND_6_o_rect_row_r[15]_LessThan_67_o ;
  wire \fb_less_2d_gpu_i/rect_row_r[15]_GND_6_o_LessThan_65_o ;
  wire \fb_less_2d_gpu_i/rgb_reg/r_q_393 ;
  wire N2;
  wire \vga_ctrl_i/Mcount_pixel_x_cy<8>_rt_458 ;
  wire \vga_ctrl_i/Mcount_pixel_x_cy<7>_rt_459 ;
  wire \vga_ctrl_i/Mcount_pixel_x_cy<6>_rt_460 ;
  wire \vga_ctrl_i/Mcount_pixel_x_cy<5>_rt_461 ;
  wire \vga_ctrl_i/Mcount_pixel_x_cy<4>_rt_462 ;
  wire \vga_ctrl_i/Mcount_pixel_x_cy<3>_rt_463 ;
  wire \vga_ctrl_i/Mcount_pixel_x_cy<2>_rt_464 ;
  wire \vga_ctrl_i/Mcount_pixel_x_cy<1>_rt_465 ;
  wire \vga_ctrl_i/Mcount_pixel_y_cy<7>_rt_466 ;
  wire \vga_ctrl_i/Mcount_pixel_y_cy<6>_rt_467 ;
  wire \vga_ctrl_i/Mcount_pixel_y_cy<5>_rt_468 ;
  wire \vga_ctrl_i/Mcount_pixel_y_cy<4>_rt_469 ;
  wire \vga_ctrl_i/Mcount_pixel_y_cy<3>_rt_470 ;
  wire \vga_ctrl_i/Mcount_pixel_y_cy<2>_rt_471 ;
  wire \vga_ctrl_i/Mcount_pixel_y_cy<1>_rt_472 ;
  wire \vga_ctrl_i/Mcount_pixel_x_xor<9>_rt_473 ;
  wire \vga_ctrl_i/Mcount_pixel_y_xor<8>_rt_474 ;
  wire \vga_ctrl_i/en_25MHz<1>1_475 ;
  wire \vga_ctrl_i/pixel_x_9_rstpot_476 ;
  wire \vga_ctrl_i/pixel_x_8_rstpot_477 ;
  wire \vga_ctrl_i/pixel_x_6_rstpot_478 ;
  wire \vga_ctrl_i/pixel_x_5_rstpot_479 ;
  wire \vga_ctrl_i/pixel_x_7_rstpot_480 ;
  wire \vga_ctrl_i/pixel_x_3_rstpot_481 ;
  wire \vga_ctrl_i/pixel_x_2_rstpot_482 ;
  wire \vga_ctrl_i/pixel_x_4_rstpot_483 ;
  wire \vga_ctrl_i/pixel_x_0_rstpot_484 ;
  wire \vga_ctrl_i/pixel_x_1_rstpot_485 ;
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
  wire [1 : 0] \vga_ctrl_i/phase ;
  wire [9 : 0] \vga_ctrl_i/pixel_x ;
  wire [8 : 0] \vga_ctrl_i/pixel_y ;
  wire [7 : 7] \vga_ctrl_i/blue ;
  wire [16 : 16] rgb_s;
  wire [8 : 0] \vga_ctrl_i/Mcount_pixel_x_cy ;
  wire [0 : 0] \vga_ctrl_i/Mcount_pixel_x_lut ;
  wire [7 : 0] \vga_ctrl_i/Mcount_pixel_y_cy ;
  wire [0 : 0] \vga_ctrl_i/Mcount_pixel_y_lut ;
  wire [9 : 0] \vga_ctrl_i/Result ;
  wire [8 : 1] \vga_ctrl_i/pixel_y_d1 ;
  wire [9 : 4] \vga_ctrl_i/pixel_x_d1 ;
  wire [15 : 0] \fb_less_2d_gpu_i/rect_row_s ;
  wire [15 : 0] \fb_less_2d_gpu_i/rect_col_s ;
  wire [15 : 0] \fb_less_2d_gpu_i/rect_height_s ;
  wire [15 : 0] \fb_less_2d_gpu_i/rect_width_s ;
  wire [0 : 0] \fb_less_2d_gpu_i/phase_reg/r_q ;
  wire [15 : 0] \fb_less_2d_gpu_i/rect_row_reg/r_q ;
  wire [15 : 0] \fb_less_2d_gpu_i/rect_col_reg/r_q ;
  wire [15 : 0] \fb_less_2d_gpu_i/rect_height_reg/r_q ;
  wire [15 : 0] \fb_less_2d_gpu_i/rect_width_reg/r_q ;
  wire [31 : 0] \fb_less_2d_gpu_i/mem_data_s ;
  VCC   XST_VCC (
    .P(pow_save_on_OBUF_33)
  );
  GND   XST_GND (
    .G(red_o_0_OBUF_25)
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
    .PSCLK(red_o_0_OBUF_25),
    .CLK2X(\NLW_clk_gen/dcm_24MHz_to_100MHz_CLK2X_UNCONNECTED ),
    .CLKFX(\clk_gen/clk_fx ),
    .CLK180(\NLW_clk_gen/dcm_24MHz_to_100MHz_CLK180_UNCONNECTED ),
    .CLK270(\NLW_clk_gen/dcm_24MHz_to_100MHz_CLK270_UNCONNECTED ),
    .RST(\clk_gen/in_rst ),
    .PSINCDEC(red_o_0_OBUF_25),
    .CLKIN(\clk_gen/clk_in ),
    .CLKFB(\clk_gen/clk_fb ),
    .PSEN(red_o_0_OBUF_25),
    .CLK0(\clk_gen/clk_0 ),
    .CLKFX180(\NLW_clk_gen/dcm_24MHz_to_100MHz_CLKFX180_UNCONNECTED ),
    .CLKDV(\NLW_clk_gen/dcm_24MHz_to_100MHz_CLKDV_UNCONNECTED ),
    .PSDONE(\NLW_clk_gen/dcm_24MHz_to_100MHz_PSDONE_UNCONNECTED ),
    .CLK90(\NLW_clk_gen/dcm_24MHz_to_100MHz_CLK90_UNCONNECTED ),
    .LOCKED(n_reset),
    .DSSEN(red_o_0_OBUF_25),
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
    .LI(\vga_ctrl_i/Mcount_pixel_x_xor<9>_rt_473 ),
    .O(\vga_ctrl_i/Result [9])
  );
  XORCY   \vga_ctrl_i/Mcount_pixel_x_xor<8>  (
    .CI(\vga_ctrl_i/Mcount_pixel_x_cy [7]),
    .LI(\vga_ctrl_i/Mcount_pixel_x_cy<8>_rt_458 ),
    .O(\vga_ctrl_i/Result<8>1 )
  );
  MUXCY   \vga_ctrl_i/Mcount_pixel_x_cy<8>  (
    .CI(\vga_ctrl_i/Mcount_pixel_x_cy [7]),
    .DI(red_o_0_OBUF_25),
    .S(\vga_ctrl_i/Mcount_pixel_x_cy<8>_rt_458 ),
    .O(\vga_ctrl_i/Mcount_pixel_x_cy [8])
  );
  XORCY   \vga_ctrl_i/Mcount_pixel_x_xor<7>  (
    .CI(\vga_ctrl_i/Mcount_pixel_x_cy [6]),
    .LI(\vga_ctrl_i/Mcount_pixel_x_cy<7>_rt_459 ),
    .O(\vga_ctrl_i/Result<7>1 )
  );
  MUXCY   \vga_ctrl_i/Mcount_pixel_x_cy<7>  (
    .CI(\vga_ctrl_i/Mcount_pixel_x_cy [6]),
    .DI(red_o_0_OBUF_25),
    .S(\vga_ctrl_i/Mcount_pixel_x_cy<7>_rt_459 ),
    .O(\vga_ctrl_i/Mcount_pixel_x_cy [7])
  );
  XORCY   \vga_ctrl_i/Mcount_pixel_x_xor<6>  (
    .CI(\vga_ctrl_i/Mcount_pixel_x_cy [5]),
    .LI(\vga_ctrl_i/Mcount_pixel_x_cy<6>_rt_460 ),
    .O(\vga_ctrl_i/Result<6>1 )
  );
  MUXCY   \vga_ctrl_i/Mcount_pixel_x_cy<6>  (
    .CI(\vga_ctrl_i/Mcount_pixel_x_cy [5]),
    .DI(red_o_0_OBUF_25),
    .S(\vga_ctrl_i/Mcount_pixel_x_cy<6>_rt_460 ),
    .O(\vga_ctrl_i/Mcount_pixel_x_cy [6])
  );
  XORCY   \vga_ctrl_i/Mcount_pixel_x_xor<5>  (
    .CI(\vga_ctrl_i/Mcount_pixel_x_cy [4]),
    .LI(\vga_ctrl_i/Mcount_pixel_x_cy<5>_rt_461 ),
    .O(\vga_ctrl_i/Result<5>1 )
  );
  MUXCY   \vga_ctrl_i/Mcount_pixel_x_cy<5>  (
    .CI(\vga_ctrl_i/Mcount_pixel_x_cy [4]),
    .DI(red_o_0_OBUF_25),
    .S(\vga_ctrl_i/Mcount_pixel_x_cy<5>_rt_461 ),
    .O(\vga_ctrl_i/Mcount_pixel_x_cy [5])
  );
  XORCY   \vga_ctrl_i/Mcount_pixel_x_xor<4>  (
    .CI(\vga_ctrl_i/Mcount_pixel_x_cy [3]),
    .LI(\vga_ctrl_i/Mcount_pixel_x_cy<4>_rt_462 ),
    .O(\vga_ctrl_i/Result<4>1 )
  );
  MUXCY   \vga_ctrl_i/Mcount_pixel_x_cy<4>  (
    .CI(\vga_ctrl_i/Mcount_pixel_x_cy [3]),
    .DI(red_o_0_OBUF_25),
    .S(\vga_ctrl_i/Mcount_pixel_x_cy<4>_rt_462 ),
    .O(\vga_ctrl_i/Mcount_pixel_x_cy [4])
  );
  XORCY   \vga_ctrl_i/Mcount_pixel_x_xor<3>  (
    .CI(\vga_ctrl_i/Mcount_pixel_x_cy [2]),
    .LI(\vga_ctrl_i/Mcount_pixel_x_cy<3>_rt_463 ),
    .O(\vga_ctrl_i/Result<3>1 )
  );
  MUXCY   \vga_ctrl_i/Mcount_pixel_x_cy<3>  (
    .CI(\vga_ctrl_i/Mcount_pixel_x_cy [2]),
    .DI(red_o_0_OBUF_25),
    .S(\vga_ctrl_i/Mcount_pixel_x_cy<3>_rt_463 ),
    .O(\vga_ctrl_i/Mcount_pixel_x_cy [3])
  );
  XORCY   \vga_ctrl_i/Mcount_pixel_x_xor<2>  (
    .CI(\vga_ctrl_i/Mcount_pixel_x_cy [1]),
    .LI(\vga_ctrl_i/Mcount_pixel_x_cy<2>_rt_464 ),
    .O(\vga_ctrl_i/Result<2>1 )
  );
  MUXCY   \vga_ctrl_i/Mcount_pixel_x_cy<2>  (
    .CI(\vga_ctrl_i/Mcount_pixel_x_cy [1]),
    .DI(red_o_0_OBUF_25),
    .S(\vga_ctrl_i/Mcount_pixel_x_cy<2>_rt_464 ),
    .O(\vga_ctrl_i/Mcount_pixel_x_cy [2])
  );
  XORCY   \vga_ctrl_i/Mcount_pixel_x_xor<1>  (
    .CI(\vga_ctrl_i/Mcount_pixel_x_cy [0]),
    .LI(\vga_ctrl_i/Mcount_pixel_x_cy<1>_rt_465 ),
    .O(\vga_ctrl_i/Result<1>2 )
  );
  MUXCY   \vga_ctrl_i/Mcount_pixel_x_cy<1>  (
    .CI(\vga_ctrl_i/Mcount_pixel_x_cy [0]),
    .DI(red_o_0_OBUF_25),
    .S(\vga_ctrl_i/Mcount_pixel_x_cy<1>_rt_465 ),
    .O(\vga_ctrl_i/Mcount_pixel_x_cy [1])
  );
  XORCY   \vga_ctrl_i/Mcount_pixel_x_xor<0>  (
    .CI(red_o_0_OBUF_25),
    .LI(\vga_ctrl_i/Mcount_pixel_x_lut [0]),
    .O(\vga_ctrl_i/Result<0>2 )
  );
  MUXCY   \vga_ctrl_i/Mcount_pixel_x_cy<0>  (
    .CI(red_o_0_OBUF_25),
    .DI(pow_save_on_OBUF_33),
    .S(\vga_ctrl_i/Mcount_pixel_x_lut [0]),
    .O(\vga_ctrl_i/Mcount_pixel_x_cy [0])
  );
  XORCY   \vga_ctrl_i/Mcount_pixel_y_xor<8>  (
    .CI(\vga_ctrl_i/Mcount_pixel_y_cy [7]),
    .LI(\vga_ctrl_i/Mcount_pixel_y_xor<8>_rt_474 ),
    .O(\vga_ctrl_i/Result [8])
  );
  XORCY   \vga_ctrl_i/Mcount_pixel_y_xor<7>  (
    .CI(\vga_ctrl_i/Mcount_pixel_y_cy [6]),
    .LI(\vga_ctrl_i/Mcount_pixel_y_cy<7>_rt_466 ),
    .O(\vga_ctrl_i/Result [7])
  );
  MUXCY   \vga_ctrl_i/Mcount_pixel_y_cy<7>  (
    .CI(\vga_ctrl_i/Mcount_pixel_y_cy [6]),
    .DI(red_o_0_OBUF_25),
    .S(\vga_ctrl_i/Mcount_pixel_y_cy<7>_rt_466 ),
    .O(\vga_ctrl_i/Mcount_pixel_y_cy [7])
  );
  XORCY   \vga_ctrl_i/Mcount_pixel_y_xor<6>  (
    .CI(\vga_ctrl_i/Mcount_pixel_y_cy [5]),
    .LI(\vga_ctrl_i/Mcount_pixel_y_cy<6>_rt_467 ),
    .O(\vga_ctrl_i/Result [6])
  );
  MUXCY   \vga_ctrl_i/Mcount_pixel_y_cy<6>  (
    .CI(\vga_ctrl_i/Mcount_pixel_y_cy [5]),
    .DI(red_o_0_OBUF_25),
    .S(\vga_ctrl_i/Mcount_pixel_y_cy<6>_rt_467 ),
    .O(\vga_ctrl_i/Mcount_pixel_y_cy [6])
  );
  XORCY   \vga_ctrl_i/Mcount_pixel_y_xor<5>  (
    .CI(\vga_ctrl_i/Mcount_pixel_y_cy [4]),
    .LI(\vga_ctrl_i/Mcount_pixel_y_cy<5>_rt_468 ),
    .O(\vga_ctrl_i/Result [5])
  );
  MUXCY   \vga_ctrl_i/Mcount_pixel_y_cy<5>  (
    .CI(\vga_ctrl_i/Mcount_pixel_y_cy [4]),
    .DI(red_o_0_OBUF_25),
    .S(\vga_ctrl_i/Mcount_pixel_y_cy<5>_rt_468 ),
    .O(\vga_ctrl_i/Mcount_pixel_y_cy [5])
  );
  XORCY   \vga_ctrl_i/Mcount_pixel_y_xor<4>  (
    .CI(\vga_ctrl_i/Mcount_pixel_y_cy [3]),
    .LI(\vga_ctrl_i/Mcount_pixel_y_cy<4>_rt_469 ),
    .O(\vga_ctrl_i/Result [4])
  );
  MUXCY   \vga_ctrl_i/Mcount_pixel_y_cy<4>  (
    .CI(\vga_ctrl_i/Mcount_pixel_y_cy [3]),
    .DI(red_o_0_OBUF_25),
    .S(\vga_ctrl_i/Mcount_pixel_y_cy<4>_rt_469 ),
    .O(\vga_ctrl_i/Mcount_pixel_y_cy [4])
  );
  XORCY   \vga_ctrl_i/Mcount_pixel_y_xor<3>  (
    .CI(\vga_ctrl_i/Mcount_pixel_y_cy [2]),
    .LI(\vga_ctrl_i/Mcount_pixel_y_cy<3>_rt_470 ),
    .O(\vga_ctrl_i/Result [3])
  );
  MUXCY   \vga_ctrl_i/Mcount_pixel_y_cy<3>  (
    .CI(\vga_ctrl_i/Mcount_pixel_y_cy [2]),
    .DI(red_o_0_OBUF_25),
    .S(\vga_ctrl_i/Mcount_pixel_y_cy<3>_rt_470 ),
    .O(\vga_ctrl_i/Mcount_pixel_y_cy [3])
  );
  XORCY   \vga_ctrl_i/Mcount_pixel_y_xor<2>  (
    .CI(\vga_ctrl_i/Mcount_pixel_y_cy [1]),
    .LI(\vga_ctrl_i/Mcount_pixel_y_cy<2>_rt_471 ),
    .O(\vga_ctrl_i/Result [2])
  );
  MUXCY   \vga_ctrl_i/Mcount_pixel_y_cy<2>  (
    .CI(\vga_ctrl_i/Mcount_pixel_y_cy [1]),
    .DI(red_o_0_OBUF_25),
    .S(\vga_ctrl_i/Mcount_pixel_y_cy<2>_rt_471 ),
    .O(\vga_ctrl_i/Mcount_pixel_y_cy [2])
  );
  XORCY   \vga_ctrl_i/Mcount_pixel_y_xor<1>  (
    .CI(\vga_ctrl_i/Mcount_pixel_y_cy [0]),
    .LI(\vga_ctrl_i/Mcount_pixel_y_cy<1>_rt_472 ),
    .O(\vga_ctrl_i/Result<1>1 )
  );
  MUXCY   \vga_ctrl_i/Mcount_pixel_y_cy<1>  (
    .CI(\vga_ctrl_i/Mcount_pixel_y_cy [0]),
    .DI(red_o_0_OBUF_25),
    .S(\vga_ctrl_i/Mcount_pixel_y_cy<1>_rt_472 ),
    .O(\vga_ctrl_i/Mcount_pixel_y_cy [1])
  );
  XORCY   \vga_ctrl_i/Mcount_pixel_y_xor<0>  (
    .CI(red_o_0_OBUF_25),
    .LI(\vga_ctrl_i/Mcount_pixel_y_lut [0]),
    .O(\vga_ctrl_i/Result<0>1 )
  );
  MUXCY   \vga_ctrl_i/Mcount_pixel_y_cy<0>  (
    .CI(red_o_0_OBUF_25),
    .DI(pow_save_on_OBUF_33),
    .S(\vga_ctrl_i/Mcount_pixel_y_lut [0]),
    .O(\vga_ctrl_i/Mcount_pixel_y_cy [0])
  );
  FDRE   \vga_ctrl_i/pixel_y_8  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/en_25MHz_pixel_x[9]_AND_4_o_85 ),
    .D(\vga_ctrl_i/Result [8]),
    .R(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .Q(\vga_ctrl_i/pixel_y [8])
  );
  FDRE   \vga_ctrl_i/pixel_y_7  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/en_25MHz_pixel_x[9]_AND_4_o_85 ),
    .D(\vga_ctrl_i/Result [7]),
    .R(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .Q(\vga_ctrl_i/pixel_y [7])
  );
  FDRE   \vga_ctrl_i/pixel_y_6  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/en_25MHz_pixel_x[9]_AND_4_o_85 ),
    .D(\vga_ctrl_i/Result [6]),
    .R(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .Q(\vga_ctrl_i/pixel_y [6])
  );
  FDRE   \vga_ctrl_i/pixel_y_5  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/en_25MHz_pixel_x[9]_AND_4_o_85 ),
    .D(\vga_ctrl_i/Result [5]),
    .R(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .Q(\vga_ctrl_i/pixel_y [5])
  );
  FDRE   \vga_ctrl_i/pixel_y_4  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/en_25MHz_pixel_x[9]_AND_4_o_85 ),
    .D(\vga_ctrl_i/Result [4]),
    .R(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .Q(\vga_ctrl_i/pixel_y [4])
  );
  FDRE   \vga_ctrl_i/pixel_y_3  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/en_25MHz_pixel_x[9]_AND_4_o_85 ),
    .D(\vga_ctrl_i/Result [3]),
    .R(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .Q(\vga_ctrl_i/pixel_y [3])
  );
  FDRE   \vga_ctrl_i/pixel_y_2  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/en_25MHz_pixel_x[9]_AND_4_o_85 ),
    .D(\vga_ctrl_i/Result [2]),
    .R(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .Q(\vga_ctrl_i/pixel_y [2])
  );
  FDRE   \vga_ctrl_i/pixel_y_1  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/en_25MHz_pixel_x[9]_AND_4_o_85 ),
    .D(\vga_ctrl_i/Result<1>1 ),
    .R(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .Q(\vga_ctrl_i/pixel_y [1])
  );
  FDRE   \vga_ctrl_i/pixel_y_0  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/en_25MHz_pixel_x[9]_AND_4_o_85 ),
    .D(\vga_ctrl_i/Result<0>1 ),
    .R(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
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
    .Q(\vga_ctrl_i/vga_clk_27 )
  );
  FDE   \vga_ctrl_i/n_sync  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/en_25MHz ),
    .D(\vga_ctrl_i/PWR_5_o_INV_23_o ),
    .Q(\vga_ctrl_i/n_sync_31 )
  );
  FDE   \vga_ctrl_i/n_v_sync  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/en_25MHz ),
    .D(\vga_ctrl_i/PWR_5_o_INV_22_o ),
    .Q(\vga_ctrl_i/n_v_sync_30 )
  );
  FDE   \vga_ctrl_i/n_blank  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/en_25MHz ),
    .D(\vga_ctrl_i/PWR_5_o_INV_20_o ),
    .Q(\vga_ctrl_i/n_blank_28 )
  );
  FDE   \vga_ctrl_i/n_h_sync  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/en_25MHz ),
    .D(\vga_ctrl_i/PWR_5_o_INV_21_o ),
    .Q(\vga_ctrl_i/n_h_sync_29 )
  );
  FDE   \vga_ctrl_i/blue_7  (
    .C(clk_100MHz),
    .CE(\vga_ctrl_i/phase[1]_PWR_5_o_equal_23_o ),
    .D(rgb_s[16]),
    .Q(\vga_ctrl_i/blue [7])
  );
  MUXCY   \fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_cy<5>  (
    .CI(\fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_cy<4>_103 ),
    .DI(red_o_0_OBUF_25),
    .S(\fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_lut<5>_102 ),
    .O(\fb_less_2d_gpu_i/rect_col_r[15]_GND_6_o_LessThan_63_o )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_lut<5>  (
    .I0(\fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<11> ),
    .I1(\fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<12> ),
    .I2(\fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<13> ),
    .I3(\fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<14> ),
    .I4(\fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<15> ),
    .O(\fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_lut<5>_102 )
  );
  MUXCY   \fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_cy<4>  (
    .CI(\fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_cy<3>_106 ),
    .DI(\fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_lutdi4_105 ),
    .S(\fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_lut<4>_104 ),
    .O(\fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_cy<4>_103 )
  );
  LUT5 #(
    .INIT ( 32'h00009009 ))
  \fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_lut<4>  (
    .I0(\fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<8> ),
    .I1(\vga_ctrl_i/pixel_x [8]),
    .I2(\fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<9> ),
    .I3(\vga_ctrl_i/pixel_x [9]),
    .I4(\fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<10> ),
    .O(\fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_lut<4>_104 )
  );
  LUT5 #(
    .INIT ( 32'h00404454 ))
  \fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_lutdi4  (
    .I0(\fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<10> ),
    .I1(\vga_ctrl_i/pixel_x [9]),
    .I2(\vga_ctrl_i/pixel_x [8]),
    .I3(\fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<8> ),
    .I4(\fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<9> ),
    .O(\fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_lutdi4_105 )
  );
  MUXCY   \fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_cy<3>  (
    .CI(\fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_cy<2>_109 ),
    .DI(\fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_lutdi3_108 ),
    .S(\fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_lut<3>_107 ),
    .O(\fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_cy<3>_106 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_lut<3>  (
    .I0(\fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<6> ),
    .I1(\vga_ctrl_i/pixel_x [6]),
    .I2(\fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<7> ),
    .I3(\vga_ctrl_i/pixel_x [7]),
    .O(\fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_lut<3>_107 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_lutdi3  (
    .I0(\vga_ctrl_i/pixel_x [7]),
    .I1(\vga_ctrl_i/pixel_x [6]),
    .I2(\fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<6> ),
    .I3(\fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<7> ),
    .O(\fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_lutdi3_108 )
  );
  MUXCY   \fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_cy<2>  (
    .CI(\fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_cy<1>_112 ),
    .DI(\fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_lutdi2_111 ),
    .S(\fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_lut<2>_110 ),
    .O(\fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_cy<2>_109 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_lut<2>  (
    .I0(\fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<4> ),
    .I1(\vga_ctrl_i/pixel_x [4]),
    .I2(\fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<5> ),
    .I3(\vga_ctrl_i/pixel_x [5]),
    .O(\fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_lut<2>_110 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_lutdi2  (
    .I0(\vga_ctrl_i/pixel_x [5]),
    .I1(\vga_ctrl_i/pixel_x [4]),
    .I2(\fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<4> ),
    .I3(\fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<5> ),
    .O(\fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_lutdi2_111 )
  );
  MUXCY   \fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_cy<1>  (
    .CI(\fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_cy<0>_115 ),
    .DI(\fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_lutdi1_114 ),
    .S(\fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_lut<1>_113 ),
    .O(\fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_cy<1>_112 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_lut<1>  (
    .I0(\fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<2> ),
    .I1(\vga_ctrl_i/pixel_x [2]),
    .I2(\fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<3> ),
    .I3(\vga_ctrl_i/pixel_x [3]),
    .O(\fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_lut<1>_113 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_lutdi1  (
    .I0(\vga_ctrl_i/pixel_x [3]),
    .I1(\vga_ctrl_i/pixel_x [2]),
    .I2(\fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<2> ),
    .I3(\fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<3> ),
    .O(\fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_lutdi1_114 )
  );
  MUXCY   \fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_cy<0>  (
    .CI(pow_save_on_OBUF_33),
    .DI(\fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_lutdi_117 ),
    .S(\fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_lut<0>_116 ),
    .O(\fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_cy<0>_115 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_lut<0>  (
    .I0(\fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<0> ),
    .I1(\vga_ctrl_i/pixel_x [0]),
    .I2(\fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<1> ),
    .I3(\vga_ctrl_i/pixel_x [1]),
    .O(\fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_lut<0>_116 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_lutdi  (
    .I0(\vga_ctrl_i/pixel_x [1]),
    .I1(\vga_ctrl_i/pixel_x [0]),
    .I2(\fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<0> ),
    .I3(\fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<1> ),
    .O(\fb_less_2d_gpu_i/Mcompar_rect_col_r[15]_GND_6_o_LessThan_63_o_lutdi_117 )
  );
  MUXCY   \fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_cy<5>  (
    .CI(\fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_cy<4>_119 ),
    .DI(red_o_0_OBUF_25),
    .S(\fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_lut<5>_118 ),
    .O(\fb_less_2d_gpu_i/rect_row_r[15]_GND_6_o_LessThan_65_o )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_lut<5>  (
    .I0(\fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<12> ),
    .I1(\fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<13> ),
    .I2(\fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<14> ),
    .I3(\fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<15> ),
    .O(\fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_lut<5>_118 )
  );
  MUXCY   \fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_cy<4>  (
    .CI(\fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_cy<3>_122 ),
    .DI(\fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_lutdi4_121 ),
    .S(\fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_lut<4>_120 ),
    .O(\fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_cy<4>_119 )
  );
  LUT5 #(
    .INIT ( 32'h01000001 ))
  \fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_lut<4>  (
    .I0(\fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<9> ),
    .I1(\fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<10> ),
    .I2(\fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<11> ),
    .I3(\vga_ctrl_i/pixel_y [8]),
    .I4(\fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<8> ),
    .O(\fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_lut<4>_120 )
  );
  LUT5 #(
    .INIT ( 32'h00000100 ))
  \fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_lutdi4  (
    .I0(\fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<8> ),
    .I1(\fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<9> ),
    .I2(\fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<10> ),
    .I3(\vga_ctrl_i/pixel_y [8]),
    .I4(\fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<11> ),
    .O(\fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_lutdi4_121 )
  );
  MUXCY   \fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_cy<3>  (
    .CI(\fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_cy<2>_125 ),
    .DI(\fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_lutdi3_124 ),
    .S(\fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_lut<3>_123 ),
    .O(\fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_cy<3>_122 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_lut<3>  (
    .I0(\fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<6> ),
    .I1(\vga_ctrl_i/pixel_y [6]),
    .I2(\fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<7> ),
    .I3(\vga_ctrl_i/pixel_y [7]),
    .O(\fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_lut<3>_123 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_lutdi3  (
    .I0(\vga_ctrl_i/pixel_y [7]),
    .I1(\vga_ctrl_i/pixel_y [6]),
    .I2(\fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<6> ),
    .I3(\fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<7> ),
    .O(\fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_lutdi3_124 )
  );
  MUXCY   \fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_cy<2>  (
    .CI(\fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_cy<1>_128 ),
    .DI(\fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_lutdi2_127 ),
    .S(\fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_lut<2>_126 ),
    .O(\fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_cy<2>_125 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_lut<2>  (
    .I0(\fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<4> ),
    .I1(\vga_ctrl_i/pixel_y [4]),
    .I2(\fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<5> ),
    .I3(\vga_ctrl_i/pixel_y [5]),
    .O(\fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_lut<2>_126 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_lutdi2  (
    .I0(\vga_ctrl_i/pixel_y [5]),
    .I1(\vga_ctrl_i/pixel_y [4]),
    .I2(\fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<4> ),
    .I3(\fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<5> ),
    .O(\fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_lutdi2_127 )
  );
  MUXCY   \fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_cy<1>  (
    .CI(\fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_cy<0>_131 ),
    .DI(\fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_lutdi1_130 ),
    .S(\fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_lut<1>_129 ),
    .O(\fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_cy<1>_128 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_lut<1>  (
    .I0(\fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<2> ),
    .I1(\vga_ctrl_i/pixel_y [2]),
    .I2(\fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<3> ),
    .I3(\vga_ctrl_i/pixel_y [3]),
    .O(\fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_lut<1>_129 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_lutdi1  (
    .I0(\vga_ctrl_i/pixel_y [3]),
    .I1(\vga_ctrl_i/pixel_y [2]),
    .I2(\fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<2> ),
    .I3(\fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<3> ),
    .O(\fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_lutdi1_130 )
  );
  MUXCY   \fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_cy<0>  (
    .CI(pow_save_on_OBUF_33),
    .DI(\fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_lutdi_133 ),
    .S(\fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_lut<0>_132 ),
    .O(\fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_cy<0>_131 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_lut<0>  (
    .I0(\fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<0> ),
    .I1(\vga_ctrl_i/pixel_y [0]),
    .I2(\fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<1> ),
    .I3(\vga_ctrl_i/pixel_y [1]),
    .O(\fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_lut<0>_132 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_lutdi  (
    .I0(\vga_ctrl_i/pixel_y [1]),
    .I1(\vga_ctrl_i/pixel_y [0]),
    .I2(\fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<0> ),
    .I3(\fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<1> ),
    .O(\fb_less_2d_gpu_i/Mcompar_rect_row_r[15]_GND_6_o_LessThan_65_o_lutdi_133 )
  );
  XORCY   \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_xor<15>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<14>_135 ),
    .LI(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<15>_134 ),
    .O(\fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<15> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<15>  (
    .I0(\fb_less_2d_gpu_i/rect_height_reg/r_q [15]),
    .I1(\fb_less_2d_gpu_i/rect_row_reg/r_q [15]),
    .O(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<15>_134 )
  );
  XORCY   \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_xor<14>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<13>_137 ),
    .LI(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<14>_136 ),
    .O(\fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<14> )
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<14>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<13>_137 ),
    .DI(\fb_less_2d_gpu_i/rect_row_reg/r_q [14]),
    .S(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<14>_136 ),
    .O(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<14>_135 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<14>  (
    .I0(\fb_less_2d_gpu_i/rect_height_reg/r_q [14]),
    .I1(\fb_less_2d_gpu_i/rect_row_reg/r_q [14]),
    .O(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<14>_136 )
  );
  XORCY   \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_xor<13>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<12>_139 ),
    .LI(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<13>_138 ),
    .O(\fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<13> )
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<13>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<12>_139 ),
    .DI(\fb_less_2d_gpu_i/rect_row_reg/r_q [13]),
    .S(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<13>_138 ),
    .O(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<13>_137 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<13>  (
    .I0(\fb_less_2d_gpu_i/rect_height_reg/r_q [13]),
    .I1(\fb_less_2d_gpu_i/rect_row_reg/r_q [13]),
    .O(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<13>_138 )
  );
  XORCY   \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_xor<12>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<11>_141 ),
    .LI(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<12>_140 ),
    .O(\fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<12> )
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<12>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<11>_141 ),
    .DI(\fb_less_2d_gpu_i/rect_row_reg/r_q [12]),
    .S(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<12>_140 ),
    .O(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<12>_139 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<12>  (
    .I0(\fb_less_2d_gpu_i/rect_height_reg/r_q [12]),
    .I1(\fb_less_2d_gpu_i/rect_row_reg/r_q [12]),
    .O(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<12>_140 )
  );
  XORCY   \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_xor<11>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<10>_143 ),
    .LI(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<11>_142 ),
    .O(\fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<11> )
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<11>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<10>_143 ),
    .DI(\fb_less_2d_gpu_i/rect_row_reg/r_q [11]),
    .S(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<11>_142 ),
    .O(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<11>_141 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<11>  (
    .I0(\fb_less_2d_gpu_i/rect_height_reg/r_q [11]),
    .I1(\fb_less_2d_gpu_i/rect_row_reg/r_q [11]),
    .O(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<11>_142 )
  );
  XORCY   \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_xor<10>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<9>_145 ),
    .LI(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<10>_144 ),
    .O(\fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<10> )
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<10>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<9>_145 ),
    .DI(\fb_less_2d_gpu_i/rect_row_reg/r_q [10]),
    .S(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<10>_144 ),
    .O(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<10>_143 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<10>  (
    .I0(\fb_less_2d_gpu_i/rect_height_reg/r_q [10]),
    .I1(\fb_less_2d_gpu_i/rect_row_reg/r_q [10]),
    .O(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<10>_144 )
  );
  XORCY   \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_xor<9>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<8>_147 ),
    .LI(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<9>_146 ),
    .O(\fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<9> )
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<9>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<8>_147 ),
    .DI(\fb_less_2d_gpu_i/rect_row_reg/r_q [9]),
    .S(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<9>_146 ),
    .O(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<9>_145 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<9>  (
    .I0(\fb_less_2d_gpu_i/rect_height_reg/r_q [9]),
    .I1(\fb_less_2d_gpu_i/rect_row_reg/r_q [9]),
    .O(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<9>_146 )
  );
  XORCY   \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_xor<8>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<7>_149 ),
    .LI(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<8>_148 ),
    .O(\fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<8> )
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<8>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<7>_149 ),
    .DI(\fb_less_2d_gpu_i/rect_row_reg/r_q [8]),
    .S(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<8>_148 ),
    .O(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<8>_147 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<8>  (
    .I0(\fb_less_2d_gpu_i/rect_height_reg/r_q [8]),
    .I1(\fb_less_2d_gpu_i/rect_row_reg/r_q [8]),
    .O(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<8>_148 )
  );
  XORCY   \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_xor<7>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<6>_151 ),
    .LI(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<7>_150 ),
    .O(\fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<7> )
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<7>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<6>_151 ),
    .DI(\fb_less_2d_gpu_i/rect_row_reg/r_q [7]),
    .S(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<7>_150 ),
    .O(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<7>_149 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<7>  (
    .I0(\fb_less_2d_gpu_i/rect_height_reg/r_q [7]),
    .I1(\fb_less_2d_gpu_i/rect_row_reg/r_q [7]),
    .O(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<7>_150 )
  );
  XORCY   \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_xor<6>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<5>_153 ),
    .LI(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<6>_152 ),
    .O(\fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<6> )
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<6>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<5>_153 ),
    .DI(\fb_less_2d_gpu_i/rect_row_reg/r_q [6]),
    .S(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<6>_152 ),
    .O(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<6>_151 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<6>  (
    .I0(\fb_less_2d_gpu_i/rect_height_reg/r_q [6]),
    .I1(\fb_less_2d_gpu_i/rect_row_reg/r_q [6]),
    .O(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<6>_152 )
  );
  XORCY   \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_xor<5>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<4>_155 ),
    .LI(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<5>_154 ),
    .O(\fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<5> )
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<5>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<4>_155 ),
    .DI(\fb_less_2d_gpu_i/rect_row_reg/r_q [5]),
    .S(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<5>_154 ),
    .O(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<5>_153 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<5>  (
    .I0(\fb_less_2d_gpu_i/rect_height_reg/r_q [5]),
    .I1(\fb_less_2d_gpu_i/rect_row_reg/r_q [5]),
    .O(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<5>_154 )
  );
  XORCY   \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_xor<4>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<3>_157 ),
    .LI(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<4>_156 ),
    .O(\fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<4> )
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<4>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<3>_157 ),
    .DI(\fb_less_2d_gpu_i/rect_row_reg/r_q [4]),
    .S(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<4>_156 ),
    .O(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<4>_155 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<4>  (
    .I0(\fb_less_2d_gpu_i/rect_height_reg/r_q [4]),
    .I1(\fb_less_2d_gpu_i/rect_row_reg/r_q [4]),
    .O(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<4>_156 )
  );
  XORCY   \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_xor<3>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<2>_159 ),
    .LI(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<3>_158 ),
    .O(\fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<3> )
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<3>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<2>_159 ),
    .DI(\fb_less_2d_gpu_i/rect_row_reg/r_q [3]),
    .S(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<3>_158 ),
    .O(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<3>_157 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<3>  (
    .I0(\fb_less_2d_gpu_i/rect_height_reg/r_q [3]),
    .I1(\fb_less_2d_gpu_i/rect_row_reg/r_q [3]),
    .O(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<3>_158 )
  );
  XORCY   \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_xor<2>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<1>_161 ),
    .LI(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<2>_160 ),
    .O(\fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<2> )
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<2>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<1>_161 ),
    .DI(\fb_less_2d_gpu_i/rect_row_reg/r_q [2]),
    .S(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<2>_160 ),
    .O(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<2>_159 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<2>  (
    .I0(\fb_less_2d_gpu_i/rect_height_reg/r_q [2]),
    .I1(\fb_less_2d_gpu_i/rect_row_reg/r_q [2]),
    .O(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<2>_160 )
  );
  XORCY   \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_xor<1>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<0>_163 ),
    .LI(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<1>_162 ),
    .O(\fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<1> )
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<1>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<0>_163 ),
    .DI(\fb_less_2d_gpu_i/rect_row_reg/r_q [1]),
    .S(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<1>_162 ),
    .O(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<1>_161 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<1>  (
    .I0(\fb_less_2d_gpu_i/rect_height_reg/r_q [1]),
    .I1(\fb_less_2d_gpu_i/rect_row_reg/r_q [1]),
    .O(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<1>_162 )
  );
  XORCY   \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_xor<0>  (
    .CI(red_o_0_OBUF_25),
    .LI(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<0>_164 ),
    .O(\fb_less_2d_gpu_i/rect_row_r[15]_rect_height_r[15]_add_63_OUT<0> )
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<0>  (
    .CI(red_o_0_OBUF_25),
    .DI(\fb_less_2d_gpu_i/rect_row_reg/r_q [0]),
    .S(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<0>_164 ),
    .O(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_cy<0>_163 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<0>  (
    .I0(\fb_less_2d_gpu_i/rect_height_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/rect_row_reg/r_q [0]),
    .O(\fb_less_2d_gpu_i/Madd_rect_row_r[15]_rect_height_r[15]_add_63_OUT_lut<0>_164 )
  );
  XORCY   \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_xor<15>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<14>_166 ),
    .LI(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<15>_165 ),
    .O(\fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<15> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<15>  (
    .I0(\fb_less_2d_gpu_i/rect_width_reg/r_q [15]),
    .I1(\fb_less_2d_gpu_i/rect_col_reg/r_q [15]),
    .O(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<15>_165 )
  );
  XORCY   \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_xor<14>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<13>_168 ),
    .LI(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<14>_167 ),
    .O(\fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<14> )
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<14>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<13>_168 ),
    .DI(\fb_less_2d_gpu_i/rect_col_reg/r_q [14]),
    .S(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<14>_167 ),
    .O(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<14>_166 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<14>  (
    .I0(\fb_less_2d_gpu_i/rect_width_reg/r_q [14]),
    .I1(\fb_less_2d_gpu_i/rect_col_reg/r_q [14]),
    .O(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<14>_167 )
  );
  XORCY   \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_xor<13>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<12>_170 ),
    .LI(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<13>_169 ),
    .O(\fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<13> )
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<13>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<12>_170 ),
    .DI(\fb_less_2d_gpu_i/rect_col_reg/r_q [13]),
    .S(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<13>_169 ),
    .O(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<13>_168 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<13>  (
    .I0(\fb_less_2d_gpu_i/rect_width_reg/r_q [13]),
    .I1(\fb_less_2d_gpu_i/rect_col_reg/r_q [13]),
    .O(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<13>_169 )
  );
  XORCY   \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_xor<12>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<11>_172 ),
    .LI(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<12>_171 ),
    .O(\fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<12> )
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<12>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<11>_172 ),
    .DI(\fb_less_2d_gpu_i/rect_col_reg/r_q [12]),
    .S(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<12>_171 ),
    .O(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<12>_170 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<12>  (
    .I0(\fb_less_2d_gpu_i/rect_width_reg/r_q [12]),
    .I1(\fb_less_2d_gpu_i/rect_col_reg/r_q [12]),
    .O(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<12>_171 )
  );
  XORCY   \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_xor<11>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<10>_174 ),
    .LI(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<11>_173 ),
    .O(\fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<11> )
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<11>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<10>_174 ),
    .DI(\fb_less_2d_gpu_i/rect_col_reg/r_q [11]),
    .S(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<11>_173 ),
    .O(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<11>_172 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<11>  (
    .I0(\fb_less_2d_gpu_i/rect_width_reg/r_q [11]),
    .I1(\fb_less_2d_gpu_i/rect_col_reg/r_q [11]),
    .O(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<11>_173 )
  );
  XORCY   \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_xor<10>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<9>_176 ),
    .LI(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<10>_175 ),
    .O(\fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<10> )
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<10>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<9>_176 ),
    .DI(\fb_less_2d_gpu_i/rect_col_reg/r_q [10]),
    .S(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<10>_175 ),
    .O(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<10>_174 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<10>  (
    .I0(\fb_less_2d_gpu_i/rect_width_reg/r_q [10]),
    .I1(\fb_less_2d_gpu_i/rect_col_reg/r_q [10]),
    .O(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<10>_175 )
  );
  XORCY   \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_xor<9>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<8>_178 ),
    .LI(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<9>_177 ),
    .O(\fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<9> )
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<9>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<8>_178 ),
    .DI(\fb_less_2d_gpu_i/rect_col_reg/r_q [9]),
    .S(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<9>_177 ),
    .O(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<9>_176 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<9>  (
    .I0(\fb_less_2d_gpu_i/rect_width_reg/r_q [9]),
    .I1(\fb_less_2d_gpu_i/rect_col_reg/r_q [9]),
    .O(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<9>_177 )
  );
  XORCY   \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_xor<8>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<7>_180 ),
    .LI(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<8>_179 ),
    .O(\fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<8> )
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<8>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<7>_180 ),
    .DI(\fb_less_2d_gpu_i/rect_col_reg/r_q [8]),
    .S(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<8>_179 ),
    .O(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<8>_178 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<8>  (
    .I0(\fb_less_2d_gpu_i/rect_width_reg/r_q [8]),
    .I1(\fb_less_2d_gpu_i/rect_col_reg/r_q [8]),
    .O(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<8>_179 )
  );
  XORCY   \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_xor<7>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<6>_182 ),
    .LI(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<7>_181 ),
    .O(\fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<7> )
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<7>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<6>_182 ),
    .DI(\fb_less_2d_gpu_i/rect_col_reg/r_q [7]),
    .S(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<7>_181 ),
    .O(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<7>_180 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<7>  (
    .I0(\fb_less_2d_gpu_i/rect_width_reg/r_q [7]),
    .I1(\fb_less_2d_gpu_i/rect_col_reg/r_q [7]),
    .O(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<7>_181 )
  );
  XORCY   \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_xor<6>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<5>_184 ),
    .LI(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<6>_183 ),
    .O(\fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<6> )
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<6>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<5>_184 ),
    .DI(\fb_less_2d_gpu_i/rect_col_reg/r_q [6]),
    .S(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<6>_183 ),
    .O(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<6>_182 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<6>  (
    .I0(\fb_less_2d_gpu_i/rect_width_reg/r_q [6]),
    .I1(\fb_less_2d_gpu_i/rect_col_reg/r_q [6]),
    .O(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<6>_183 )
  );
  XORCY   \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_xor<5>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<4>_186 ),
    .LI(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<5>_185 ),
    .O(\fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<5> )
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<5>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<4>_186 ),
    .DI(\fb_less_2d_gpu_i/rect_col_reg/r_q [5]),
    .S(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<5>_185 ),
    .O(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<5>_184 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<5>  (
    .I0(\fb_less_2d_gpu_i/rect_width_reg/r_q [5]),
    .I1(\fb_less_2d_gpu_i/rect_col_reg/r_q [5]),
    .O(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<5>_185 )
  );
  XORCY   \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_xor<4>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<3>_188 ),
    .LI(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<4>_187 ),
    .O(\fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<4> )
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<4>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<3>_188 ),
    .DI(\fb_less_2d_gpu_i/rect_col_reg/r_q [4]),
    .S(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<4>_187 ),
    .O(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<4>_186 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<4>  (
    .I0(\fb_less_2d_gpu_i/rect_width_reg/r_q [4]),
    .I1(\fb_less_2d_gpu_i/rect_col_reg/r_q [4]),
    .O(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<4>_187 )
  );
  XORCY   \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_xor<3>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<2>_190 ),
    .LI(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<3>_189 ),
    .O(\fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<3> )
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<3>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<2>_190 ),
    .DI(\fb_less_2d_gpu_i/rect_col_reg/r_q [3]),
    .S(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<3>_189 ),
    .O(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<3>_188 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<3>  (
    .I0(\fb_less_2d_gpu_i/rect_width_reg/r_q [3]),
    .I1(\fb_less_2d_gpu_i/rect_col_reg/r_q [3]),
    .O(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<3>_189 )
  );
  XORCY   \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_xor<2>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<1>_192 ),
    .LI(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<2>_191 ),
    .O(\fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<2> )
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<2>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<1>_192 ),
    .DI(\fb_less_2d_gpu_i/rect_col_reg/r_q [2]),
    .S(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<2>_191 ),
    .O(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<2>_190 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<2>  (
    .I0(\fb_less_2d_gpu_i/rect_width_reg/r_q [2]),
    .I1(\fb_less_2d_gpu_i/rect_col_reg/r_q [2]),
    .O(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<2>_191 )
  );
  XORCY   \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_xor<1>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<0>_194 ),
    .LI(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<1>_193 ),
    .O(\fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<1> )
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<1>  (
    .CI(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<0>_194 ),
    .DI(\fb_less_2d_gpu_i/rect_col_reg/r_q [1]),
    .S(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<1>_193 ),
    .O(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<1>_192 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<1>  (
    .I0(\fb_less_2d_gpu_i/rect_width_reg/r_q [1]),
    .I1(\fb_less_2d_gpu_i/rect_col_reg/r_q [1]),
    .O(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<1>_193 )
  );
  XORCY   \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_xor<0>  (
    .CI(red_o_0_OBUF_25),
    .LI(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<0>_195 ),
    .O(\fb_less_2d_gpu_i/rect_col_r[15]_rect_width_r[15]_add_61_OUT<0> )
  );
  MUXCY   \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<0>  (
    .CI(red_o_0_OBUF_25),
    .DI(\fb_less_2d_gpu_i/rect_col_reg/r_q [0]),
    .S(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<0>_195 ),
    .O(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_cy<0>_194 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<0>  (
    .I0(\fb_less_2d_gpu_i/rect_width_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/rect_col_reg/r_q [0]),
    .O(\fb_less_2d_gpu_i/Madd_rect_col_r[15]_rect_width_r[15]_add_61_OUT_lut<0>_195 )
  );
  MUXCY   \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_cy<4>  (
    .CI(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_cy<3>_199 ),
    .DI(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_lutdi4_198 ),
    .S(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_lut<4>_197 ),
    .O(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_cy<4>_196 )
  );
  LUT5 #(
    .INIT ( 32'h00009009 ))
  \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_lut<4>  (
    .I0(\vga_ctrl_i/pixel_x [8]),
    .I1(\fb_less_2d_gpu_i/rect_col_reg/r_q [8]),
    .I2(\vga_ctrl_i/pixel_x [9]),
    .I3(\fb_less_2d_gpu_i/rect_col_reg/r_q [9]),
    .I4(\fb_less_2d_gpu_i/rect_col_reg/r_q [10]),
    .O(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_lut<4>_197 )
  );
  LUT5 #(
    .INIT ( 32'hFFFF22B2 ))
  \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_lutdi4  (
    .I0(\fb_less_2d_gpu_i/rect_col_reg/r_q [9]),
    .I1(\vga_ctrl_i/pixel_x [9]),
    .I2(\fb_less_2d_gpu_i/rect_col_reg/r_q [8]),
    .I3(\vga_ctrl_i/pixel_x [8]),
    .I4(\fb_less_2d_gpu_i/rect_col_reg/r_q [10]),
    .O(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_lutdi4_198 )
  );
  MUXCY   \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_cy<3>  (
    .CI(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_cy<2>_202 ),
    .DI(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_lutdi3_201 ),
    .S(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_lut<3>_200 ),
    .O(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_cy<3>_199 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_lut<3>  (
    .I0(\vga_ctrl_i/pixel_x [6]),
    .I1(\fb_less_2d_gpu_i/rect_col_reg/r_q [6]),
    .I2(\vga_ctrl_i/pixel_x [7]),
    .I3(\fb_less_2d_gpu_i/rect_col_reg/r_q [7]),
    .O(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_lut<3>_200 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_lutdi3  (
    .I0(\fb_less_2d_gpu_i/rect_col_reg/r_q [7]),
    .I1(\fb_less_2d_gpu_i/rect_col_reg/r_q [6]),
    .I2(\vga_ctrl_i/pixel_x [6]),
    .I3(\vga_ctrl_i/pixel_x [7]),
    .O(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_lutdi3_201 )
  );
  MUXCY   \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_cy<2>  (
    .CI(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_cy<1>_205 ),
    .DI(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_lutdi2_204 ),
    .S(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_lut<2>_203 ),
    .O(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_cy<2>_202 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_lut<2>  (
    .I0(\vga_ctrl_i/pixel_x [4]),
    .I1(\fb_less_2d_gpu_i/rect_col_reg/r_q [4]),
    .I2(\vga_ctrl_i/pixel_x [5]),
    .I3(\fb_less_2d_gpu_i/rect_col_reg/r_q [5]),
    .O(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_lut<2>_203 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_lutdi2  (
    .I0(\fb_less_2d_gpu_i/rect_col_reg/r_q [5]),
    .I1(\fb_less_2d_gpu_i/rect_col_reg/r_q [4]),
    .I2(\vga_ctrl_i/pixel_x [4]),
    .I3(\vga_ctrl_i/pixel_x [5]),
    .O(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_lutdi2_204 )
  );
  MUXCY   \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_cy<1>  (
    .CI(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_cy<0>_208 ),
    .DI(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_lutdi1_207 ),
    .S(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_lut<1>_206 ),
    .O(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_cy<1>_205 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_lut<1>  (
    .I0(\vga_ctrl_i/pixel_x [2]),
    .I1(\fb_less_2d_gpu_i/rect_col_reg/r_q [2]),
    .I2(\vga_ctrl_i/pixel_x [3]),
    .I3(\fb_less_2d_gpu_i/rect_col_reg/r_q [3]),
    .O(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_lut<1>_206 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_lutdi1  (
    .I0(\fb_less_2d_gpu_i/rect_col_reg/r_q [3]),
    .I1(\fb_less_2d_gpu_i/rect_col_reg/r_q [2]),
    .I2(\vga_ctrl_i/pixel_x [2]),
    .I3(\vga_ctrl_i/pixel_x [3]),
    .O(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_lutdi1_207 )
  );
  MUXCY   \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_cy<0>  (
    .CI(pow_save_on_OBUF_33),
    .DI(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_lutdi_210 ),
    .S(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_lut<0>_209 ),
    .O(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_cy<0>_208 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_lut<0>  (
    .I0(\vga_ctrl_i/pixel_x [0]),
    .I1(\fb_less_2d_gpu_i/rect_col_reg/r_q [0]),
    .I2(\vga_ctrl_i/pixel_x [1]),
    .I3(\fb_less_2d_gpu_i/rect_col_reg/r_q [1]),
    .O(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_lut<0>_209 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_lutdi  (
    .I0(\fb_less_2d_gpu_i/rect_col_reg/r_q [1]),
    .I1(\fb_less_2d_gpu_i/rect_col_reg/r_q [0]),
    .I2(\vga_ctrl_i/pixel_x [0]),
    .I3(\vga_ctrl_i/pixel_x [1]),
    .O(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_lutdi_210 )
  );
  MUXCY   \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_cy<4>  (
    .CI(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_cy<3>_214 ),
    .DI(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_lutdi4_213 ),
    .S(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_lut<4>_212 ),
    .O(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_cy<4>_211 )
  );
  LUT5 #(
    .INIT ( 32'h01000001 ))
  \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_lut<4>  (
    .I0(\fb_less_2d_gpu_i/rect_row_reg/r_q [9]),
    .I1(\fb_less_2d_gpu_i/rect_row_reg/r_q [10]),
    .I2(\fb_less_2d_gpu_i/rect_row_reg/r_q [11]),
    .I3(\fb_less_2d_gpu_i/rect_row_reg/r_q [8]),
    .I4(\vga_ctrl_i/pixel_y [8]),
    .O(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_lut<4>_212 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFEEFE ))
  \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_lutdi4  (
    .I0(\fb_less_2d_gpu_i/rect_row_reg/r_q [9]),
    .I1(\fb_less_2d_gpu_i/rect_row_reg/r_q [11]),
    .I2(\fb_less_2d_gpu_i/rect_row_reg/r_q [8]),
    .I3(\vga_ctrl_i/pixel_y [8]),
    .I4(\fb_less_2d_gpu_i/rect_row_reg/r_q [10]),
    .O(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_lutdi4_213 )
  );
  MUXCY   \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_cy<3>  (
    .CI(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_cy<2>_217 ),
    .DI(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_lutdi3_216 ),
    .S(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_lut<3>_215 ),
    .O(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_cy<3>_214 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_lut<3>  (
    .I0(\vga_ctrl_i/pixel_y [6]),
    .I1(\fb_less_2d_gpu_i/rect_row_reg/r_q [6]),
    .I2(\vga_ctrl_i/pixel_y [7]),
    .I3(\fb_less_2d_gpu_i/rect_row_reg/r_q [7]),
    .O(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_lut<3>_215 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_lutdi3  (
    .I0(\fb_less_2d_gpu_i/rect_row_reg/r_q [7]),
    .I1(\fb_less_2d_gpu_i/rect_row_reg/r_q [6]),
    .I2(\vga_ctrl_i/pixel_y [6]),
    .I3(\vga_ctrl_i/pixel_y [7]),
    .O(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_lutdi3_216 )
  );
  MUXCY   \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_cy<2>  (
    .CI(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_cy<1>_220 ),
    .DI(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_lutdi2_219 ),
    .S(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_lut<2>_218 ),
    .O(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_cy<2>_217 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_lut<2>  (
    .I0(\vga_ctrl_i/pixel_y [4]),
    .I1(\fb_less_2d_gpu_i/rect_row_reg/r_q [4]),
    .I2(\vga_ctrl_i/pixel_y [5]),
    .I3(\fb_less_2d_gpu_i/rect_row_reg/r_q [5]),
    .O(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_lut<2>_218 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_lutdi2  (
    .I0(\fb_less_2d_gpu_i/rect_row_reg/r_q [5]),
    .I1(\fb_less_2d_gpu_i/rect_row_reg/r_q [4]),
    .I2(\vga_ctrl_i/pixel_y [4]),
    .I3(\vga_ctrl_i/pixel_y [5]),
    .O(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_lutdi2_219 )
  );
  MUXCY   \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_cy<1>  (
    .CI(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_cy<0>_223 ),
    .DI(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_lutdi1_222 ),
    .S(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_lut<1>_221 ),
    .O(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_cy<1>_220 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_lut<1>  (
    .I0(\vga_ctrl_i/pixel_y [2]),
    .I1(\fb_less_2d_gpu_i/rect_row_reg/r_q [2]),
    .I2(\vga_ctrl_i/pixel_y [3]),
    .I3(\fb_less_2d_gpu_i/rect_row_reg/r_q [3]),
    .O(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_lut<1>_221 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_lutdi1  (
    .I0(\fb_less_2d_gpu_i/rect_row_reg/r_q [3]),
    .I1(\fb_less_2d_gpu_i/rect_row_reg/r_q [2]),
    .I2(\vga_ctrl_i/pixel_y [2]),
    .I3(\vga_ctrl_i/pixel_y [3]),
    .O(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_lutdi1_222 )
  );
  MUXCY   \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_cy<0>  (
    .CI(pow_save_on_OBUF_33),
    .DI(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_lutdi_225 ),
    .S(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_lut<0>_224 ),
    .O(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_cy<0>_223 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_lut<0>  (
    .I0(\vga_ctrl_i/pixel_y [0]),
    .I1(\fb_less_2d_gpu_i/rect_row_reg/r_q [0]),
    .I2(\vga_ctrl_i/pixel_y [1]),
    .I3(\fb_less_2d_gpu_i/rect_row_reg/r_q [1]),
    .O(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_lut<0>_224 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_lutdi  (
    .I0(\fb_less_2d_gpu_i/rect_row_reg/r_q [1]),
    .I1(\fb_less_2d_gpu_i/rect_row_reg/r_q [0]),
    .I2(\vga_ctrl_i/pixel_y [0]),
    .I3(\vga_ctrl_i/pixel_y [1]),
    .O(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_lutdi_225 )
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
    .REGCEA(red_o_0_OBUF_25),
    .CLKA(clk_100MHz),
    .ENB(pow_save_on_OBUF_33),
    .RSTB(red_o_0_OBUF_25),
    .CLKB(clk_100MHz),
    .REGCEB(pow_save_on_OBUF_33),
    .RSTA(red_o_0_OBUF_25),
    .ENA(pow_save_on_OBUF_33),
    .DIPA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIPA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIPA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIPA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIPA<0>_UNCONNECTED }),
    .WEA({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25}),
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
    .ADDRA({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, 
red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_ADDRA<0>_UNCONNECTED }),
    .ADDRB({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, 
red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, pow_save_on_OBUF_33, \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_ADDRB<0>_UNCONNECTED 
}),
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
    .WEB({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25}),
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
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem15_DIA<2>_UNCONNECTED , red_o_0_OBUF_25, 
red_o_0_OBUF_25})
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
    .REGCEA(red_o_0_OBUF_25),
    .CLKA(clk_100MHz),
    .ENB(pow_save_on_OBUF_33),
    .RSTB(red_o_0_OBUF_25),
    .CLKB(clk_100MHz),
    .REGCEB(pow_save_on_OBUF_33),
    .RSTA(red_o_0_OBUF_25),
    .ENA(pow_save_on_OBUF_33),
    .DIPA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIPA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIPA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIPA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIPA<0>_UNCONNECTED }),
    .WEA({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25}),
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
    .ADDRA({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, 
red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_ADDRA<0>_UNCONNECTED }),
    .ADDRB({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, 
red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, pow_save_on_OBUF_33, \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_ADDRB<0>_UNCONNECTED 
}),
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
    .WEB({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25}),
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
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem14_DIA<2>_UNCONNECTED , red_o_0_OBUF_25, 
red_o_0_OBUF_25})
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
    .REGCEA(red_o_0_OBUF_25),
    .CLKA(clk_100MHz),
    .ENB(pow_save_on_OBUF_33),
    .RSTB(red_o_0_OBUF_25),
    .CLKB(clk_100MHz),
    .REGCEB(pow_save_on_OBUF_33),
    .RSTA(red_o_0_OBUF_25),
    .ENA(pow_save_on_OBUF_33),
    .DIPA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIPA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIPA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIPA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIPA<0>_UNCONNECTED }),
    .WEA({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25}),
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
    .ADDRA({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, 
red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_ADDRA<0>_UNCONNECTED }),
    .ADDRB({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, 
red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, pow_save_on_OBUF_33, \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_ADDRB<0>_UNCONNECTED 
}),
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
    .WEB({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25}),
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
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem16_DIA<2>_UNCONNECTED , red_o_0_OBUF_25, 
red_o_0_OBUF_25})
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
    .REGCEA(red_o_0_OBUF_25),
    .CLKA(clk_100MHz),
    .ENB(pow_save_on_OBUF_33),
    .RSTB(red_o_0_OBUF_25),
    .CLKB(clk_100MHz),
    .REGCEB(pow_save_on_OBUF_33),
    .RSTA(red_o_0_OBUF_25),
    .ENA(pow_save_on_OBUF_33),
    .DIPA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIPA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIPA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIPA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIPA<0>_UNCONNECTED }),
    .WEA({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25}),
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
    .ADDRA({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, 
red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_ADDRA<0>_UNCONNECTED }),
    .ADDRB({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, 
red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, pow_save_on_OBUF_33, \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_ADDRB<0>_UNCONNECTED 
}),
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
    .WEB({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25}),
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
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem13_DIA<2>_UNCONNECTED , red_o_0_OBUF_25, 
red_o_0_OBUF_25})
  );
  RAMB16BWER #(
    .INIT_00 ( 256'h00000000000000000000000004364015008801801A0604019000025000A90073 ),
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
    .REGCEA(red_o_0_OBUF_25),
    .CLKA(clk_100MHz),
    .ENB(pow_save_on_OBUF_33),
    .RSTB(red_o_0_OBUF_25),
    .CLKB(clk_100MHz),
    .REGCEB(pow_save_on_OBUF_33),
    .RSTA(red_o_0_OBUF_25),
    .ENA(pow_save_on_OBUF_33),
    .DIPA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIPA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIPA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIPA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIPA<0>_UNCONNECTED }),
    .WEA({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25}),
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
    .ADDRA({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, 
red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_ADDRA<0>_UNCONNECTED }),
    .ADDRB({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, 
red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, pow_save_on_OBUF_33, \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_ADDRB<0>_UNCONNECTED 
}),
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
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DOB<2>_UNCONNECTED , 
\fb_less_2d_gpu_i/mem_data_s [23], \fb_less_2d_gpu_i/mem_data_s [22]}),
    .WEB({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25}),
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
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem12_DIA<2>_UNCONNECTED , red_o_0_OBUF_25, 
red_o_0_OBUF_25})
  );
  RAMB16BWER #(
    .INIT_00 ( 256'h000000000000000000000003F0343FEAFF22FF21F1FCF06B3BC0F8DF5F04FF33 ),
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
    .REGCEA(red_o_0_OBUF_25),
    .CLKA(clk_100MHz),
    .ENB(pow_save_on_OBUF_33),
    .RSTB(red_o_0_OBUF_25),
    .CLKB(clk_100MHz),
    .REGCEB(pow_save_on_OBUF_33),
    .RSTA(red_o_0_OBUF_25),
    .ENA(pow_save_on_OBUF_33),
    .DIPA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIPA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIPA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIPA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIPA<0>_UNCONNECTED }),
    .WEA({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25}),
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
    .ADDRA({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, 
red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_ADDRA<0>_UNCONNECTED }),
    .ADDRB({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, 
red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, pow_save_on_OBUF_33, \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_ADDRB<0>_UNCONNECTED 
}),
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
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DOB<2>_UNCONNECTED , 
\fb_less_2d_gpu_i/mem_data_s [21], \fb_less_2d_gpu_i/mem_data_s [20]}),
    .WEB({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25}),
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
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem11_DIA<2>_UNCONNECTED , red_o_0_OBUF_25, 
red_o_0_OBUF_25})
  );
  RAMB16BWER #(
    .INIT_00 ( 256'h000000000000000000000000103A93A637F92677A00F70E28D59D3EDFAD6690F ),
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
    .REGCEA(red_o_0_OBUF_25),
    .CLKA(clk_100MHz),
    .ENB(pow_save_on_OBUF_33),
    .RSTB(red_o_0_OBUF_25),
    .CLKB(clk_100MHz),
    .REGCEB(pow_save_on_OBUF_33),
    .RSTA(red_o_0_OBUF_25),
    .ENA(pow_save_on_OBUF_33),
    .DIPA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIPA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIPA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIPA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIPA<0>_UNCONNECTED }),
    .WEA({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25}),
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
    .ADDRA({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, 
red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_ADDRA<0>_UNCONNECTED }),
    .ADDRB({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, 
red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, pow_save_on_OBUF_33, \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_ADDRB<0>_UNCONNECTED 
}),
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
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DOB<2>_UNCONNECTED , 
\fb_less_2d_gpu_i/mem_data_s [19], \fb_less_2d_gpu_i/mem_data_s [18]}),
    .WEB({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25}),
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
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem10_DIA<2>_UNCONNECTED , red_o_0_OBUF_25, 
red_o_0_OBUF_25})
  );
  RAMB16BWER #(
    .INIT_00 ( 256'h00000000000000000000000000308A65476AF83320C814366301202C87B3788F ),
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
    .REGCEA(red_o_0_OBUF_25),
    .CLKA(clk_100MHz),
    .ENB(pow_save_on_OBUF_33),
    .RSTB(red_o_0_OBUF_25),
    .CLKB(clk_100MHz),
    .REGCEB(pow_save_on_OBUF_33),
    .RSTA(red_o_0_OBUF_25),
    .ENA(pow_save_on_OBUF_33),
    .DIPA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIPA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIPA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIPA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIPA<0>_UNCONNECTED }),
    .WEA({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25}),
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
    .ADDRA({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, 
red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_ADDRA<0>_UNCONNECTED }),
    .ADDRB({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, 
red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, pow_save_on_OBUF_33, \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_ADDRB<0>_UNCONNECTED })
,
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
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DOB<2>_UNCONNECTED , 
\fb_less_2d_gpu_i/mem_data_s [17], \fb_less_2d_gpu_i/mem_data_s [16]}),
    .WEB({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25}),
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
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem9_DIA<2>_UNCONNECTED , red_o_0_OBUF_25, red_o_0_OBUF_25
})
  );
  RAMB16BWER #(
    .INIT_00 ( 256'h000000000000000000000002A936AAAAAA66AAA195AAA8696A85AAAA5A96AA00 ),
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
    .REGCEA(red_o_0_OBUF_25),
    .CLKA(clk_100MHz),
    .ENB(pow_save_on_OBUF_33),
    .RSTB(red_o_0_OBUF_25),
    .CLKB(clk_100MHz),
    .REGCEB(pow_save_on_OBUF_33),
    .RSTA(red_o_0_OBUF_25),
    .ENA(pow_save_on_OBUF_33),
    .DIPA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIPA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIPA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIPA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIPA<0>_UNCONNECTED }),
    .WEA({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25}),
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
    .ADDRA({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, 
red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_ADDRA<0>_UNCONNECTED }),
    .ADDRB({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, 
red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, pow_save_on_OBUF_33, \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_ADDRB<0>_UNCONNECTED })
,
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
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DOB<2>_UNCONNECTED , 
\fb_less_2d_gpu_i/mem_data_s [15], \fb_less_2d_gpu_i/mem_data_s [14]}),
    .WEB({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25}),
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
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem8_DIA<2>_UNCONNECTED , red_o_0_OBUF_25, red_o_0_OBUF_25
})
  );
  RAMB16BWER #(
    .INIT_00 ( 256'h0000000000000000000000015BF0554055DD941E7F50AB93C5709005A53D5500 ),
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
    .REGCEA(red_o_0_OBUF_25),
    .CLKA(clk_100MHz),
    .ENB(pow_save_on_OBUF_33),
    .RSTB(red_o_0_OBUF_25),
    .CLKB(clk_100MHz),
    .REGCEB(pow_save_on_OBUF_33),
    .RSTA(red_o_0_OBUF_25),
    .ENA(pow_save_on_OBUF_33),
    .DIPA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIPA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIPA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIPA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIPA<0>_UNCONNECTED }),
    .WEA({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25}),
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
    .ADDRA({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, 
red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_ADDRA<0>_UNCONNECTED }),
    .ADDRB({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, 
red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, pow_save_on_OBUF_33, \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_ADDRB<0>_UNCONNECTED })
,
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
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DOB<2>_UNCONNECTED , 
\fb_less_2d_gpu_i/mem_data_s [13], \fb_less_2d_gpu_i/mem_data_s [12]}),
    .WEB({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25}),
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
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem7_DIA<2>_UNCONNECTED , red_o_0_OBUF_25, red_o_0_OBUF_25
})
  );
  RAMB16BWER #(
    .INIT_00 ( 256'h00000000000000000000000237B2296AA9EF192F87A0098CDA341835EE7CBD00 ),
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
    .REGCEA(red_o_0_OBUF_25),
    .CLKA(clk_100MHz),
    .ENB(pow_save_on_OBUF_33),
    .RSTB(red_o_0_OBUF_25),
    .CLKB(clk_100MHz),
    .REGCEB(pow_save_on_OBUF_33),
    .RSTA(red_o_0_OBUF_25),
    .ENA(pow_save_on_OBUF_33),
    .DIPA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIPA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIPA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIPA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIPA<0>_UNCONNECTED }),
    .WEA({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25}),
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
    .ADDRA({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, 
red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_ADDRA<0>_UNCONNECTED }),
    .ADDRB({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, 
red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, pow_save_on_OBUF_33, \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_ADDRB<0>_UNCONNECTED })
,
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
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DOB<2>_UNCONNECTED , 
\fb_less_2d_gpu_i/mem_data_s [11], \fb_less_2d_gpu_i/mem_data_s [10]}),
    .WEB({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25}),
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
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem6_DIA<2>_UNCONNECTED , red_o_0_OBUF_25, red_o_0_OBUF_25
})
  );
  RAMB16BWER #(
    .INIT_00 ( 256'h000000000000000000000002903055D861ADB1691D6CC110AD783D9906915600 ),
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
    .REGCEA(red_o_0_OBUF_25),
    .CLKA(clk_100MHz),
    .ENB(pow_save_on_OBUF_33),
    .RSTB(red_o_0_OBUF_25),
    .CLKB(clk_100MHz),
    .REGCEB(pow_save_on_OBUF_33),
    .RSTA(red_o_0_OBUF_25),
    .ENA(pow_save_on_OBUF_33),
    .DIPA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIPA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIPA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIPA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIPA<0>_UNCONNECTED }),
    .WEA({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25}),
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
    .ADDRA({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, 
red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_ADDRA<0>_UNCONNECTED }),
    .ADDRB({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, 
red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, pow_save_on_OBUF_33, \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_ADDRB<0>_UNCONNECTED })
,
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
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DOB<2>_UNCONNECTED , \fb_less_2d_gpu_i/mem_data_s [9]
, \fb_less_2d_gpu_i/mem_data_s [8]}),
    .WEB({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25}),
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
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem5_DIA<2>_UNCONNECTED , red_o_0_OBUF_25, red_o_0_OBUF_25
})
  );
  RAMB16BWER #(
    .INIT_00 ( 256'h000000000000000000000003FEC0FFD5FF33FC3BC0F0FEFC1FFFFC2FFF03FFF3 ),
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
    .REGCEA(red_o_0_OBUF_25),
    .CLKA(clk_100MHz),
    .ENB(pow_save_on_OBUF_33),
    .RSTB(red_o_0_OBUF_25),
    .CLKB(clk_100MHz),
    .REGCEB(pow_save_on_OBUF_33),
    .RSTA(red_o_0_OBUF_25),
    .ENA(pow_save_on_OBUF_33),
    .DIPA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIPA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIPA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIPA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIPA<0>_UNCONNECTED }),
    .WEA({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25}),
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
    .ADDRA({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, 
red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_ADDRA<0>_UNCONNECTED }),
    .ADDRB({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, 
red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, pow_save_on_OBUF_33, \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_ADDRB<0>_UNCONNECTED })
,
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
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DOB<2>_UNCONNECTED , \fb_less_2d_gpu_i/mem_data_s [7]
, \fb_less_2d_gpu_i/mem_data_s [6]}),
    .WEB({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25}),
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
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem4_DIA<2>_UNCONNECTED , red_o_0_OBUF_25, red_o_0_OBUF_25
})
  );
  RAMB16BWER #(
    .INIT_00 ( 256'h000000000000000000000002AEC03ED9FE33EF3DC0F4FF7C0FC0FC4B5F00FFF3 ),
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
    .REGCEA(red_o_0_OBUF_25),
    .CLKA(clk_100MHz),
    .ENB(pow_save_on_OBUF_33),
    .RSTB(red_o_0_OBUF_25),
    .CLKB(clk_100MHz),
    .REGCEB(pow_save_on_OBUF_33),
    .RSTA(red_o_0_OBUF_25),
    .ENA(pow_save_on_OBUF_33),
    .DIPA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIPA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIPA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIPA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIPA<0>_UNCONNECTED }),
    .WEA({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25}),
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
    .ADDRA({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, 
red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_ADDRA<0>_UNCONNECTED }),
    .ADDRB({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, 
red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, pow_save_on_OBUF_33, \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_ADDRB<0>_UNCONNECTED })
,
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
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DOB<2>_UNCONNECTED , \fb_less_2d_gpu_i/mem_data_s [5]
, \fb_less_2d_gpu_i/mem_data_s [4]}),
    .WEB({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25}),
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
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem3_DIA<2>_UNCONNECTED , red_o_0_OBUF_25, red_o_0_OBUF_25
})
  );
  RAMB16BWER #(
    .INIT_00 ( 256'h0000000000000000000000023F803E7FFD33FCBFC0FCFEA80F44F8F7EFC0FF8F ),
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
    .REGCEA(red_o_0_OBUF_25),
    .CLKA(clk_100MHz),
    .ENB(pow_save_on_OBUF_33),
    .RSTB(red_o_0_OBUF_25),
    .CLKB(clk_100MHz),
    .REGCEB(pow_save_on_OBUF_33),
    .RSTA(red_o_0_OBUF_25),
    .ENA(pow_save_on_OBUF_33),
    .DIPA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIPA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIPA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIPA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIPA<0>_UNCONNECTED }),
    .WEA({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25}),
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
    .ADDRA({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, 
red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_ADDRA<0>_UNCONNECTED }),
    .ADDRB({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, 
red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, pow_save_on_OBUF_33, \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_ADDRB<0>_UNCONNECTED })
,
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
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DOB<2>_UNCONNECTED , \fb_less_2d_gpu_i/mem_data_s [3]
, \fb_less_2d_gpu_i/mem_data_s [2]}),
    .WEB({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25}),
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
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem2_DIA<2>_UNCONNECTED , red_o_0_OBUF_25, red_o_0_OBUF_25
})
  );
  RAMB16BWER #(
    .INIT_00 ( 256'h0000000000000000000000023C003CE3CC33FD7A00F0FCBC0FD0CCABBC80FCCF ),
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
    .REGCEA(red_o_0_OBUF_25),
    .CLKA(clk_100MHz),
    .ENB(pow_save_on_OBUF_33),
    .RSTB(red_o_0_OBUF_25),
    .CLKB(clk_100MHz),
    .REGCEB(pow_save_on_OBUF_33),
    .RSTA(red_o_0_OBUF_25),
    .ENA(pow_save_on_OBUF_33),
    .DIPA({\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIPA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIPA<2>_UNCONNECTED , 
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIPA<1>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIPA<0>_UNCONNECTED }),
    .WEA({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25}),
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
    .ADDRA({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, 
red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_ADDRA<0>_UNCONNECTED }),
    .ADDRB({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, 
red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, pow_save_on_OBUF_33, \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_ADDRB<0>_UNCONNECTED })
,
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
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DOB<2>_UNCONNECTED , \fb_less_2d_gpu_i/mem_data_s [1]
, \fb_less_2d_gpu_i/mem_data_s [0]}),
    .WEB({red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25, red_o_0_OBUF_25}),
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
\NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<3>_UNCONNECTED , \NLW_fb_less_2d_gpu_i/ram_i/Mram_mem1_DIA<2>_UNCONNECTED , red_o_0_OBUF_25, red_o_0_OBUF_25
})
  );
  FDC   \fb_less_2d_gpu_i/phase_reg/r_q_0  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/_n0813 ),
    .Q(\fb_less_2d_gpu_i/phase_reg/r_q [0])
  );
  FDC   \fb_less_2d_gpu_i/rgb_reg/r_q  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(pow_save_on_OBUF_33),
    .Q(\fb_less_2d_gpu_i/rgb_reg/r_q_393 )
  );
  FDC   \fb_less_2d_gpu_i/rect_row_reg/r_q_15  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_row_s [15]),
    .Q(\fb_less_2d_gpu_i/rect_row_reg/r_q [15])
  );
  FDC   \fb_less_2d_gpu_i/rect_row_reg/r_q_14  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_row_s [14]),
    .Q(\fb_less_2d_gpu_i/rect_row_reg/r_q [14])
  );
  FDC   \fb_less_2d_gpu_i/rect_row_reg/r_q_13  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_row_s [13]),
    .Q(\fb_less_2d_gpu_i/rect_row_reg/r_q [13])
  );
  FDC   \fb_less_2d_gpu_i/rect_row_reg/r_q_12  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_row_s [12]),
    .Q(\fb_less_2d_gpu_i/rect_row_reg/r_q [12])
  );
  FDC   \fb_less_2d_gpu_i/rect_row_reg/r_q_11  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_row_s [11]),
    .Q(\fb_less_2d_gpu_i/rect_row_reg/r_q [11])
  );
  FDC   \fb_less_2d_gpu_i/rect_row_reg/r_q_10  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_row_s [10]),
    .Q(\fb_less_2d_gpu_i/rect_row_reg/r_q [10])
  );
  FDC   \fb_less_2d_gpu_i/rect_row_reg/r_q_9  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_row_s [9]),
    .Q(\fb_less_2d_gpu_i/rect_row_reg/r_q [9])
  );
  FDC   \fb_less_2d_gpu_i/rect_row_reg/r_q_8  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_row_s [8]),
    .Q(\fb_less_2d_gpu_i/rect_row_reg/r_q [8])
  );
  FDC   \fb_less_2d_gpu_i/rect_row_reg/r_q_7  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_row_s [7]),
    .Q(\fb_less_2d_gpu_i/rect_row_reg/r_q [7])
  );
  FDC   \fb_less_2d_gpu_i/rect_row_reg/r_q_6  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_row_s [6]),
    .Q(\fb_less_2d_gpu_i/rect_row_reg/r_q [6])
  );
  FDC   \fb_less_2d_gpu_i/rect_row_reg/r_q_5  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_row_s [5]),
    .Q(\fb_less_2d_gpu_i/rect_row_reg/r_q [5])
  );
  FDC   \fb_less_2d_gpu_i/rect_row_reg/r_q_4  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_row_s [4]),
    .Q(\fb_less_2d_gpu_i/rect_row_reg/r_q [4])
  );
  FDC   \fb_less_2d_gpu_i/rect_row_reg/r_q_3  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_row_s [3]),
    .Q(\fb_less_2d_gpu_i/rect_row_reg/r_q [3])
  );
  FDC   \fb_less_2d_gpu_i/rect_row_reg/r_q_2  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_row_s [2]),
    .Q(\fb_less_2d_gpu_i/rect_row_reg/r_q [2])
  );
  FDC   \fb_less_2d_gpu_i/rect_row_reg/r_q_1  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_row_s [1]),
    .Q(\fb_less_2d_gpu_i/rect_row_reg/r_q [1])
  );
  FDC   \fb_less_2d_gpu_i/rect_row_reg/r_q_0  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_row_s [0]),
    .Q(\fb_less_2d_gpu_i/rect_row_reg/r_q [0])
  );
  FDC   \fb_less_2d_gpu_i/rect_col_reg/r_q_15  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_col_s [15]),
    .Q(\fb_less_2d_gpu_i/rect_col_reg/r_q [15])
  );
  FDC   \fb_less_2d_gpu_i/rect_col_reg/r_q_14  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_col_s [14]),
    .Q(\fb_less_2d_gpu_i/rect_col_reg/r_q [14])
  );
  FDC   \fb_less_2d_gpu_i/rect_col_reg/r_q_13  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_col_s [13]),
    .Q(\fb_less_2d_gpu_i/rect_col_reg/r_q [13])
  );
  FDC   \fb_less_2d_gpu_i/rect_col_reg/r_q_12  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_col_s [12]),
    .Q(\fb_less_2d_gpu_i/rect_col_reg/r_q [12])
  );
  FDC   \fb_less_2d_gpu_i/rect_col_reg/r_q_11  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_col_s [11]),
    .Q(\fb_less_2d_gpu_i/rect_col_reg/r_q [11])
  );
  FDC   \fb_less_2d_gpu_i/rect_col_reg/r_q_10  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_col_s [10]),
    .Q(\fb_less_2d_gpu_i/rect_col_reg/r_q [10])
  );
  FDC   \fb_less_2d_gpu_i/rect_col_reg/r_q_9  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_col_s [9]),
    .Q(\fb_less_2d_gpu_i/rect_col_reg/r_q [9])
  );
  FDC   \fb_less_2d_gpu_i/rect_col_reg/r_q_8  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_col_s [8]),
    .Q(\fb_less_2d_gpu_i/rect_col_reg/r_q [8])
  );
  FDC   \fb_less_2d_gpu_i/rect_col_reg/r_q_7  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_col_s [7]),
    .Q(\fb_less_2d_gpu_i/rect_col_reg/r_q [7])
  );
  FDC   \fb_less_2d_gpu_i/rect_col_reg/r_q_6  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_col_s [6]),
    .Q(\fb_less_2d_gpu_i/rect_col_reg/r_q [6])
  );
  FDC   \fb_less_2d_gpu_i/rect_col_reg/r_q_5  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_col_s [5]),
    .Q(\fb_less_2d_gpu_i/rect_col_reg/r_q [5])
  );
  FDC   \fb_less_2d_gpu_i/rect_col_reg/r_q_4  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_col_s [4]),
    .Q(\fb_less_2d_gpu_i/rect_col_reg/r_q [4])
  );
  FDC   \fb_less_2d_gpu_i/rect_col_reg/r_q_3  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_col_s [3]),
    .Q(\fb_less_2d_gpu_i/rect_col_reg/r_q [3])
  );
  FDC   \fb_less_2d_gpu_i/rect_col_reg/r_q_2  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_col_s [2]),
    .Q(\fb_less_2d_gpu_i/rect_col_reg/r_q [2])
  );
  FDC   \fb_less_2d_gpu_i/rect_col_reg/r_q_1  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_col_s [1]),
    .Q(\fb_less_2d_gpu_i/rect_col_reg/r_q [1])
  );
  FDC   \fb_less_2d_gpu_i/rect_col_reg/r_q_0  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_col_s [0]),
    .Q(\fb_less_2d_gpu_i/rect_col_reg/r_q [0])
  );
  FDC   \fb_less_2d_gpu_i/rect_height_reg/r_q_15  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_height_s [15]),
    .Q(\fb_less_2d_gpu_i/rect_height_reg/r_q [15])
  );
  FDC   \fb_less_2d_gpu_i/rect_height_reg/r_q_14  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_height_s [14]),
    .Q(\fb_less_2d_gpu_i/rect_height_reg/r_q [14])
  );
  FDC   \fb_less_2d_gpu_i/rect_height_reg/r_q_13  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_height_s [13]),
    .Q(\fb_less_2d_gpu_i/rect_height_reg/r_q [13])
  );
  FDC   \fb_less_2d_gpu_i/rect_height_reg/r_q_12  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_height_s [12]),
    .Q(\fb_less_2d_gpu_i/rect_height_reg/r_q [12])
  );
  FDC   \fb_less_2d_gpu_i/rect_height_reg/r_q_11  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_height_s [11]),
    .Q(\fb_less_2d_gpu_i/rect_height_reg/r_q [11])
  );
  FDC   \fb_less_2d_gpu_i/rect_height_reg/r_q_10  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_height_s [10]),
    .Q(\fb_less_2d_gpu_i/rect_height_reg/r_q [10])
  );
  FDC   \fb_less_2d_gpu_i/rect_height_reg/r_q_9  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_height_s [9]),
    .Q(\fb_less_2d_gpu_i/rect_height_reg/r_q [9])
  );
  FDC   \fb_less_2d_gpu_i/rect_height_reg/r_q_8  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_height_s [8]),
    .Q(\fb_less_2d_gpu_i/rect_height_reg/r_q [8])
  );
  FDC   \fb_less_2d_gpu_i/rect_height_reg/r_q_7  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_height_s [7]),
    .Q(\fb_less_2d_gpu_i/rect_height_reg/r_q [7])
  );
  FDC   \fb_less_2d_gpu_i/rect_height_reg/r_q_6  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_height_s [6]),
    .Q(\fb_less_2d_gpu_i/rect_height_reg/r_q [6])
  );
  FDC   \fb_less_2d_gpu_i/rect_height_reg/r_q_5  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_height_s [5]),
    .Q(\fb_less_2d_gpu_i/rect_height_reg/r_q [5])
  );
  FDC   \fb_less_2d_gpu_i/rect_height_reg/r_q_4  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_height_s [4]),
    .Q(\fb_less_2d_gpu_i/rect_height_reg/r_q [4])
  );
  FDC   \fb_less_2d_gpu_i/rect_height_reg/r_q_3  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_height_s [3]),
    .Q(\fb_less_2d_gpu_i/rect_height_reg/r_q [3])
  );
  FDC   \fb_less_2d_gpu_i/rect_height_reg/r_q_2  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_height_s [2]),
    .Q(\fb_less_2d_gpu_i/rect_height_reg/r_q [2])
  );
  FDC   \fb_less_2d_gpu_i/rect_height_reg/r_q_1  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_height_s [1]),
    .Q(\fb_less_2d_gpu_i/rect_height_reg/r_q [1])
  );
  FDC   \fb_less_2d_gpu_i/rect_height_reg/r_q_0  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_height_s [0]),
    .Q(\fb_less_2d_gpu_i/rect_height_reg/r_q [0])
  );
  FDC   \fb_less_2d_gpu_i/rect_width_reg/r_q_15  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_width_s [15]),
    .Q(\fb_less_2d_gpu_i/rect_width_reg/r_q [15])
  );
  FDC   \fb_less_2d_gpu_i/rect_width_reg/r_q_14  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_width_s [14]),
    .Q(\fb_less_2d_gpu_i/rect_width_reg/r_q [14])
  );
  FDC   \fb_less_2d_gpu_i/rect_width_reg/r_q_13  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_width_s [13]),
    .Q(\fb_less_2d_gpu_i/rect_width_reg/r_q [13])
  );
  FDC   \fb_less_2d_gpu_i/rect_width_reg/r_q_12  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_width_s [12]),
    .Q(\fb_less_2d_gpu_i/rect_width_reg/r_q [12])
  );
  FDC   \fb_less_2d_gpu_i/rect_width_reg/r_q_11  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_width_s [11]),
    .Q(\fb_less_2d_gpu_i/rect_width_reg/r_q [11])
  );
  FDC   \fb_less_2d_gpu_i/rect_width_reg/r_q_10  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_width_s [10]),
    .Q(\fb_less_2d_gpu_i/rect_width_reg/r_q [10])
  );
  FDC   \fb_less_2d_gpu_i/rect_width_reg/r_q_9  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_width_s [9]),
    .Q(\fb_less_2d_gpu_i/rect_width_reg/r_q [9])
  );
  FDC   \fb_less_2d_gpu_i/rect_width_reg/r_q_8  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_width_s [8]),
    .Q(\fb_less_2d_gpu_i/rect_width_reg/r_q [8])
  );
  FDC   \fb_less_2d_gpu_i/rect_width_reg/r_q_7  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_width_s [7]),
    .Q(\fb_less_2d_gpu_i/rect_width_reg/r_q [7])
  );
  FDC   \fb_less_2d_gpu_i/rect_width_reg/r_q_6  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_width_s [6]),
    .Q(\fb_less_2d_gpu_i/rect_width_reg/r_q [6])
  );
  FDC   \fb_less_2d_gpu_i/rect_width_reg/r_q_5  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_width_s [5]),
    .Q(\fb_less_2d_gpu_i/rect_width_reg/r_q [5])
  );
  FDC   \fb_less_2d_gpu_i/rect_width_reg/r_q_4  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_width_s [4]),
    .Q(\fb_less_2d_gpu_i/rect_width_reg/r_q [4])
  );
  FDC   \fb_less_2d_gpu_i/rect_width_reg/r_q_3  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_width_s [3]),
    .Q(\fb_less_2d_gpu_i/rect_width_reg/r_q [3])
  );
  FDC   \fb_less_2d_gpu_i/rect_width_reg/r_q_2  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_width_s [2]),
    .Q(\fb_less_2d_gpu_i/rect_width_reg/r_q [2])
  );
  FDC   \fb_less_2d_gpu_i/rect_width_reg/r_q_1  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_width_s [1]),
    .Q(\fb_less_2d_gpu_i/rect_width_reg/r_q [1])
  );
  FDC   \fb_less_2d_gpu_i/rect_width_reg/r_q_0  (
    .C(clk_100MHz),
    .CLR(\fb_less_2d_gpu_i/phase_reg/in_rst_inv ),
    .D(\fb_less_2d_gpu_i/rect_width_s [0]),
    .Q(\fb_less_2d_gpu_i/rect_width_reg/r_q [0])
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
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_col_s17  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/rect_col_reg/r_q [0]),
    .I2(\fb_less_2d_gpu_i/mem_data_s [0]),
    .O(\fb_less_2d_gpu_i/rect_col_s [0])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_col_s21  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/rect_col_reg/r_q [10]),
    .I2(\fb_less_2d_gpu_i/mem_data_s [10]),
    .O(\fb_less_2d_gpu_i/rect_col_s [10])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_col_s31  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/rect_col_reg/r_q [11]),
    .I2(\fb_less_2d_gpu_i/mem_data_s [11]),
    .O(\fb_less_2d_gpu_i/rect_col_s [11])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_col_s41  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/rect_col_reg/r_q [12]),
    .I2(\fb_less_2d_gpu_i/mem_data_s [12]),
    .O(\fb_less_2d_gpu_i/rect_col_s [12])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_col_s51  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/rect_col_reg/r_q [13]),
    .I2(\fb_less_2d_gpu_i/mem_data_s [13]),
    .O(\fb_less_2d_gpu_i/rect_col_s [13])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_col_s61  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/rect_col_reg/r_q [14]),
    .I2(\fb_less_2d_gpu_i/mem_data_s [14]),
    .O(\fb_less_2d_gpu_i/rect_col_s [14])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_col_s71  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/rect_col_reg/r_q [15]),
    .I2(\fb_less_2d_gpu_i/mem_data_s [15]),
    .O(\fb_less_2d_gpu_i/rect_col_s [15])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_col_s81  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/rect_col_reg/r_q [1]),
    .I2(\fb_less_2d_gpu_i/mem_data_s [1]),
    .O(\fb_less_2d_gpu_i/rect_col_s [1])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_col_s91  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/rect_col_reg/r_q [2]),
    .I2(\fb_less_2d_gpu_i/mem_data_s [2]),
    .O(\fb_less_2d_gpu_i/rect_col_s [2])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_col_s101  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/rect_col_reg/r_q [3]),
    .I2(\fb_less_2d_gpu_i/mem_data_s [3]),
    .O(\fb_less_2d_gpu_i/rect_col_s [3])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_col_s111  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/rect_col_reg/r_q [4]),
    .I2(\fb_less_2d_gpu_i/mem_data_s [4]),
    .O(\fb_less_2d_gpu_i/rect_col_s [4])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_col_s121  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/rect_col_reg/r_q [5]),
    .I2(\fb_less_2d_gpu_i/mem_data_s [5]),
    .O(\fb_less_2d_gpu_i/rect_col_s [5])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_col_s131  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/rect_col_reg/r_q [6]),
    .I2(\fb_less_2d_gpu_i/mem_data_s [6]),
    .O(\fb_less_2d_gpu_i/rect_col_s [6])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_col_s141  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/rect_col_reg/r_q [7]),
    .I2(\fb_less_2d_gpu_i/mem_data_s [7]),
    .O(\fb_less_2d_gpu_i/rect_col_s [7])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_col_s151  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/rect_col_reg/r_q [8]),
    .I2(\fb_less_2d_gpu_i/mem_data_s [8]),
    .O(\fb_less_2d_gpu_i/rect_col_s [8])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_col_s161  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/rect_col_reg/r_q [9]),
    .I2(\fb_less_2d_gpu_i/mem_data_s [9]),
    .O(\fb_less_2d_gpu_i/rect_col_s [9])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_height_s17  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/mem_data_s [0]),
    .I2(\fb_less_2d_gpu_i/rect_height_reg/r_q [0]),
    .O(\fb_less_2d_gpu_i/rect_height_s [0])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_height_s21  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/mem_data_s [10]),
    .I2(\fb_less_2d_gpu_i/rect_height_reg/r_q [10]),
    .O(\fb_less_2d_gpu_i/rect_height_s [10])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_height_s31  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/mem_data_s [11]),
    .I2(\fb_less_2d_gpu_i/rect_height_reg/r_q [11]),
    .O(\fb_less_2d_gpu_i/rect_height_s [11])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_height_s41  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/mem_data_s [12]),
    .I2(\fb_less_2d_gpu_i/rect_height_reg/r_q [12]),
    .O(\fb_less_2d_gpu_i/rect_height_s [12])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_height_s51  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/mem_data_s [13]),
    .I2(\fb_less_2d_gpu_i/rect_height_reg/r_q [13]),
    .O(\fb_less_2d_gpu_i/rect_height_s [13])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_height_s61  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/mem_data_s [14]),
    .I2(\fb_less_2d_gpu_i/rect_height_reg/r_q [14]),
    .O(\fb_less_2d_gpu_i/rect_height_s [14])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_height_s71  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/mem_data_s [15]),
    .I2(\fb_less_2d_gpu_i/rect_height_reg/r_q [15]),
    .O(\fb_less_2d_gpu_i/rect_height_s [15])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_height_s81  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/mem_data_s [1]),
    .I2(\fb_less_2d_gpu_i/rect_height_reg/r_q [1]),
    .O(\fb_less_2d_gpu_i/rect_height_s [1])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_height_s91  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/mem_data_s [2]),
    .I2(\fb_less_2d_gpu_i/rect_height_reg/r_q [2]),
    .O(\fb_less_2d_gpu_i/rect_height_s [2])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_height_s101  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/mem_data_s [3]),
    .I2(\fb_less_2d_gpu_i/rect_height_reg/r_q [3]),
    .O(\fb_less_2d_gpu_i/rect_height_s [3])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_height_s111  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/mem_data_s [4]),
    .I2(\fb_less_2d_gpu_i/rect_height_reg/r_q [4]),
    .O(\fb_less_2d_gpu_i/rect_height_s [4])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_height_s121  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/mem_data_s [5]),
    .I2(\fb_less_2d_gpu_i/rect_height_reg/r_q [5]),
    .O(\fb_less_2d_gpu_i/rect_height_s [5])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_height_s131  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/mem_data_s [6]),
    .I2(\fb_less_2d_gpu_i/rect_height_reg/r_q [6]),
    .O(\fb_less_2d_gpu_i/rect_height_s [6])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_height_s141  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/mem_data_s [7]),
    .I2(\fb_less_2d_gpu_i/rect_height_reg/r_q [7]),
    .O(\fb_less_2d_gpu_i/rect_height_s [7])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_height_s151  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/mem_data_s [8]),
    .I2(\fb_less_2d_gpu_i/rect_height_reg/r_q [8]),
    .O(\fb_less_2d_gpu_i/rect_height_s [8])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_height_s161  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/mem_data_s [9]),
    .I2(\fb_less_2d_gpu_i/rect_height_reg/r_q [9]),
    .O(\fb_less_2d_gpu_i/rect_height_s [9])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_row_s17  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/rect_row_reg/r_q [0]),
    .I2(\fb_less_2d_gpu_i/mem_data_s [16]),
    .O(\fb_less_2d_gpu_i/rect_row_s [0])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_row_s21  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/rect_row_reg/r_q [10]),
    .I2(\fb_less_2d_gpu_i/mem_data_s [26]),
    .O(\fb_less_2d_gpu_i/rect_row_s [10])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_row_s31  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/rect_row_reg/r_q [11]),
    .I2(\fb_less_2d_gpu_i/mem_data_s [27]),
    .O(\fb_less_2d_gpu_i/rect_row_s [11])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_row_s41  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/rect_row_reg/r_q [12]),
    .I2(\fb_less_2d_gpu_i/mem_data_s [28]),
    .O(\fb_less_2d_gpu_i/rect_row_s [12])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_row_s51  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/rect_row_reg/r_q [13]),
    .I2(\fb_less_2d_gpu_i/mem_data_s [29]),
    .O(\fb_less_2d_gpu_i/rect_row_s [13])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_row_s61  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/rect_row_reg/r_q [14]),
    .I2(\fb_less_2d_gpu_i/mem_data_s [30]),
    .O(\fb_less_2d_gpu_i/rect_row_s [14])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_row_s71  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/rect_row_reg/r_q [15]),
    .I2(\fb_less_2d_gpu_i/mem_data_s [31]),
    .O(\fb_less_2d_gpu_i/rect_row_s [15])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_row_s81  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/rect_row_reg/r_q [1]),
    .I2(\fb_less_2d_gpu_i/mem_data_s [17]),
    .O(\fb_less_2d_gpu_i/rect_row_s [1])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_row_s91  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/rect_row_reg/r_q [2]),
    .I2(\fb_less_2d_gpu_i/mem_data_s [18]),
    .O(\fb_less_2d_gpu_i/rect_row_s [2])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_row_s101  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/rect_row_reg/r_q [3]),
    .I2(\fb_less_2d_gpu_i/mem_data_s [19]),
    .O(\fb_less_2d_gpu_i/rect_row_s [3])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_row_s111  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/rect_row_reg/r_q [4]),
    .I2(\fb_less_2d_gpu_i/mem_data_s [20]),
    .O(\fb_less_2d_gpu_i/rect_row_s [4])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_row_s121  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/rect_row_reg/r_q [5]),
    .I2(\fb_less_2d_gpu_i/mem_data_s [21]),
    .O(\fb_less_2d_gpu_i/rect_row_s [5])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_row_s131  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/rect_row_reg/r_q [6]),
    .I2(\fb_less_2d_gpu_i/mem_data_s [22]),
    .O(\fb_less_2d_gpu_i/rect_row_s [6])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_row_s141  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/rect_row_reg/r_q [7]),
    .I2(\fb_less_2d_gpu_i/mem_data_s [23]),
    .O(\fb_less_2d_gpu_i/rect_row_s [7])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_row_s151  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/rect_row_reg/r_q [8]),
    .I2(\fb_less_2d_gpu_i/mem_data_s [24]),
    .O(\fb_less_2d_gpu_i/rect_row_s [8])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_row_s161  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/rect_row_reg/r_q [9]),
    .I2(\fb_less_2d_gpu_i/mem_data_s [25]),
    .O(\fb_less_2d_gpu_i/rect_row_s [9])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_width_s17  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/mem_data_s [16]),
    .I2(\fb_less_2d_gpu_i/rect_width_reg/r_q [0]),
    .O(\fb_less_2d_gpu_i/rect_width_s [0])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_width_s21  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/mem_data_s [26]),
    .I2(\fb_less_2d_gpu_i/rect_width_reg/r_q [10]),
    .O(\fb_less_2d_gpu_i/rect_width_s [10])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_width_s31  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/mem_data_s [27]),
    .I2(\fb_less_2d_gpu_i/rect_width_reg/r_q [11]),
    .O(\fb_less_2d_gpu_i/rect_width_s [11])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_width_s41  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/mem_data_s [28]),
    .I2(\fb_less_2d_gpu_i/rect_width_reg/r_q [12]),
    .O(\fb_less_2d_gpu_i/rect_width_s [12])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_width_s51  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/mem_data_s [29]),
    .I2(\fb_less_2d_gpu_i/rect_width_reg/r_q [13]),
    .O(\fb_less_2d_gpu_i/rect_width_s [13])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_width_s61  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/mem_data_s [30]),
    .I2(\fb_less_2d_gpu_i/rect_width_reg/r_q [14]),
    .O(\fb_less_2d_gpu_i/rect_width_s [14])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_width_s71  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/mem_data_s [31]),
    .I2(\fb_less_2d_gpu_i/rect_width_reg/r_q [15]),
    .O(\fb_less_2d_gpu_i/rect_width_s [15])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_width_s81  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/mem_data_s [17]),
    .I2(\fb_less_2d_gpu_i/rect_width_reg/r_q [1]),
    .O(\fb_less_2d_gpu_i/rect_width_s [1])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_width_s91  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/mem_data_s [18]),
    .I2(\fb_less_2d_gpu_i/rect_width_reg/r_q [2]),
    .O(\fb_less_2d_gpu_i/rect_width_s [2])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_width_s101  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/mem_data_s [19]),
    .I2(\fb_less_2d_gpu_i/rect_width_reg/r_q [3]),
    .O(\fb_less_2d_gpu_i/rect_width_s [3])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_width_s111  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/mem_data_s [20]),
    .I2(\fb_less_2d_gpu_i/rect_width_reg/r_q [4]),
    .O(\fb_less_2d_gpu_i/rect_width_s [4])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_width_s121  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/mem_data_s [21]),
    .I2(\fb_less_2d_gpu_i/rect_width_reg/r_q [5]),
    .O(\fb_less_2d_gpu_i/rect_width_s [5])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_width_s131  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/mem_data_s [22]),
    .I2(\fb_less_2d_gpu_i/rect_width_reg/r_q [6]),
    .O(\fb_less_2d_gpu_i/rect_width_s [6])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_width_s141  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/mem_data_s [23]),
    .I2(\fb_less_2d_gpu_i/rect_width_reg/r_q [7]),
    .O(\fb_less_2d_gpu_i/rect_width_s [7])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_width_s151  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/mem_data_s [24]),
    .I2(\fb_less_2d_gpu_i/rect_width_reg/r_q [8]),
    .O(\fb_less_2d_gpu_i/rect_width_s [8])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \fb_less_2d_gpu_i/Mmux_rect_width_s161  (
    .I0(\fb_less_2d_gpu_i/phase_reg/r_q [0]),
    .I1(\fb_less_2d_gpu_i/mem_data_s [25]),
    .I2(\fb_less_2d_gpu_i/rect_width_reg/r_q [9]),
    .O(\fb_less_2d_gpu_i/rect_width_s [9])
  );
  LUT5 #(
    .INIT ( 32'h00000002 ))
  \fb_less_2d_gpu_i/rgb_o<17>1  (
    .I0(\fb_less_2d_gpu_i/rgb_reg/r_q_393 ),
    .I1(\fb_less_2d_gpu_i/GND_6_o_rect_row_r[15]_LessThan_67_o ),
    .I2(\fb_less_2d_gpu_i/GND_6_o_rect_col_r[15]_LessThan_66_o ),
    .I3(\fb_less_2d_gpu_i/rect_col_r[15]_GND_6_o_LessThan_63_o ),
    .I4(\fb_less_2d_gpu_i/rect_row_r[15]_GND_6_o_LessThan_65_o ),
    .O(rgb_s[16])
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \fb_less_2d_gpu_i/_n08131  (
    .I0(\fb_less_2d_gpu_i/rect_col_r[15]_GND_6_o_LessThan_63_o ),
    .I1(\fb_less_2d_gpu_i/rect_row_r[15]_GND_6_o_LessThan_65_o ),
    .O(\fb_less_2d_gpu_i/_n0813 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFDFFFFFF ))
  \vga_ctrl_i/en_25MHz_pixel_x[9]_AND_4_o_SW0  (
    .I0(\vga_ctrl_i/pixel_x [4]),
    .I1(\vga_ctrl_i/pixel_x [6]),
    .I2(\vga_ctrl_i/pixel_x [5]),
    .I3(\vga_ctrl_i/pixel_x [9]),
    .I4(\vga_ctrl_i/pixel_x [8]),
    .I5(\vga_ctrl_i/pixel_x [7]),
    .O(N2)
  );
  LUT6 #(
    .INIT ( 64'h0000000080000000 ))
  \vga_ctrl_i/en_25MHz_pixel_x[9]_AND_4_o  (
    .I0(\vga_ctrl_i/pixel_x [2]),
    .I1(\vga_ctrl_i/pixel_x [3]),
    .I2(\vga_ctrl_i/pixel_x [0]),
    .I3(\vga_ctrl_i/pixel_x [1]),
    .I4(\vga_ctrl_i/en_25MHz<1>1_475 ),
    .I5(N2),
    .O(\vga_ctrl_i/en_25MHz_pixel_x[9]_AND_4_o_85 )
  );
  IBUF   rst_in_IBUF (
    .I(rst_in),
    .O(rst_in_IBUF_1)
  );
  OBUF   red_o_7_OBUF (
    .I(red_o_0_OBUF_25),
    .O(red_o[7])
  );
  OBUF   red_o_6_OBUF (
    .I(red_o_0_OBUF_25),
    .O(red_o[6])
  );
  OBUF   red_o_5_OBUF (
    .I(red_o_0_OBUF_25),
    .O(red_o[5])
  );
  OBUF   red_o_4_OBUF (
    .I(red_o_0_OBUF_25),
    .O(red_o[4])
  );
  OBUF   red_o_3_OBUF (
    .I(red_o_0_OBUF_25),
    .O(red_o[3])
  );
  OBUF   red_o_2_OBUF (
    .I(red_o_0_OBUF_25),
    .O(red_o[2])
  );
  OBUF   red_o_1_OBUF (
    .I(red_o_0_OBUF_25),
    .O(red_o[1])
  );
  OBUF   red_o_0_OBUF (
    .I(red_o_0_OBUF_25),
    .O(red_o[0])
  );
  OBUF   green_o_7_OBUF (
    .I(red_o_0_OBUF_25),
    .O(green_o[7])
  );
  OBUF   green_o_6_OBUF (
    .I(red_o_0_OBUF_25),
    .O(green_o[6])
  );
  OBUF   green_o_5_OBUF (
    .I(red_o_0_OBUF_25),
    .O(green_o[5])
  );
  OBUF   green_o_4_OBUF (
    .I(red_o_0_OBUF_25),
    .O(green_o[4])
  );
  OBUF   green_o_3_OBUF (
    .I(red_o_0_OBUF_25),
    .O(green_o[3])
  );
  OBUF   green_o_2_OBUF (
    .I(red_o_0_OBUF_25),
    .O(green_o[2])
  );
  OBUF   green_o_1_OBUF (
    .I(red_o_0_OBUF_25),
    .O(green_o[1])
  );
  OBUF   green_o_0_OBUF (
    .I(red_o_0_OBUF_25),
    .O(green_o[0])
  );
  OBUF   blue_o_7_OBUF (
    .I(\vga_ctrl_i/blue [7]),
    .O(blue_o[7])
  );
  OBUF   blue_o_6_OBUF (
    .I(\vga_ctrl_i/blue [7]),
    .O(blue_o[6])
  );
  OBUF   blue_o_5_OBUF (
    .I(\vga_ctrl_i/blue [7]),
    .O(blue_o[5])
  );
  OBUF   blue_o_4_OBUF (
    .I(\vga_ctrl_i/blue [7]),
    .O(blue_o[4])
  );
  OBUF   blue_o_3_OBUF (
    .I(\vga_ctrl_i/blue [7]),
    .O(blue_o[3])
  );
  OBUF   blue_o_2_OBUF (
    .I(\vga_ctrl_i/blue [7]),
    .O(blue_o[2])
  );
  OBUF   blue_o_1_OBUF (
    .I(\vga_ctrl_i/blue [7]),
    .O(blue_o[1])
  );
  OBUF   blue_o_0_OBUF (
    .I(\vga_ctrl_i/blue [7]),
    .O(blue_o[0])
  );
  OBUF   vga_clk_o_OBUF (
    .I(\vga_ctrl_i/vga_clk_27 ),
    .O(vga_clk_o)
  );
  OBUF   blank_on_OBUF (
    .I(\vga_ctrl_i/n_blank_28 ),
    .O(blank_on)
  );
  OBUF   h_sync_on_OBUF (
    .I(\vga_ctrl_i/n_h_sync_29 ),
    .O(h_sync_on)
  );
  OBUF   v_sync_on_OBUF (
    .I(\vga_ctrl_i/n_v_sync_30 ),
    .O(v_sync_on)
  );
  OBUF   sync_on_OBUF (
    .I(\vga_ctrl_i/n_sync_31 ),
    .O(sync_on)
  );
  OBUF   pow_save_on_OBUF (
    .I(pow_save_on_OBUF_33),
    .O(pow_save_on)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \vga_ctrl_i/Mcount_pixel_x_cy<8>_rt  (
    .I0(\vga_ctrl_i/pixel_x [8]),
    .O(\vga_ctrl_i/Mcount_pixel_x_cy<8>_rt_458 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \vga_ctrl_i/Mcount_pixel_x_cy<7>_rt  (
    .I0(\vga_ctrl_i/pixel_x [7]),
    .O(\vga_ctrl_i/Mcount_pixel_x_cy<7>_rt_459 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \vga_ctrl_i/Mcount_pixel_x_cy<6>_rt  (
    .I0(\vga_ctrl_i/pixel_x [6]),
    .O(\vga_ctrl_i/Mcount_pixel_x_cy<6>_rt_460 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \vga_ctrl_i/Mcount_pixel_x_cy<5>_rt  (
    .I0(\vga_ctrl_i/pixel_x [5]),
    .O(\vga_ctrl_i/Mcount_pixel_x_cy<5>_rt_461 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \vga_ctrl_i/Mcount_pixel_x_cy<4>_rt  (
    .I0(\vga_ctrl_i/pixel_x [4]),
    .O(\vga_ctrl_i/Mcount_pixel_x_cy<4>_rt_462 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \vga_ctrl_i/Mcount_pixel_x_cy<3>_rt  (
    .I0(\vga_ctrl_i/pixel_x [3]),
    .O(\vga_ctrl_i/Mcount_pixel_x_cy<3>_rt_463 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \vga_ctrl_i/Mcount_pixel_x_cy<2>_rt  (
    .I0(\vga_ctrl_i/pixel_x [2]),
    .O(\vga_ctrl_i/Mcount_pixel_x_cy<2>_rt_464 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \vga_ctrl_i/Mcount_pixel_x_cy<1>_rt  (
    .I0(\vga_ctrl_i/pixel_x [1]),
    .O(\vga_ctrl_i/Mcount_pixel_x_cy<1>_rt_465 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \vga_ctrl_i/Mcount_pixel_y_cy<7>_rt  (
    .I0(\vga_ctrl_i/pixel_y [7]),
    .O(\vga_ctrl_i/Mcount_pixel_y_cy<7>_rt_466 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \vga_ctrl_i/Mcount_pixel_y_cy<6>_rt  (
    .I0(\vga_ctrl_i/pixel_y [6]),
    .O(\vga_ctrl_i/Mcount_pixel_y_cy<6>_rt_467 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \vga_ctrl_i/Mcount_pixel_y_cy<5>_rt  (
    .I0(\vga_ctrl_i/pixel_y [5]),
    .O(\vga_ctrl_i/Mcount_pixel_y_cy<5>_rt_468 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \vga_ctrl_i/Mcount_pixel_y_cy<4>_rt  (
    .I0(\vga_ctrl_i/pixel_y [4]),
    .O(\vga_ctrl_i/Mcount_pixel_y_cy<4>_rt_469 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \vga_ctrl_i/Mcount_pixel_y_cy<3>_rt  (
    .I0(\vga_ctrl_i/pixel_y [3]),
    .O(\vga_ctrl_i/Mcount_pixel_y_cy<3>_rt_470 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \vga_ctrl_i/Mcount_pixel_y_cy<2>_rt  (
    .I0(\vga_ctrl_i/pixel_y [2]),
    .O(\vga_ctrl_i/Mcount_pixel_y_cy<2>_rt_471 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \vga_ctrl_i/Mcount_pixel_y_cy<1>_rt  (
    .I0(\vga_ctrl_i/pixel_y [1]),
    .O(\vga_ctrl_i/Mcount_pixel_y_cy<1>_rt_472 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \vga_ctrl_i/Mcount_pixel_x_xor<9>_rt  (
    .I0(\vga_ctrl_i/pixel_x [9]),
    .O(\vga_ctrl_i/Mcount_pixel_x_xor<9>_rt_473 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \vga_ctrl_i/Mcount_pixel_y_xor<8>_rt  (
    .I0(\vga_ctrl_i/pixel_y [8]),
    .O(\vga_ctrl_i/Mcount_pixel_y_xor<8>_rt_474 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_cy<5>  (
    .I0(\fb_less_2d_gpu_i/rect_col_reg/r_q [11]),
    .I1(\fb_less_2d_gpu_i/rect_col_reg/r_q [12]),
    .I2(\fb_less_2d_gpu_i/rect_col_reg/r_q [13]),
    .I3(\fb_less_2d_gpu_i/rect_col_reg/r_q [14]),
    .I4(\fb_less_2d_gpu_i/rect_col_reg/r_q [15]),
    .I5(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_col_r[15]_LessThan_66_o_cy<4>_196 ),
    .O(\fb_less_2d_gpu_i/GND_6_o_rect_col_r[15]_LessThan_66_o )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFFE ))
  \fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_cy<5>  (
    .I0(\fb_less_2d_gpu_i/rect_row_reg/r_q [12]),
    .I1(\fb_less_2d_gpu_i/rect_row_reg/r_q [13]),
    .I2(\fb_less_2d_gpu_i/rect_row_reg/r_q [14]),
    .I3(\fb_less_2d_gpu_i/rect_row_reg/r_q [15]),
    .I4(\fb_less_2d_gpu_i/Mcompar_GND_6_o_rect_row_r[15]_LessThan_67_o_cy<4>_211 ),
    .O(\fb_less_2d_gpu_i/GND_6_o_rect_row_r[15]_LessThan_67_o )
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
  LUT3 #(
    .INIT ( 8'hD5 ))
  \vga_ctrl_i/Mcount_phase_val1  (
    .I0(n_reset),
    .I1(\vga_ctrl_i/phase [0]),
    .I2(\vga_ctrl_i/phase [1]),
    .O(\vga_ctrl_i/Mcount_phase_val )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \vga_ctrl_i/en_25MHz<1>1_1  (
    .I0(\vga_ctrl_i/phase [1]),
    .I1(\vga_ctrl_i/phase [0]),
    .O(\vga_ctrl_i/en_25MHz<1>1_475 )
  );
  FD   \vga_ctrl_i/pixel_x_9  (
    .C(clk_100MHz),
    .D(\vga_ctrl_i/pixel_x_9_rstpot_476 ),
    .Q(\vga_ctrl_i/pixel_x [9])
  );
  FD   \vga_ctrl_i/pixel_x_8  (
    .C(clk_100MHz),
    .D(\vga_ctrl_i/pixel_x_8_rstpot_477 ),
    .Q(\vga_ctrl_i/pixel_x [8])
  );
  FD   \vga_ctrl_i/pixel_x_6  (
    .C(clk_100MHz),
    .D(\vga_ctrl_i/pixel_x_6_rstpot_478 ),
    .Q(\vga_ctrl_i/pixel_x [6])
  );
  FD   \vga_ctrl_i/pixel_x_5  (
    .C(clk_100MHz),
    .D(\vga_ctrl_i/pixel_x_5_rstpot_479 ),
    .Q(\vga_ctrl_i/pixel_x [5])
  );
  FD   \vga_ctrl_i/pixel_x_7  (
    .C(clk_100MHz),
    .D(\vga_ctrl_i/pixel_x_7_rstpot_480 ),
    .Q(\vga_ctrl_i/pixel_x [7])
  );
  FD   \vga_ctrl_i/pixel_x_3  (
    .C(clk_100MHz),
    .D(\vga_ctrl_i/pixel_x_3_rstpot_481 ),
    .Q(\vga_ctrl_i/pixel_x [3])
  );
  FD   \vga_ctrl_i/pixel_x_2  (
    .C(clk_100MHz),
    .D(\vga_ctrl_i/pixel_x_2_rstpot_482 ),
    .Q(\vga_ctrl_i/pixel_x [2])
  );
  FD   \vga_ctrl_i/pixel_x_4  (
    .C(clk_100MHz),
    .D(\vga_ctrl_i/pixel_x_4_rstpot_483 ),
    .Q(\vga_ctrl_i/pixel_x [4])
  );
  FD   \vga_ctrl_i/pixel_x_0  (
    .C(clk_100MHz),
    .D(\vga_ctrl_i/pixel_x_0_rstpot_484 ),
    .Q(\vga_ctrl_i/pixel_x [0])
  );
  FD   \vga_ctrl_i/pixel_x_1  (
    .C(clk_100MHz),
    .D(\vga_ctrl_i/pixel_x_1_rstpot_485 ),
    .Q(\vga_ctrl_i/pixel_x [1])
  );
  LUT6 #(
    .INIT ( 64'h00000000A8880888 ))
  \vga_ctrl_i/pixel_x_9_rstpot  (
    .I0(n_reset),
    .I1(\vga_ctrl_i/pixel_x [9]),
    .I2(\vga_ctrl_i/phase [0]),
    .I3(\vga_ctrl_i/phase [1]),
    .I4(\vga_ctrl_i/Result [9]),
    .I5(\vga_ctrl_i/en_25MHz_pixel_x[9]_AND_4_o_85 ),
    .O(\vga_ctrl_i/pixel_x_9_rstpot_476 )
  );
  LUT6 #(
    .INIT ( 64'h00000000A8880888 ))
  \vga_ctrl_i/pixel_x_8_rstpot  (
    .I0(n_reset),
    .I1(\vga_ctrl_i/pixel_x [8]),
    .I2(\vga_ctrl_i/phase [0]),
    .I3(\vga_ctrl_i/phase [1]),
    .I4(\vga_ctrl_i/Result<8>1 ),
    .I5(\vga_ctrl_i/en_25MHz_pixel_x[9]_AND_4_o_85 ),
    .O(\vga_ctrl_i/pixel_x_8_rstpot_477 )
  );
  LUT6 #(
    .INIT ( 64'h00000000A8880888 ))
  \vga_ctrl_i/pixel_x_6_rstpot  (
    .I0(n_reset),
    .I1(\vga_ctrl_i/pixel_x [6]),
    .I2(\vga_ctrl_i/phase [0]),
    .I3(\vga_ctrl_i/phase [1]),
    .I4(\vga_ctrl_i/Result<6>1 ),
    .I5(\vga_ctrl_i/en_25MHz_pixel_x[9]_AND_4_o_85 ),
    .O(\vga_ctrl_i/pixel_x_6_rstpot_478 )
  );
  LUT6 #(
    .INIT ( 64'h00000000A8880888 ))
  \vga_ctrl_i/pixel_x_5_rstpot  (
    .I0(n_reset),
    .I1(\vga_ctrl_i/pixel_x [5]),
    .I2(\vga_ctrl_i/phase [0]),
    .I3(\vga_ctrl_i/phase [1]),
    .I4(\vga_ctrl_i/Result<5>1 ),
    .I5(\vga_ctrl_i/en_25MHz_pixel_x[9]_AND_4_o_85 ),
    .O(\vga_ctrl_i/pixel_x_5_rstpot_479 )
  );
  LUT6 #(
    .INIT ( 64'h00000000A8880888 ))
  \vga_ctrl_i/pixel_x_7_rstpot  (
    .I0(n_reset),
    .I1(\vga_ctrl_i/pixel_x [7]),
    .I2(\vga_ctrl_i/phase [0]),
    .I3(\vga_ctrl_i/phase [1]),
    .I4(\vga_ctrl_i/Result<7>1 ),
    .I5(\vga_ctrl_i/en_25MHz_pixel_x[9]_AND_4_o_85 ),
    .O(\vga_ctrl_i/pixel_x_7_rstpot_480 )
  );
  LUT6 #(
    .INIT ( 64'h00000000A8880888 ))
  \vga_ctrl_i/pixel_x_3_rstpot  (
    .I0(n_reset),
    .I1(\vga_ctrl_i/pixel_x [3]),
    .I2(\vga_ctrl_i/phase [0]),
    .I3(\vga_ctrl_i/phase [1]),
    .I4(\vga_ctrl_i/Result<3>1 ),
    .I5(\vga_ctrl_i/en_25MHz_pixel_x[9]_AND_4_o_85 ),
    .O(\vga_ctrl_i/pixel_x_3_rstpot_481 )
  );
  LUT6 #(
    .INIT ( 64'h00000000A8880888 ))
  \vga_ctrl_i/pixel_x_2_rstpot  (
    .I0(n_reset),
    .I1(\vga_ctrl_i/pixel_x [2]),
    .I2(\vga_ctrl_i/phase [0]),
    .I3(\vga_ctrl_i/phase [1]),
    .I4(\vga_ctrl_i/Result<2>1 ),
    .I5(\vga_ctrl_i/en_25MHz_pixel_x[9]_AND_4_o_85 ),
    .O(\vga_ctrl_i/pixel_x_2_rstpot_482 )
  );
  LUT6 #(
    .INIT ( 64'h00000000A8880888 ))
  \vga_ctrl_i/pixel_x_4_rstpot  (
    .I0(n_reset),
    .I1(\vga_ctrl_i/pixel_x [4]),
    .I2(\vga_ctrl_i/phase [0]),
    .I3(\vga_ctrl_i/phase [1]),
    .I4(\vga_ctrl_i/Result<4>1 ),
    .I5(\vga_ctrl_i/en_25MHz_pixel_x[9]_AND_4_o_85 ),
    .O(\vga_ctrl_i/pixel_x_4_rstpot_483 )
  );
  LUT6 #(
    .INIT ( 64'h00000000A8880888 ))
  \vga_ctrl_i/pixel_x_0_rstpot  (
    .I0(n_reset),
    .I1(\vga_ctrl_i/pixel_x [0]),
    .I2(\vga_ctrl_i/phase [0]),
    .I3(\vga_ctrl_i/phase [1]),
    .I4(\vga_ctrl_i/Result<0>2 ),
    .I5(\vga_ctrl_i/en_25MHz_pixel_x[9]_AND_4_o_85 ),
    .O(\vga_ctrl_i/pixel_x_0_rstpot_484 )
  );
  LUT6 #(
    .INIT ( 64'h00000000A8880888 ))
  \vga_ctrl_i/pixel_x_1_rstpot  (
    .I0(n_reset),
    .I1(\vga_ctrl_i/pixel_x [1]),
    .I2(\vga_ctrl_i/phase [0]),
    .I3(\vga_ctrl_i/phase [1]),
    .I4(\vga_ctrl_i/Result<1>2 ),
    .I5(\vga_ctrl_i/en_25MHz_pixel_x[9]_AND_4_o_85 ),
    .O(\vga_ctrl_i/pixel_x_1_rstpot_485 )
  );
  INV   \vga_ctrl_i/Mcount_pixel_x_lut<0>_INV_0  (
    .I(\vga_ctrl_i/pixel_x [0]),
    .O(\vga_ctrl_i/Mcount_pixel_x_lut [0])
  );
  INV   \vga_ctrl_i/Mcount_pixel_y_lut<0>_INV_0  (
    .I(\vga_ctrl_i/pixel_y [0]),
    .O(\vga_ctrl_i/Mcount_pixel_y_lut [0])
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
    .O(\fb_less_2d_gpu_i/phase_reg/in_rst_inv )
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

