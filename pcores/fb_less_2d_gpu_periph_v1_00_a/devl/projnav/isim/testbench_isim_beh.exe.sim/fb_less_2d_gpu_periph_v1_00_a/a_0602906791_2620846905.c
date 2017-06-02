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
static const char *ng0 = "D:/FBless_2D_GPU/pcores/fb_less_2d_gpu_periph_v1_00_a/devl/projnav/reg.vhd";
extern char *IEEE_P_3499444699;
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_3499444699_sub_2213602152_3536714472(char *, char *, int , int );


static void fb_less_2d_gpu_periph_v1_00_a_a_0602906791_2620846905_p_0(char *t0)
{
    char t5[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(29, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB7;

LAB8:
LAB3:    t1 = (t0 + 3640);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(30, ng0);
    t1 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t5, 0, 1);
    t6 = (1U != 1U);
    if (t6 == 1)
        goto LAB5;

LAB6:    t7 = (t0 + 3736);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 1U);
    xsi_driver_first_trans_fast(t7);
    goto LAB3;

LAB5:    xsi_size_not_matching(1U, 1U, 0);
    goto LAB6;

LAB7:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 1352U);
    t7 = *((char **)t2);
    t2 = (t0 + 3736);
    t8 = (t2 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t7, 1U);
    xsi_driver_first_trans_fast(t2);
    goto LAB3;

}

static void fb_less_2d_gpu_periph_v1_00_a_a_0602906791_2620846905_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(36, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 3800);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 1U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3656);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void fb_less_2d_gpu_periph_v1_00_a_a_0602906791_2620846905_init()
{
	static char *pe[] = {(void *)fb_less_2d_gpu_periph_v1_00_a_a_0602906791_2620846905_p_0,(void *)fb_less_2d_gpu_periph_v1_00_a_a_0602906791_2620846905_p_1};
	xsi_register_didat("fb_less_2d_gpu_periph_v1_00_a_a_0602906791_2620846905", "isim/testbench_isim_beh.exe.sim/fb_less_2d_gpu_periph_v1_00_a/a_0602906791_2620846905.didat");
	xsi_register_executes(pe);
}
