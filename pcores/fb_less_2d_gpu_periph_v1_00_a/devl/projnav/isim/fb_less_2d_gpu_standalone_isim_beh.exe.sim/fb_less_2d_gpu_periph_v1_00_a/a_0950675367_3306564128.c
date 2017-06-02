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
static const char *ng0 = "D:/FBless_2D_GPU/pcores/fb_less_2d_gpu_periph_v1_00_a/hdl/vhdl/fb_less_2d_gpu_standalone.vhd";



static void fb_less_2d_gpu_periph_v1_00_a_a_0950675367_3306564128_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(199, ng0);

LAB3:    t1 = xsi_get_transient_memory(13U);
    memset(t1, 0, 13U);
    t2 = t1;
    memset(t2, (unsigned char)2, 13U);
    t3 = (t0 + 6232);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 13U);
    xsi_driver_first_trans_fast(t3);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void fb_less_2d_gpu_periph_v1_00_a_a_0950675367_3306564128_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(200, ng0);

LAB3:    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t2 = t1;
    memset(t2, (unsigned char)2, 32U);
    t3 = (t0 + 6296);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 32U);
    xsi_driver_first_trans_fast(t3);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void fb_less_2d_gpu_periph_v1_00_a_a_0950675367_3306564128_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    xsi_set_current_line(201, ng0);

LAB3:    t1 = (t0 + 6360);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}


extern void fb_less_2d_gpu_periph_v1_00_a_a_0950675367_3306564128_init()
{
	static char *pe[] = {(void *)fb_less_2d_gpu_periph_v1_00_a_a_0950675367_3306564128_p_0,(void *)fb_less_2d_gpu_periph_v1_00_a_a_0950675367_3306564128_p_1,(void *)fb_less_2d_gpu_periph_v1_00_a_a_0950675367_3306564128_p_2};
	xsi_register_didat("fb_less_2d_gpu_periph_v1_00_a_a_0950675367_3306564128", "isim/fb_less_2d_gpu_standalone_isim_beh.exe.sim/fb_less_2d_gpu_periph_v1_00_a/a_0950675367_3306564128.didat");
	xsi_register_executes(pe);
}
