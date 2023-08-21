// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _load64_3_HH_
#define _load64_3_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct load64_3 : public sc_module {
    // Port declarations 14
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<13> > x_address0;
    sc_out< sc_logic > x_ce0;
    sc_in< sc_lv<8> > x_q0;
    sc_out< sc_lv<13> > x_address1;
    sc_out< sc_logic > x_ce1;
    sc_in< sc_lv<8> > x_q1;
    sc_in< sc_lv<64> > x_offset;
    sc_out< sc_lv<64> > ap_return;


    // Module declarations
    load64_3(sc_module_name name);
    SC_HAS_PROCESS(load64_3);

    ~load64_3();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<5> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<14> > trunc_ln31_fu_104_p1;
    sc_signal< sc_lv<14> > trunc_ln31_reg_198;
    sc_signal< sc_lv<8> > x_load_reg_213;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<8> > x_load_1_reg_218;
    sc_signal< sc_lv<8> > x_load_2_reg_233;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<8> > x_load_3_reg_238;
    sc_signal< sc_lv<8> > x_load_4_reg_253;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<8> > x_load_5_reg_258;
    sc_signal< sc_lv<64> > zext_ln31_fu_114_p1;
    sc_signal< sc_lv<64> > zext_ln31_25_fu_124_p1;
    sc_signal< sc_lv<64> > zext_ln31_26_fu_134_p1;
    sc_signal< sc_lv<64> > zext_ln31_27_fu_144_p1;
    sc_signal< sc_lv<64> > zext_ln31_28_fu_154_p1;
    sc_signal< sc_lv<64> > zext_ln31_29_fu_164_p1;
    sc_signal< sc_lv<64> > zext_ln31_30_fu_174_p1;
    sc_signal< sc_lv<14> > add_ln31_fu_108_p2;
    sc_signal< sc_lv<14> > add_ln31_1_fu_119_p2;
    sc_signal< sc_lv<14> > add_ln31_2_fu_129_p2;
    sc_signal< sc_lv<14> > add_ln31_3_fu_139_p2;
    sc_signal< sc_lv<14> > add_ln31_4_fu_149_p2;
    sc_signal< sc_lv<14> > add_ln31_5_fu_159_p2;
    sc_signal< sc_lv<14> > add_ln31_6_fu_169_p2;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<64> > r_7_fu_179_p9;
    sc_signal< sc_lv<64> > ap_return_preg;
    sc_signal< sc_lv<5> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<5> ap_ST_fsm_state1;
    static const sc_lv<5> ap_ST_fsm_state2;
    static const sc_lv<5> ap_ST_fsm_state3;
    static const sc_lv<5> ap_ST_fsm_state4;
    static const sc_lv<5> ap_ST_fsm_state5;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<14> ap_const_lv14_1;
    static const sc_lv<14> ap_const_lv14_2;
    static const sc_lv<14> ap_const_lv14_3;
    static const sc_lv<14> ap_const_lv14_4;
    static const sc_lv<14> ap_const_lv14_5;
    static const sc_lv<14> ap_const_lv14_6;
    static const sc_lv<14> ap_const_lv14_7;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<64> ap_const_lv64_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln31_1_fu_119_p2();
    void thread_add_ln31_2_fu_129_p2();
    void thread_add_ln31_3_fu_139_p2();
    void thread_add_ln31_4_fu_149_p2();
    void thread_add_ln31_5_fu_159_p2();
    void thread_add_ln31_6_fu_169_p2();
    void thread_add_ln31_fu_108_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_r_7_fu_179_p9();
    void thread_trunc_ln31_fu_104_p1();
    void thread_x_address0();
    void thread_x_address1();
    void thread_x_ce0();
    void thread_x_ce1();
    void thread_zext_ln31_25_fu_124_p1();
    void thread_zext_ln31_26_fu_134_p1();
    void thread_zext_ln31_27_fu_144_p1();
    void thread_zext_ln31_28_fu_154_p1();
    void thread_zext_ln31_29_fu_164_p1();
    void thread_zext_ln31_30_fu_174_p1();
    void thread_zext_ln31_fu_114_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif