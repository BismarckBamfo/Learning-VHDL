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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/bismarck/Desktop/VHDL_LABS/four_of_fie_voter_circuit/comparator_s.vhd";
extern char *IEEE_P_2592010699;



static void work_a_0620960819_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    int t11;
    char *t12;
    char *t13;
    int t14;
    char *t15;
    int t17;
    char *t18;
    int t20;
    char *t21;
    int t23;
    char *t24;
    char *t25;
    char *t26;
    unsigned char t27;
    unsigned int t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;

LAB0:    t1 = (t0 + 2664U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 4939);
    t5 = xsi_mem_cmp(t2, t3, 3U);
    if (t5 == 1)
        goto LAB5;

LAB13:    t6 = (t0 + 4942);
    t8 = xsi_mem_cmp(t6, t3, 3U);
    if (t8 == 1)
        goto LAB6;

LAB14:    t9 = (t0 + 4945);
    t11 = xsi_mem_cmp(t9, t3, 3U);
    if (t11 == 1)
        goto LAB7;

LAB15:    t12 = (t0 + 4948);
    t14 = xsi_mem_cmp(t12, t3, 3U);
    if (t14 == 1)
        goto LAB8;

LAB16:    t15 = (t0 + 4951);
    t17 = xsi_mem_cmp(t15, t3, 3U);
    if (t17 == 1)
        goto LAB9;

LAB17:    t18 = (t0 + 4954);
    t20 = xsi_mem_cmp(t18, t3, 3U);
    if (t20 == 1)
        goto LAB10;

LAB18:    t21 = (t0 + 4957);
    t23 = xsi_mem_cmp(t21, t3, 3U);
    if (t23 == 1)
        goto LAB11;

LAB19:
LAB12:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 3064);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)0;
    xsi_driver_first_trans_fast_port(t2);

LAB4:    xsi_set_current_line(42, ng0);

LAB29:    t2 = (t0 + 2984);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB30;

LAB1:    return;
LAB5:    xsi_set_current_line(43, ng0);
    t24 = (t0 + 1032U);
    t25 = *((char **)t24);
    t24 = (t0 + 1192U);
    t26 = *((char **)t24);
    t27 = 1;
    if (16U == 16U)
        goto LAB21;

LAB22:    t27 = 0;

LAB23:    t30 = (t0 + 3064);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    *((unsigned char *)t34) = t27;
    xsi_driver_first_trans_fast_port(t30);
    goto LAB4;

LAB6:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t2 = ((IEEE_P_2592010699) + 4000);
    t27 = xsi_vhdl_lessthan(t2, t3, 16U, t4, 16U);
    t6 = (t0 + 3064);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    *((unsigned char *)t12) = t27;
    xsi_driver_first_trans_fast_port(t6);
    goto LAB4;

LAB7:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t2 = ((IEEE_P_2592010699) + 4000);
    t27 = xsi_vhdl_lessthanEqual(t2, t3, 16U, t4, 16U);
    t6 = (t0 + 3064);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    *((unsigned char *)t12) = t27;
    xsi_driver_first_trans_fast_port(t6);
    goto LAB4;

LAB8:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t2 = ((IEEE_P_2592010699) + 4000);
    t27 = xsi_vhdl_greater(t2, t3, 16U, t4, 16U);
    t6 = (t0 + 3064);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    *((unsigned char *)t12) = t27;
    xsi_driver_first_trans_fast_port(t6);
    goto LAB4;

LAB9:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t2 = ((IEEE_P_2592010699) + 4000);
    t27 = xsi_vhdl_greaterEqual(t2, t3, 16U, t4, 16U);
    t6 = (t0 + 3064);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    *((unsigned char *)t12) = t27;
    xsi_driver_first_trans_fast_port(t6);
    goto LAB4;

LAB10:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 4960);
    t6 = ((IEEE_P_2592010699) + 4000);
    t27 = xsi_vhdl_lessthan(t6, t3, 16U, t2, 16U);
    t7 = (t0 + 3064);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t27;
    xsi_driver_first_trans_fast_port(t7);
    goto LAB4;

LAB11:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 4976);
    t6 = ((IEEE_P_2592010699) + 4000);
    t27 = xsi_vhdl_greater(t6, t3, 16U, t2, 16U);
    t7 = (t0 + 3064);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t27;
    xsi_driver_first_trans_fast_port(t7);
    goto LAB4;

LAB20:;
LAB21:    t28 = 0;

LAB24:    if (t28 < 16U)
        goto LAB25;
    else
        goto LAB23;

LAB25:    t24 = (t25 + t28);
    t29 = (t26 + t28);
    if (*((unsigned char *)t24) != *((unsigned char *)t29))
        goto LAB22;

LAB26:    t28 = (t28 + 1);
    goto LAB24;

LAB27:    t3 = (t0 + 2984);
    *((int *)t3) = 0;
    goto LAB2;

LAB28:    goto LAB27;

LAB30:    goto LAB28;

}


extern void work_a_0620960819_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0620960819_3212880686_p_0};
	xsi_register_didat("work_a_0620960819_3212880686", "isim/comparator_s_isim_beh.exe.sim/work/a_0620960819_3212880686.didat");
	xsi_register_executes(pe);
}
