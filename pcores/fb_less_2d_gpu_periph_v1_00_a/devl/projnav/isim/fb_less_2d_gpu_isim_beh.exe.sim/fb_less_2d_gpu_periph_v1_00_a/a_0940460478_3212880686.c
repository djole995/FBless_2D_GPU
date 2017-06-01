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
static const char *ng0 = "D:/FBless_2D_GPU/pcores/fb_less_2d_gpu_periph_v1_00_a/hdl/vhdl/fb_less_2d_gpu.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

unsigned char ieee_p_1242562249_sub_1781507893_1035706684(char *, char *, char *, int );
char *ieee_p_1242562249_sub_1830103426_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void fb_less_2d_gpu_periph_v1_00_a_a_0940460478_3212880686_p_0(char *t0)
{
    char t19[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    int t12;
    int t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned int t20;
    unsigned int t21;

LAB0:    xsi_set_current_line(232, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 6360);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(233, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t5 = t1;
    memset(t5, (unsigned char)2, 16U);
    t6 = (t0 + 6456);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 16U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(234, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    memset(t2, (unsigned char)2, 16U);
    t5 = (t0 + 6520);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    goto LAB3;

LAB5:    xsi_set_current_line(236, ng0);
    t2 = (t0 + 2952U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t11 = (t4 == (unsigned char)3);
    if (t11 != 0)
        goto LAB7;

LAB9:
LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(237, ng0);
    t2 = (t0 + 2792U);
    t6 = *((char **)t2);
    t2 = (t0 + 10836U);
    t7 = (t0 + 4328U);
    t8 = *((char **)t7);
    t12 = *((int *)t8);
    t13 = (t12 - 1);
    t14 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t6, t2, t13);
    if (t14 != 0)
        goto LAB10;

LAB12:    xsi_set_current_line(245, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t1 = (t0 + 10836U);
    t5 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t19, t2, t1, 1);
    t6 = (t19 + 12U);
    t20 = *((unsigned int *)t6);
    t21 = (1U * t20);
    t3 = (16U != t21);
    if (t3 == 1)
        goto LAB18;

LAB19:    t7 = (t0 + 6520);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t15 = *((char **)t10);
    memcpy(t15, t5, 16U);
    xsi_driver_first_trans_fast(t7);

LAB11:    goto LAB8;

LAB10:    xsi_set_current_line(238, ng0);
    t7 = xsi_get_transient_memory(16U);
    memset(t7, 0, 16U);
    t9 = t7;
    memset(t9, (unsigned char)2, 16U);
    t10 = (t0 + 6520);
    t15 = (t10 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t7, 16U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(239, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 10804U);
    t5 = (t0 + 3728U);
    t6 = *((char **)t5);
    t12 = *((int *)t6);
    t13 = (t12 - 1);
    t3 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t2, t1, t13);
    if (t3 != 0)
        goto LAB13;

LAB15:    xsi_set_current_line(242, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 10804U);
    t5 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t19, t2, t1, 1);
    t6 = (t19 + 12U);
    t20 = *((unsigned int *)t6);
    t21 = (1U * t20);
    t3 = (16U != t21);
    if (t3 == 1)
        goto LAB16;

LAB17:    t7 = (t0 + 6456);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t15 = *((char **)t10);
    memcpy(t15, t5, 16U);
    xsi_driver_first_trans_fast(t7);

LAB14:    goto LAB11;

LAB13:    xsi_set_current_line(240, ng0);
    t5 = xsi_get_transient_memory(16U);
    memset(t5, 0, 16U);
    t7 = t5;
    memset(t7, (unsigned char)2, 16U);
    t8 = (t0 + 6456);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t15 = (t10 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t5, 16U);
    xsi_driver_first_trans_fast(t8);
    goto LAB14;

LAB16:    xsi_size_not_matching(16U, t21, 0);
    goto LAB17;

LAB18:    xsi_size_not_matching(16U, t21, 0);
    goto LAB19;

}

static void fb_less_2d_gpu_periph_v1_00_a_a_0940460478_3212880686_p_1(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    unsigned int t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(250, ng0);

LAB3:    t2 = (t0 + 2472U);
    t3 = *((char **)t2);
    t2 = (t0 + 10804U);
    t4 = (t0 + 3968U);
    t5 = *((char **)t4);
    t6 = *((int *)t5);
    t4 = ieee_p_1242562249_sub_1830103426_1035706684(IEEE_P_1242562249, t1, t3, t2, t6);
    t7 = (t1 + 12U);
    t8 = *((unsigned int *)t7);
    t8 = (t8 * 1U);
    t9 = (16U != t8);
    if (t9 == 1)
        goto LAB5;

LAB6:    t10 = (t0 + 6584);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t4, 16U);
    xsi_driver_first_trans_fast(t10);

LAB2:    t15 = (t0 + 6376);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(16U, t8, 0);
    goto LAB6;

}


extern void fb_less_2d_gpu_periph_v1_00_a_a_0940460478_3212880686_init()
{
	static char *pe[] = {(void *)fb_less_2d_gpu_periph_v1_00_a_a_0940460478_3212880686_p_0,(void *)fb_less_2d_gpu_periph_v1_00_a_a_0940460478_3212880686_p_1};
	xsi_register_didat("fb_less_2d_gpu_periph_v1_00_a_a_0940460478_3212880686", "isim/fb_less_2d_gpu_isim_beh.exe.sim/fb_less_2d_gpu_periph_v1_00_a/a_0940460478_3212880686.didat");
	xsi_register_executes(pe);
}
