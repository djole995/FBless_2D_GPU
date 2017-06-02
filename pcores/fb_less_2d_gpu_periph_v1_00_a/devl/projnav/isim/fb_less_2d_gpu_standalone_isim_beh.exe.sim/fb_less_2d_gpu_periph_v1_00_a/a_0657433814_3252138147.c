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
static const char *ng0 = "D:/FBless_2D_GPU/pcores/fb_less_2d_gpu_periph_v1_00_a/hdl/vhdl/vga_ctrl_a.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

unsigned char ieee_p_1242562249_sub_1781471956_1035706684(char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_1781507893_1035706684(char *, char *, char *, int );
char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_2110375371_1035706684(char *, char *, char *, char *, char *);
unsigned char ieee_p_1242562249_sub_3046123850_1035706684(char *, int , char *, char *);
unsigned char ieee_p_1242562249_sub_3143221075_1035706684(char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void fb_less_2d_gpu_periph_v1_00_a_a_0657433814_3252138147_p_0(char *t0)
{
    char t13[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned int t19;

LAB0:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 12024);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(43, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)2);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 3752U);
    t3 = *((char **)t1);
    t1 = (t0 + 20160U);
    t4 = (t0 + 20394);
    t8 = (t13 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 1;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t14 = (1 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t15;
    t2 = ieee_p_1242562249_sub_2110375371_1035706684(IEEE_P_1242562249, t3, t1, t4, t13);
    if (t2 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 3752U);
    t3 = *((char **)t1);
    t1 = (t0 + 20160U);
    t4 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t13, t3, t1, 1);
    t7 = (t13 + 12U);
    t15 = *((unsigned int *)t7);
    t19 = (1U * t15);
    t2 = (2U != t19);
    if (t2 == 1)
        goto LAB11;

LAB12:    t8 = (t0 + 12392);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 2U);
    xsi_driver_first_trans_fast(t8);

LAB9:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(44, ng0);
    t3 = (t0 + 20392);
    t8 = (t0 + 12392);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 2U);
    xsi_driver_first_trans_fast(t8);
    goto LAB6;

LAB8:    xsi_set_current_line(47, ng0);
    t9 = (t0 + 20396);
    t11 = (t0 + 12392);
    t12 = (t11 + 56U);
    t16 = *((char **)t12);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t9, 2U);
    xsi_driver_first_trans_fast(t11);
    goto LAB9;

LAB11:    xsi_size_not_matching(2U, t19, 0);
    goto LAB12;

}

static void fb_less_2d_gpu_periph_v1_00_a_a_0657433814_3252138147_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(55, ng0);

LAB3:    t1 = (t0 + 3752U);
    t2 = *((char **)t1);
    t1 = (t0 + 12456);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 2U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 12040);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void fb_less_2d_gpu_periph_v1_00_a_a_0657433814_3252138147_p_2(char *t0)
{
    char t5[16];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 3752U);
    t2 = *((char **)t1);
    t1 = (t0 + 20160U);
    t3 = (t0 + 20398);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 1;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (1 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_p_1242562249_sub_2110375371_1035706684(IEEE_P_1242562249, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB3;

LAB4:
LAB5:    t15 = (t0 + 12520);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = (unsigned char)2;
    xsi_driver_first_trans_fast(t15);

LAB2:    t20 = (t0 + 12056);
    *((int *)t20) = 1;

LAB1:    return;
LAB3:    t7 = (t0 + 12520);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast(t7);
    goto LAB2;

LAB6:    goto LAB2;

}

static void fb_less_2d_gpu_periph_v1_00_a_a_0657433814_3252138147_p_3(char *t0)
{
    char t18[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    int t13;
    int t14;
    int t15;
    int t16;
    char *t17;
    unsigned int t19;
    unsigned int t20;

LAB0:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 12072);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(63, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)2);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 3912U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB8;

LAB10:
LAB9:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(64, ng0);
    t3 = xsi_get_transient_memory(10U);
    memset(t3, 0, 10U);
    t7 = t3;
    memset(t7, (unsigned char)2, 10U);
    t8 = (t0 + 12584);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 10U);
    xsi_driver_first_trans_fast(t8);
    goto LAB6;

