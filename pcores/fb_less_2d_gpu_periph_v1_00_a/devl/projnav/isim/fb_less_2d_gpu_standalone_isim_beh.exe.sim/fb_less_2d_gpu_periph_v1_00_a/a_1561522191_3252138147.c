/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/FBless_2D_GPU/pcores/fb_less_2d_gpu_periph_v1_00_a/hdl/vhdl/clk_gen_100MHz_a.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );


static void fb_less_2d_gpu_periph_v1_00_a_a_1561522191_3252138147_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(88, ng0);

LAB3:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 4512);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t4;
    xsi_driver_first_trans_fast(t1);

LAB2:    t9 = (t0 + 4432);
    *((int *)t9) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void fb_less_2d_gpu_periph_v1_00_a_a_1561522191_3252138147_init()
{
	static char *pe[] = {(void *)fb_less_2d_gpu_periph_v1_00_a_a_1561522191_3252138147_p_0};
	xsi_register_didat("fb_less_2d_gpu_periph_v1_00_a_a_1561522191_3252138147", "isim/fb_less_2d_gpu_standalone_isim_beh.exe.sim/fb_less_2d_gpu_periph_v1_00_a/a_1561522191_3252138147.didat");
	xsi_register_executes(pe);
}
