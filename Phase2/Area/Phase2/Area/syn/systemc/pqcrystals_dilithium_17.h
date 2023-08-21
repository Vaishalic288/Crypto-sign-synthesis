// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _pqcrystals_dilithium_17_HH_
#define _pqcrystals_dilithium_17_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "pqcrystals_dilithg8j.h"

namespace ap_rtl {

struct pqcrystals_dilithium_17 : public sc_module {
    // Port declarations 12
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<10> > a_address0;
    sc_out< sc_logic > a_ce0;
    sc_out< sc_logic > a_we0;
    sc_out< sc_lv<32> > a_d0;
    sc_in< sc_lv<32> > a_q0;
    sc_in< sc_lv<3> > a_offset;


    // Module declarations
    pqcrystals_dilithium_17(sc_module_name name);
    SC_HAS_PROCESS(pqcrystals_dilithium_17);

    ~pqcrystals_dilithium_17();

    sc_trace_file* mVcdFile;

    pqcrystals_dilithg8j* zetas_U;
    sc_signal< sc_lv<12> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<8> > zetas_address0;
    sc_signal< sc_logic > zetas_ce0;
    sc_signal< sc_lv<23> > zetas_q0;
    sc_signal< sc_lv<12> > zext_ln49_fu_134_p1;
    sc_signal< sc_lv<12> > zext_ln49_reg_369;
    sc_signal< sc_lv<31> > zext_ln54_fu_143_p1;
    sc_signal< sc_lv<31> > zext_ln54_reg_375;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<32> > zext_ln55_fu_153_p1;
    sc_signal< sc_lv<32> > zext_ln55_reg_384;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<32> > k_fu_176_p2;
    sc_signal< sc_lv<32> > k_reg_392;
    sc_signal< sc_lv<1> > icmp_ln55_fu_167_p2;
    sc_signal< sc_lv<29> > zext_ln54_1_fu_197_p1;
    sc_signal< sc_lv<32> > zext_ln57_fu_206_p1;
    sc_signal< sc_lv<32> > zext_ln57_reg_407;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<31> > zext_ln55_1_fu_232_p1;
    sc_signal< sc_lv<31> > zext_ln55_1_reg_412;
    sc_signal< sc_lv<54> > sext_ln57_fu_236_p1;
    sc_signal< sc_lv<54> > sext_ln57_reg_417;
    sc_signal< sc_lv<10> > a_addr11_reg_425;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > icmp_ln57_fu_240_p2;
    sc_signal< sc_lv<10> > a_addr_reg_430;
    sc_signal< sc_lv<32> > j_4_fu_283_p2;
    sc_signal< sc_lv<32> > j_4_reg_435;
    sc_signal< sc_lv<31> > add_ln55_fu_289_p2;
    sc_signal< sc_lv<32> > a_load_reg_445;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<54> > mul_ln58_fu_300_p2;
    sc_signal< sc_lv<54> > mul_ln58_reg_450;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<32> > trunc_ln18_fu_305_p1;
    sc_signal< sc_lv<32> > trunc_ln18_reg_455;
    sc_signal< sc_lv<32> > t_fu_309_p2;
    sc_signal< sc_lv<32> > t_reg_460;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<55> > mul_ln19_fu_317_p2;
    sc_signal< sc_lv<55> > mul_ln19_reg_465;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<32> > t_15_fu_345_p1;
    sc_signal< sc_lv<32> > t_15_reg_470;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<29> > len_0_reg_93;
    sc_signal< sc_lv<31> > j_reg_105;
    sc_signal< sc_lv<1> > icmp_ln54_fu_147_p2;
    sc_signal< sc_lv<32> > j_0_reg_117;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<64> > zext_ln56_fu_182_p1;
    sc_signal< sc_lv<64> > zext_ln58_fu_264_p1;
    sc_signal< sc_lv<64> > zext_ln59_fu_278_p1;
    sc_signal< sc_lv<32> > k_2_fu_50;
    sc_signal< sc_lv<32> > sub_ln59_fu_349_p2;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<32> > add_ln60_fu_356_p2;
    sc_signal< sc_lv<11> > tmp_fu_126_p3;
    sc_signal< sc_lv<23> > tmp_23_fu_157_p4;
    sc_signal< sc_lv<28> > tmp_24_fu_187_p4;
    sc_signal< sc_lv<31> > add_ln57_fu_201_p2;
    sc_signal< sc_lv<1> > empty_86_fu_210_p2;
    sc_signal< sc_lv<30> > trunc_ln55_fu_216_p1;
    sc_signal< sc_lv<30> > trunc_ln55_1_fu_220_p1;
    sc_signal< sc_lv<30> > start_fu_224_p3;
    sc_signal< sc_lv<12> > trunc_ln58_1_fu_249_p1;
    sc_signal< sc_lv<12> > trunc_ln58_fu_245_p1;
    sc_signal< sc_lv<12> > add_ln58_fu_253_p2;
    sc_signal< sc_lv<12> > add_ln58_1_fu_259_p2;
    sc_signal< sc_lv<12> > trunc_ln59_fu_269_p1;
    sc_signal< sc_lv<12> > add_ln59_fu_273_p2;
    sc_signal< sc_lv<23> > mul_ln58_fu_300_p0;
    sc_signal< sc_lv<32> > mul_ln58_fu_300_p1;
    sc_signal< sc_lv<32> > mul_ln19_fu_317_p1;
    sc_signal< sc_lv<56> > sext_ln58_1_fu_323_p1;
    sc_signal< sc_lv<56> > sext_ln19_8_fu_326_p1;
    sc_signal< sc_lv<56> > add_ln19_fu_329_p2;
    sc_signal< sc_lv<24> > trunc_ln_fu_335_p4;
    sc_signal< sc_lv<12> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<12> ap_ST_fsm_state1;
    static const sc_lv<12> ap_ST_fsm_state2;
    static const sc_lv<12> ap_ST_fsm_state3;
    static const sc_lv<12> ap_ST_fsm_state4;
    static const sc_lv<12> ap_ST_fsm_state5;
    static const sc_lv<12> ap_ST_fsm_state6;
    static const sc_lv<12> ap_ST_fsm_state7;
    static const sc_lv<12> ap_ST_fsm_state8;
    static const sc_lv<12> ap_ST_fsm_state9;
    static const sc_lv<12> ap_ST_fsm_state10;
    static const sc_lv<12> ap_ST_fsm_state11;
    static const sc_lv<12> ap_ST_fsm_state12;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<29> ap_const_lv29_80;
    static const sc_lv<31> ap_const_lv31_0;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<29> ap_const_lv29_0;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<23> ap_const_lv23_0;
    static const sc_lv<32> ap_const_lv32_1C;
    static const sc_lv<32> ap_const_lv32_3802001;
    static const sc_lv<55> ap_const_lv55_7FFFFFFF801FFF;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<32> ap_const_lv32_37;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_a_address0();
    void thread_a_ce0();
    void thread_a_d0();
    void thread_a_we0();
    void thread_add_ln19_fu_329_p2();
    void thread_add_ln55_fu_289_p2();
    void thread_add_ln57_fu_201_p2();
    void thread_add_ln58_1_fu_259_p2();
    void thread_add_ln58_fu_253_p2();
    void thread_add_ln59_fu_273_p2();
    void thread_add_ln60_fu_356_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_empty_86_fu_210_p2();
    void thread_icmp_ln54_fu_147_p2();
    void thread_icmp_ln55_fu_167_p2();
    void thread_icmp_ln57_fu_240_p2();
    void thread_j_4_fu_283_p2();
    void thread_k_fu_176_p2();
    void thread_mul_ln19_fu_317_p1();
    void thread_mul_ln19_fu_317_p2();
    void thread_mul_ln58_fu_300_p0();
    void thread_mul_ln58_fu_300_p1();
    void thread_mul_ln58_fu_300_p2();
    void thread_sext_ln19_8_fu_326_p1();
    void thread_sext_ln57_fu_236_p1();
    void thread_sext_ln58_1_fu_323_p1();
    void thread_start_fu_224_p3();
    void thread_sub_ln59_fu_349_p2();
    void thread_t_15_fu_345_p1();
    void thread_t_fu_309_p2();
    void thread_tmp_23_fu_157_p4();
    void thread_tmp_24_fu_187_p4();
    void thread_tmp_fu_126_p3();
    void thread_trunc_ln18_fu_305_p1();
    void thread_trunc_ln55_1_fu_220_p1();
    void thread_trunc_ln55_fu_216_p1();
    void thread_trunc_ln58_1_fu_249_p1();
    void thread_trunc_ln58_fu_245_p1();
    void thread_trunc_ln59_fu_269_p1();
    void thread_trunc_ln_fu_335_p4();
    void thread_zetas_address0();
    void thread_zetas_ce0();
    void thread_zext_ln49_fu_134_p1();
    void thread_zext_ln54_1_fu_197_p1();
    void thread_zext_ln54_fu_143_p1();
    void thread_zext_ln55_1_fu_232_p1();
    void thread_zext_ln55_fu_153_p1();
    void thread_zext_ln56_fu_182_p1();
    void thread_zext_ln57_fu_206_p1();
    void thread_zext_ln58_fu_264_p1();
    void thread_zext_ln59_fu_278_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