LAB8:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 4072U);
    t4 = *((char **)t1);
    t1 = (t0 + 20176U);
    t13 = (640 + 16);
    t14 = (t13 + 96);
    t15 = (t14 + 48);
    t16 = (t15 - 1);
    t6 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t4, t1, t16);
    if (t6 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 4072U);
    t3 = *((char **)t1);
    t1 = (t0 + 20176U);
    t4 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t18, t3, t1, 1);
    t7 = (t18 + 12U);
    t19 = *((unsigned int *)t7);
    t20 = (1U * t19);
    t2 = (10U != t20);
    if (t2 == 1)
        goto LAB14;

LAB15:    t8 = (t0 + 12584);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 10U);
    xsi_driver_first_trans_fast(t8);

LAB12:    goto LAB9;

LAB11:    xsi_set_current_line(68, ng0);
    t7 = xsi_get_transient_memory(10U);
    memset(t7, 0, 10U);
    t8 = t7;
    memset(t8, (unsigned char)2, 10U);
    t9 = (t0 + 12584);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t17 = *((char **)t12);
    memcpy(t17, t7, 10U);
    xsi_driver_first_trans_fast(t9);
    goto LAB12;

LAB14:    xsi_size_not_matching(10U, t20, 0);
    goto LAB15;

}

static void fb_less_2d_gpu_periph_v1_00_a_a_0657433814_3252138147_p_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(76, ng0);

LAB3:    t1 = (t0 + 4072U);
    t2 = *((char **)t1);
    t1 = (t0 + 12648);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 10U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 12088);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void fb_less_2d_gpu_periph_v1_00_a_a_0657433814_3252138147_p_5(char *t0)
{
    char t26[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    int t13;
    int t14;
    int t15;
    int t16;
    unsigned char t17;
    int t18;
    int t19;
    int t20;
    int t21;
    unsigned char t22;
    char *t23;
    char *t24;
    char *t25;
    unsigned int t27;
    unsigned int t28;

LAB0:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 12104);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(81, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)2);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(84, ng0);
    t1 = (t0 + 3912U);
    t3 = *((char **)t1);
    t5 = *((unsigned char *)t3);
    t6 = (t5 == (unsigned char)3);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = (unsigned char)0;

LAB13:    if (t2 != 0)
        goto LAB8;

LAB10:
LAB9:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(82, ng0);
    t3 = xsi_get_transient_memory(9U);
    memset(t3, 0, 9U);
    t7 = t3;
    memset(t7, (unsigned char)2, 9U);
    t8 = (t0 + 12712);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 9U);
    xsi_driver_first_trans_fast(t8);
    goto LAB6;

LAB8:    xsi_set_current_line(85, ng0);
    t7 = (t0 + 4232U);
    t8 = *((char **)t7);
    t7 = (t0 + 20192U);
    t18 = (480 + 10);
    t19 = (t18 + 2);
    t20 = (t19 + 33);
    t21 = (t20 - 1);
    t22 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t8, t7, t21);
    if (t22 != 0)
        goto LAB14;

LAB16:    xsi_set_current_line(88, ng0);
    t1 = (t0 + 4232U);
    t3 = *((char **)t1);
    t1 = (t0 + 20192U);
    t4 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t26, t3, t1, 1);
    t7 = (t26 + 12U);
    t27 = *((unsigned int *)t7);
    t28 = (1U * t27);
    t2 = (9U != t28);
    if (t2 == 1)
        goto LAB17;

LAB18:    t8 = (t0 + 12712);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 9U);
    xsi_driver_first_trans_fast(t8);

LAB15:    goto LAB9;

LAB11:    t1 = (t0 + 4072U);
    t4 = *((char **)t1);
    t1 = (t0 + 20176U);
    t13 = (640 + 16);
    t14 = (t13 + 96);
    t15 = (t14 + 48);
    t16 = (t15 - 1);
    t17 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t4, t1, t16);
    t2 = t17;
    goto LAB13;

LAB14:    xsi_set_current_line(86, ng0);
    t9 = xsi_get_transient_memory(9U);
    memset(t9, 0, 9U);
    t10 = t9;
    memset(t10, (unsigned char)2, 9U);
    t11 = (t0 + 12712);
    t12 = (t11 + 56U);
    t23 = *((char **)t12);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t9, 9U);
    xsi_driver_first_trans_fast(t11);
    goto LAB15;

LAB17:    xsi_size_not_matching(9U, t28, 0);
    goto LAB18;

}

static void fb_less_2d_gpu_periph_v1_00_a_a_0657433814_3252138147_p_6(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(94, ng0);

LAB3:    t1 = (t0 + 4232U);
    t2 = *((char **)t1);
    t1 = (t0 + 12776);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 9U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 12120);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void fb_less_2d_gpu_periph_v1_00_a_a_0657433814_3252138147_p_7(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(99, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 12136);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(100, ng0);
    t3 = (t0 + 3752U);
    t4 = *((char **)t3);
    t5 = (1 - 1);
    t6 = (t5 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t3 = (t4 + t8);
    t9 = *((unsigned char *)t3);
    t10 = (t0 + 12840);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = t9;
    xsi_driver_first_trans_fast(t10);
    goto LAB3;

}

static void fb_less_2d_gpu_periph_v1_00_a_a_0657433814_3252138147_p_8(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(103, ng0);

LAB3:    t1 = (t0 + 4392U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 12904);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 12152);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void fb_less_2d_gpu_periph_v1_00_a_a_0657433814_3252138147_p_9(char *t0)
{
    char t7[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(107, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 12168);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(108, ng0);
    t3 = (t0 + 3752U);
    t4 = *((char **)t3);
    t3 = (t0 + 20160U);
    t5 = (t0 + 20400);
    t8 = (t7 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 1;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t10 = (1 - 0);
    t11 = (t10 * 1);
    t11 = (t11 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t11;
    t12 = ieee_p_1242562249_sub_2110375371_1035706684(IEEE_P_1242562249, t4, t3, t5, t7);
    if (t12 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(109, ng0);
    t9 = (t0 + 1832U);
    t13 = *((char **)t9);
    t9 = (t0 + 12968);
    t14 = (t9 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t13, 8U);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(110, ng0);
    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t1 = (t0 + 13032);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t3, 8U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(111, ng0);
    t1 = (t0 + 2152U);
    t3 = *((char **)t1);
    t1 = (t0 + 13096);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t3, 8U);
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

}

static void fb_less_2d_gpu_periph_v1_00_a_a_0657433814_3252138147_p_10(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(115, ng0);

LAB3:    t1 = (t0 + 4552U);
    t2 = *((char **)t1);
    t1 = (t0 + 13160);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 12184);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void fb_less_2d_gpu_periph_v1_00_a_a_0657433814_3252138147_p_11(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(116, ng0);

LAB3:    t1 = (t0 + 4712U);
    t2 = *((char **)t1);
    t1 = (t0 + 13224);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 12200);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void fb_less_2d_gpu_periph_v1_00_a_a_0657433814_3252138147_p_12(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(117, ng0);

LAB3:    t1 = (t0 + 4872U);
    t2 = *((char **)t1);
    t1 = (t0 + 13288);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 12216);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void fb_less_2d_gpu_periph_v1_00_a_a_0657433814_3252138147_p_13(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(121, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 12232);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(122, ng0);
    t3 = (t0 + 3912U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(123, ng0);
    t3 = (t0 + 4072U);
    t7 = *((char **)t3);
    t3 = (t0 + 13352);
    t8 = (t3 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t7, 10U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(124, ng0);
    t1 = (t0 + 4232U);
    t3 = *((char **)t1);
    t1 = (t0 + 13416);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t3, 9U);
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

}

static void fb_less_2d_gpu_periph_v1_00_a_a_0657433814_3252138147_p_14(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    char *t10;
    char *t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    int t18;
    int t19;
    int t20;
    int t21;
    int t22;
    int t23;
    unsigned char t24;
    char *t25;
    char *t26;

LAB0:    xsi_set_current_line(132, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 12248);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(133, ng0);
    t3 = (t0 + 3912U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(134, ng0);
    t3 = (t0 + 5032U);
    t8 = *((char **)t3);
    t3 = (t0 + 20256U);
    t9 = ieee_p_1242562249_sub_3143221075_1035706684(IEEE_P_1242562249, t8, t3, 640);
    if (t9 == 1)
        goto LAB11;

LAB12:    t10 = (t0 + 5192U);
    t11 = *((char **)t10);
    t10 = (t0 + 20272U);
    t12 = ieee_p_1242562249_sub_3143221075_1035706684(IEEE_P_1242562249, t11, t10, 480);
    t7 = t12;

LAB13:    if (t7 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(137, ng0);
    t1 = (t0 + 13480);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t8 = (t4 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);

LAB9:    xsi_set_current_line(139, ng0);
    t18 = (640 + 16);
    t1 = (t0 + 5032U);
    t3 = *((char **)t1);
    t1 = (t0 + 20256U);
    t5 = ieee_p_1242562249_sub_3046123850_1035706684(IEEE_P_1242562249, t18, t3, t1);
    if (t5 == 1)
        goto LAB17;

LAB18:    t2 = (unsigned char)0;

LAB19:    if (t2 != 0)
        goto LAB14;

LAB16:    xsi_set_current_line(142, ng0);
    t1 = (t0 + 13544);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t8 = (t4 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);

LAB15:    xsi_set_current_line(144, ng0);
    t18 = (480 + 10);
    t1 = (t0 + 5192U);
    t3 = *((char **)t1);
    t1 = (t0 + 20272U);
    t5 = ieee_p_1242562249_sub_3046123850_1035706684(IEEE_P_1242562249, t18, t3, t1);
    if (t5 == 1)
        goto LAB23;

LAB24:    t2 = (unsigned char)0;

LAB25:    if (t2 != 0)
        goto LAB20;

LAB22:    xsi_set_current_line(147, ng0);
    t1 = (t0 + 13608);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t8 = (t4 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);

LAB21:    xsi_set_current_line(149, ng0);
    t18 = (640 + 16);
    t1 = (t0 + 5032U);
    t3 = *((char **)t1);
    t1 = (t0 + 20256U);
    t6 = ieee_p_1242562249_sub_3046123850_1035706684(IEEE_P_1242562249, t18, t3, t1);
    if (t6 == 1)
        goto LAB32;

LAB33:    t5 = (unsigned char)0;

LAB34:    if (t5 == 1)
        goto LAB29;

LAB30:    t21 = (480 + 10);
    t10 = (t0 + 5192U);
    t11 = *((char **)t10);
    t10 = (t0 + 20272U);
    t12 = ieee_p_1242562249_sub_3046123850_1035706684(IEEE_P_1242562249, t21, t11, t10);
    if (t12 == 1)
        goto LAB35;

LAB36:    t9 = (unsigned char)0;

LAB37:    t2 = t9;

LAB31:    if (t2 != 0)
        goto LAB26;

LAB28:    xsi_set_current_line(152, ng0);
    t1 = (t0 + 13672);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t8 = (t4 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);

LAB27:    goto LAB6;

LAB8:    xsi_set_current_line(135, ng0);
    t13 = (t0 + 13480);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)2;
    xsi_driver_first_trans_fast(t13);
    goto LAB9;

LAB11:    t7 = (unsigned char)1;
    goto LAB13;

LAB14:    xsi_set_current_line(140, ng0);
    t10 = (t0 + 13544);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)2;
    xsi_driver_first_trans_fast(t10);
    goto LAB15;

LAB17:    t4 = (t0 + 5032U);
    t8 = *((char **)t4);
    t4 = (t0 + 20256U);
    t19 = (640 + 16);
    t20 = (t19 + 96);
    t6 = ieee_p_1242562249_sub_1781471956_1035706684(IEEE_P_1242562249, t8, t4, t20);
    t2 = t6;
    goto LAB19;

LAB20:    xsi_set_current_line(145, ng0);
    t10 = (t0 + 13608);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)2;
    xsi_driver_first_trans_fast(t10);
    goto LAB21;

LAB23:    t4 = (t0 + 5192U);
    t8 = *((char **)t4);
    t4 = (t0 + 20272U);
    t19 = (480 + 10);
    t20 = (t19 + 2);
    t6 = ieee_p_1242562249_sub_1781471956_1035706684(IEEE_P_1242562249, t8, t4, t20);
    t2 = t6;
    goto LAB25;

LAB26:    xsi_set_current_line(150, ng0);
    t15 = (t0 + 13672);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t25 = (t17 + 56U);
    t26 = *((char **)t25);
    *((unsigned char *)t26) = (unsigned char)2;
    xsi_driver_first_trans_fast(t15);
    goto LAB27;

LAB29:    t2 = (unsigned char)1;
    goto LAB31;

LAB32:    t4 = (t0 + 5032U);
    t8 = *((char **)t4);
    t4 = (t0 + 20256U);
    t19 = (640 + 16);
    t20 = (t19 + 96);
    t7 = ieee_p_1242562249_sub_1781471956_1035706684(IEEE_P_1242562249, t8, t4, t20);
    t5 = t7;
    goto LAB34;

LAB35:    t13 = (t0 + 5192U);
    t14 = *((char **)t13);
    t13 = (t0 + 20272U);
    t22 = (480 + 10);
    t23 = (t22 + 2);
    t24 = ieee_p_1242562249_sub_1781471956_1035706684(IEEE_P_1242562249, t14, t13, t23);
    t9 = t24;
    goto LAB37;

}

static void fb_less_2d_gpu_periph_v1_00_a_a_0657433814_3252138147_p_15(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(157, ng0);

LAB3:    t1 = (t0 + 5352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 13736);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 12264);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void fb_less_2d_gpu_periph_v1_00_a_a_0657433814_3252138147_p_16(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(158, ng0);

LAB3:    t1 = (t0 + 5512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 13800);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 12280);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void fb_less_2d_gpu_periph_v1_00_a_a_0657433814_3252138147_p_17(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(159, ng0);

LAB3:    t1 = (t0 + 5672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 13864);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 12296);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void fb_less_2d_gpu_periph_v1_00_a_a_0657433814_3252138147_p_18(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(160, ng0);

LAB3:    t1 = (t0 + 5832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 13928);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 12312);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void fb_less_2d_gpu_periph_v1_00_a_a_0657433814_3252138147_p_19(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    xsi_set_current_line(162, ng0);

LAB3:    t1 = (t0 + 13992);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}


extern void fb_less_2d_gpu_periph_v1_00_a_a_0657433814_3252138147_init()
{
	static char *pe[] = {(void *)fb_less_2d_gpu_periph_v1_00_a_a_0657433814_3252138147_p_0,(void *)fb_less_2d_gpu_periph_v1_00_a_a_0657433814_3252138147_p_1,(void *)fb_less_2d_gpu_periph_v1_00_a_a_0657433814_3252138147_p_2,(void *)fb_less_2d_gpu_periph_v1_00_a_a_0657433814_3252138147_p_3,(void *)fb_less_2d_gpu_periph_v1_00_a_a_0657433814_3252138147_p_4,(void *)fb_less_2d_gpu_periph_v1_00_a_a_0657433814_3252138147_p_5,(void *)fb_less_2d_gpu_periph_v1_00_a_a_0657433814_3252138147_p_6,(void *)fb_less_2d_gpu_periph_v1_00_a_a_0657433814_3252138147_p_7,(void *)fb_less_2d_gpu_periph_v1_00_a_a_0657433814_3252138147_p_8,(void *)fb_less_2d_gpu_periph_v1_00_a_a_0657433814_3252138147_p_9,(void *)fb_less_2d_gpu_periph_v1_00_a_a_0657433814_3252138147_p_10,(void *)fb_less_2d_gpu_periph_v1_00_a_a_0657433814_3252138147_p_11,(void *)fb_less_2d_gpu_periph_v1_00_a_a_0657433814_3252138147_p_12,(void *)fb_less_2d_gpu_periph_v1_00_a_a_0657433814_3252138147_p_13,(void *)fb_less_2d_gpu_periph_v1_00_a_a_0657433814_3252138147_p_14,(void *)fb_less_2d_gpu_periph_v1_00_a_a_0657433814_3252138147_p_15,(void *)fb_less_2d_gpu_periph_v1_00_a_a_0657433814_3252138147_p_16,(void *)fb_less_2d_gpu_periph_v1_00_a_a_0657433814_3252138147_p_17,(void *)fb_less_2d_gpu_periph_v1_00_a_a_0657433814_3252138147_p_18,(void *)fb_less_2d_gpu_periph_v1_00_a_a_0657433814_3252138147_p_19};
	xsi_register_didat("fb_less_2d_gpu_periph_v1_00_a_a_0657433814_3252138147", "isim/fb_less_2d_gpu_standalone_isim_beh.exe.sim/fb_less_2d_gpu_periph_v1_00_a/a_0657433814_3252138147.didat");
	xsi_register_executes(pe);
}
