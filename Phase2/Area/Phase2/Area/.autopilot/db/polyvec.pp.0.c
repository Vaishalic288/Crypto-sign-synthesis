# 1 "dilithium2/polyvec.c"
# 1 "dilithium2/polyvec.c" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 147 "<built-in>" 3
# 1 "<command line>" 1






# 1 "C:/Xilinx/Vivado/2019.2/common/technology/autopilot\\etc/autopilot_ssdm_op.h" 1
# 305 "C:/Xilinx/Vivado/2019.2/common/technology/autopilot\\etc/autopilot_ssdm_op.h"
    void _ssdm_op_IfRead() __attribute__ ((nothrow));
    void _ssdm_op_IfWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanWrite() __attribute__ ((nothrow));


    void _ssdm_StreamRead() __attribute__ ((nothrow));
    void _ssdm_StreamWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanWrite() __attribute__ ((nothrow));




    void _ssdm_op_MemShiftRead() __attribute__ ((nothrow));

    void _ssdm_op_Wait() __attribute__ ((nothrow));
    void _ssdm_op_Poll() __attribute__ ((nothrow));

    void _ssdm_op_Return() __attribute__ ((nothrow));


    void _ssdm_op_SpecSynModule() __attribute__ ((nothrow));
    void _ssdm_op_SpecTopModule() __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDecl() __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDef() __attribute__ ((nothrow));
    void _ssdm_op_SpecPort() __attribute__ ((nothrow));
    void _ssdm_op_SpecConnection() __attribute__ ((nothrow));
    void _ssdm_op_SpecChannel() __attribute__ ((nothrow));
    void _ssdm_op_SpecSensitive() __attribute__ ((nothrow));
    void _ssdm_op_SpecModuleInst() __attribute__ ((nothrow));
    void _ssdm_op_SpecPortMap() __attribute__ ((nothrow));

    void _ssdm_op_SpecReset() __attribute__ ((nothrow));

    void _ssdm_op_SpecPlatform() __attribute__ ((nothrow));
    void _ssdm_op_SpecClockDomain() __attribute__ ((nothrow));
    void _ssdm_op_SpecPowerDomain() __attribute__ ((nothrow));

    int _ssdm_op_SpecRegionBegin() __attribute__ ((nothrow));
    int _ssdm_op_SpecRegionEnd() __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopName() __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopTripCount() __attribute__ ((nothrow));

    int _ssdm_op_SpecStateBegin() __attribute__ ((nothrow));
    int _ssdm_op_SpecStateEnd() __attribute__ ((nothrow));

    void _ssdm_op_SpecInterface() __attribute__ ((nothrow));

    void _ssdm_op_SpecPipeline() __attribute__ ((nothrow));
    void _ssdm_op_SpecDataflowPipeline() __attribute__ ((nothrow));


    void _ssdm_op_SpecLatency() __attribute__ ((nothrow));
    void _ssdm_op_SpecParallel() __attribute__ ((nothrow));
    void _ssdm_op_SpecProtocol() __attribute__ ((nothrow));
    void _ssdm_op_SpecOccurrence() __attribute__ ((nothrow));

    void _ssdm_op_SpecResource() __attribute__ ((nothrow));
    void _ssdm_op_SpecResourceLimit() __attribute__ ((nothrow));
    void _ssdm_op_SpecCHCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecFUCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecIFCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecIPCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecKeepValue() __attribute__ ((nothrow));
    void _ssdm_op_SpecMemCore() __attribute__ ((nothrow));

    void _ssdm_op_SpecExt() __attribute__ ((nothrow));




    void _ssdm_SpecArrayDimSize() __attribute__ ((nothrow));

    void _ssdm_RegionBegin() __attribute__ ((nothrow));
    void _ssdm_RegionEnd() __attribute__ ((nothrow));

    void _ssdm_Unroll() __attribute__ ((nothrow));
    void _ssdm_UnrollRegion() __attribute__ ((nothrow));

    void _ssdm_InlineAll() __attribute__ ((nothrow));
    void _ssdm_InlineLoop() __attribute__ ((nothrow));
    void _ssdm_Inline() __attribute__ ((nothrow));
    void _ssdm_InlineSelf() __attribute__ ((nothrow));
    void _ssdm_InlineRegion() __attribute__ ((nothrow));

    void _ssdm_SpecArrayMap() __attribute__ ((nothrow));
    void _ssdm_SpecArrayPartition() __attribute__ ((nothrow));
    void _ssdm_SpecArrayReshape() __attribute__ ((nothrow));

    void _ssdm_SpecStream() __attribute__ ((nothrow));

    void _ssdm_op_SpecStable() __attribute__ ((nothrow));
    void _ssdm_op_SpecStableContent() __attribute__ ((nothrow));

    void _ssdm_op_SpecPipoDepth() __attribute__ ((nothrow));

    void _ssdm_SpecExpr() __attribute__ ((nothrow));
    void _ssdm_SpecExprBalance() __attribute__ ((nothrow));

    void _ssdm_SpecDependence() __attribute__ ((nothrow));

    void _ssdm_SpecLoopMerge() __attribute__ ((nothrow));
    void _ssdm_SpecLoopFlatten() __attribute__ ((nothrow));
    void _ssdm_SpecLoopRewind() __attribute__ ((nothrow));

    void _ssdm_SpecFuncInstantiation() __attribute__ ((nothrow));
    void _ssdm_SpecFuncBuffer() __attribute__ ((nothrow));
    void _ssdm_SpecFuncExtract() __attribute__ ((nothrow));
    void _ssdm_SpecConstant() __attribute__ ((nothrow));

    void _ssdm_DataPack() __attribute__ ((nothrow));
    void _ssdm_SpecDataPack() __attribute__ ((nothrow));

    void _ssdm_op_SpecBitsMap() __attribute__ ((nothrow));
    void _ssdm_op_SpecLicense() __attribute__ ((nothrow));
# 8 "<command line>" 2
# 1 "<built-in>" 2
# 1 "dilithium2/polyvec.c" 2
# 1 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/include\\stdint.h" 1 3 4
# 33 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/include\\stdint.h" 3 4
# 1 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdint.h" 1 3 4
# 28 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdint.h" 3 4
# 1 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 1 3 4
# 10 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3 4
# 1 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include/_mingw_mac.h" 1 3 4
# 10 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 2 3 4
# 277 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3 4
# 1 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\vadefs.h" 1 3 4
# 13 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\vadefs.h" 3 4
# 1 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 1 3 4
# 674 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3 4
# 1 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include/sdks/_mingw_directx.h" 1 3 4
# 674 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 2 3 4

# 1 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include/sdks/_mingw_ddk.h" 1 3 4
# 675 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 2 3 4
# 13 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\vadefs.h" 2 3 4


#pragma pack(push,_CRT_PACKING)








 typedef __builtin_va_list __gnuc_va_list;






  typedef __gnuc_va_list va_list;
# 102 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\vadefs.h" 3 4
#pragma pack(pop)
# 277 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 2 3 4


#pragma pack(push,_CRT_PACKING)
# 370 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3 4
__extension__ typedef unsigned long long size_t;
# 380 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3 4
__extension__ typedef long long ssize_t;
# 392 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3 4
__extension__ typedef long long intptr_t;
# 405 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3 4
__extension__ typedef unsigned long long uintptr_t;
# 418 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3 4
__extension__ typedef long long ptrdiff_t;
# 428 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3 4
typedef unsigned short wchar_t;







typedef unsigned short wint_t;
typedef unsigned short wctype_t;
# 456 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3 4
typedef int errno_t;




typedef long __time32_t;




__extension__ typedef long long __time64_t;







typedef __time64_t time_t;
# 607 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3 4
struct threadlocaleinfostruct;
struct threadmbcinfostruct;
typedef struct threadlocaleinfostruct *pthreadlocinfo;
typedef struct threadmbcinfostruct *pthreadmbcinfo;
struct __lc_time_data;

typedef struct localeinfo_struct {
  pthreadlocinfo locinfo;
  pthreadmbcinfo mbcinfo;
} _locale_tstruct,*_locale_t;



typedef struct tagLC_ID {
  unsigned short wLanguage;
  unsigned short wCountry;
  unsigned short wCodePage;
} LC_ID,*LPLC_ID;




typedef struct threadlocaleinfostruct {
  int refcount;
  unsigned int lc_codepage;
  unsigned int lc_collate_cp;
  unsigned long lc_handle[6];
  LC_ID lc_id[6];
  struct {
    char *locale;
    wchar_t *wlocale;
    int *refcount;
    int *wrefcount;
  } lc_category[6];
  int lc_clike;
  int mb_cur_max;
  int *lconv_intl_refcount;
  int *lconv_num_refcount;
  int *lconv_mon_refcount;
  struct lconv *lconv;
  int *ctype1_refcount;
  unsigned short *ctype1;
  const unsigned short *pctype;
  const unsigned char *pclmap;
  const unsigned char *pcumap;
  struct __lc_time_data *lc_time_curr;
} threadlocinfo;







const char *__mingw_get_crt_info (void);





#pragma pack(pop)
# 28 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdint.h" 2 3 4




# 1 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/include\\stddef.h" 1 3 4
# 31 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/include\\stddef.h" 3 4
typedef __typeof__(((int*)0)-((int*)0)) ptrdiff_t;



typedef __typeof__(sizeof(int)) size_t;




typedef unsigned short wchar_t;
# 32 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdint.h" 2 3 4



typedef signed char int8_t;
typedef unsigned char uint8_t;
typedef short int16_t;
typedef unsigned short uint16_t;
typedef int int32_t;
typedef unsigned uint32_t;
__extension__ typedef long long int64_t;
__extension__ typedef unsigned long long uint64_t;


typedef signed char int_least8_t;
typedef unsigned char uint_least8_t;
typedef short int_least16_t;
typedef unsigned short uint_least16_t;
typedef int int_least32_t;
typedef unsigned uint_least32_t;
__extension__ typedef long long int_least64_t;
__extension__ typedef unsigned long long uint_least64_t;





typedef signed char int_fast8_t;
typedef unsigned char uint_fast8_t;
typedef short int_fast16_t;
typedef unsigned short uint_fast16_t;
typedef int int_fast32_t;
typedef unsigned int uint_fast32_t;
__extension__ typedef long long int_fast64_t;
__extension__ typedef unsigned long long uint_fast64_t;


__extension__ typedef long long intmax_t;
__extension__ typedef unsigned long long uintmax_t;
# 33 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/include\\stdint.h" 2 3 4
# 2 "dilithium2/polyvec.c" 2
# 1 "dilithium2/params.h" 1



# 1 "dilithium2/config.h" 1
# 5 "dilithium2/params.h" 2
# 3 "dilithium2/polyvec.c" 2
# 1 "dilithium2/polyvec.h" 1





# 1 "dilithium2/poly.h" 1






typedef struct {
  int32_t coeffs[256];
} poly;


void pqcrystals_dilithium2_ref_poly_reduce(poly *a);

void pqcrystals_dilithium2_ref_poly_caddq(poly *a);

void pqcrystals_dilithium2_ref_poly_freeze(poly *a);


void pqcrystals_dilithium2_ref_poly_add(poly *c, const poly *a, const poly *b);

void pqcrystals_dilithium2_ref_poly_sub(poly *c, const poly *a, const poly *b);

void pqcrystals_dilithium2_ref_poly_shiftl(poly *a);


void pqcrystals_dilithium2_ref_poly_ntt(poly *a);

void pqcrystals_dilithium2_ref_poly_invntt_tomont(poly *a);

void pqcrystals_dilithium2_ref_poly_pointwise_montgomery(poly *c, const poly *a, const poly *b);


void pqcrystals_dilithium2_ref_poly_power2round(poly *a1, poly *a0, const poly *a);

void pqcrystals_dilithium2_ref_poly_decompose(poly *a1, poly *a0, const poly *a);

unsigned int pqcrystals_dilithium2_ref_poly_make_hint(poly *h, const poly *a0, const poly *a1);

void pqcrystals_dilithium2_ref_poly_use_hint(poly *b, const poly *a, const poly *h);


int pqcrystals_dilithium2_ref_poly_chknorm(const poly *a, int32_t B);

void pqcrystals_dilithium2_ref_poly_uniform(poly *a,
                  const uint8_t seed[32],
                  uint16_t nonce);

void pqcrystals_dilithium2_ref_poly_uniform_eta(poly *a,
                      const uint8_t seed[32],
                      uint16_t nonce);

void pqcrystals_dilithium2_ref_poly_uniform_gamma1(poly *a,
                         const uint8_t seed[48],
                         uint16_t nonce);

void pqcrystals_dilithium2_ref_poly_challenge(poly *c, const uint8_t seed[32]);


void pqcrystals_dilithium2_ref_polyeta_pack(uint8_t *r, const poly *a);

void pqcrystals_dilithium2_ref_polyeta_unpack(poly *r, const uint8_t *a);


void pqcrystals_dilithium2_ref_polyt1_pack(uint8_t *r, const poly *a);

void pqcrystals_dilithium2_ref_polyt1_unpack(poly *r, const uint8_t *a);


void pqcrystals_dilithium2_ref_polyt0_pack(uint8_t *r, const poly *a);

void pqcrystals_dilithium2_ref_polyt0_unpack(poly *r, const uint8_t *a);


void pqcrystals_dilithium2_ref_polyz_pack(uint8_t *r, const poly *a);

void pqcrystals_dilithium2_ref_polyz_unpack(poly *r, const uint8_t *a);


void pqcrystals_dilithium2_ref_polyw1_pack(uint8_t *r, const poly *a);
# 7 "dilithium2/polyvec.h" 2


typedef struct {
  poly vec[4];
} polyvecl;


void pqcrystals_dilithium2_ref_polyvecl_uniform_eta(polyvecl *v, const uint8_t seed[32], uint16_t nonce);


void pqcrystals_dilithium2_ref_polyvecl_uniform_gamma1(polyvecl *v, const uint8_t seed[32], uint16_t nonce);


void pqcrystals_dilithium2_ref_polyvecl_reduce(polyvecl *v);


void pqcrystals_dilithium2_ref_polyvecl_freeze(polyvecl *v);


void pqcrystals_dilithium2_ref_polyvecl_add(polyvecl *w, const polyvecl *u, const polyvecl *v);


void pqcrystals_dilithium2_ref_polyvecl_ntt(polyvecl *v);

void pqcrystals_dilithium2_ref_polyvecl_invntt_tomont(polyvecl *v);

void pqcrystals_dilithium2_ref_polyvecl_pointwise_poly_montgomery(polyvecl *r, const poly *a, const polyvecl *v);


void pqcrystals_dilithium2_ref_polyvecl_pointwise_acc_montgomery(poly *w,
                                       const polyvecl *u,
                                       const polyvecl *v);



int pqcrystals_dilithium2_ref_polyvecl_chknorm(const polyvecl *v, int32_t B);




typedef struct {
  poly vec[4];
} polyveck;


void pqcrystals_dilithium2_ref_polyveck_uniform_eta(polyveck *v, const uint8_t seed[32], uint16_t nonce);


void pqcrystals_dilithium2_ref_polyveck_reduce(polyveck *v);

void pqcrystals_dilithium2_ref_polyveck_caddq(polyveck *v);

void pqcrystals_dilithium2_ref_polyveck_freeze(polyveck *v);


void pqcrystals_dilithium2_ref_polyveck_add(polyveck *w, const polyveck *u, const polyveck *v);

void pqcrystals_dilithium2_ref_polyveck_sub(polyveck *w, const polyveck *u, const polyveck *v);

void pqcrystals_dilithium2_ref_polyveck_shiftl(polyveck *v);


void pqcrystals_dilithium2_ref_polyveck_ntt(polyveck *v);

void pqcrystals_dilithium2_ref_polyveck_invntt_tomont(polyveck *v);

void pqcrystals_dilithium2_ref_polyveck_pointwise_poly_montgomery(polyveck *r, const poly *a, const polyveck *v);


int pqcrystals_dilithium2_ref_polyveck_chknorm(const polyveck *v, int32_t B);


void pqcrystals_dilithium2_ref_polyveck_power2round(polyveck *v1, polyveck *v0, const polyveck *v);

void pqcrystals_dilithium2_ref_polyveck_decompose(polyveck *v1, polyveck *v0, const polyveck *v);

unsigned int pqcrystals_dilithium2_ref_polyveck_make_hint(polyveck *h,
                                const polyveck *v0,
                                const polyveck *v1);

void pqcrystals_dilithium2_ref_polyveck_use_hint(polyveck *w, const polyveck *v, const polyveck *h);


void pqcrystals_dilithium2_ref_polyveck_pack_w1(uint8_t r[4*192], const polyveck *w1);


void pqcrystals_dilithium2_ref_polyvec_matrix_expand(polyvecl mat[4], const uint8_t rho[32]);


void pqcrystals_dilithium2_ref_polyvec_matrix_pointwise_montgomery(polyveck *t, const polyvecl mat[4], const polyvecl *v);
# 4 "dilithium2/polyvec.c" 2
# 17 "dilithium2/polyvec.c"
void pqcrystals_dilithium2_ref_polyvec_matrix_expand(polyvecl mat[4], const uint8_t rho[32]) {_ssdm_SpecArrayDimSize(mat, 4);_ssdm_SpecArrayDimSize(rho, 32);
  unsigned int i, j;

  for(i = 0; i < 4; ++i)
    for(j = 0; j < 4; ++j)
      pqcrystals_dilithium2_ref_poly_uniform(&mat[i].vec[j], rho, (i << 8) + j);
}

void pqcrystals_dilithium2_ref_polyvec_matrix_pointwise_montgomery(polyveck *t, const polyvecl mat[4], const polyvecl *v) {_ssdm_SpecArrayDimSize(mat, 4);
#pragma HLS INLINE
# 25 "dilithium2/polyvec.c"

  unsigned int i;

  for(i = 0; i < 4; ++i)
    pqcrystals_dilithium2_ref_polyvecl_pointwise_acc_montgomery(&t->vec[i], &mat[i], v);
}





void pqcrystals_dilithium2_ref_polyvecl_uniform_eta(polyvecl *v, const uint8_t seed[32], uint16_t nonce) {_ssdm_SpecArrayDimSize(seed, 32);
#pragma HLS INLINE
# 36 "dilithium2/polyvec.c"

  unsigned int i;

  for(i = 0; i < 4; ++i)
    pqcrystals_dilithium2_ref_poly_uniform_eta(&v->vec[i], seed, nonce++);
}

void pqcrystals_dilithium2_ref_polyvecl_uniform_gamma1(polyvecl *v, const uint8_t seed[32], uint16_t nonce) {_ssdm_SpecArrayDimSize(seed, 32);
#pragma HLS INLINE
# 43 "dilithium2/polyvec.c"

  unsigned int i;

  for(i = 0; i < 4; ++i)
    pqcrystals_dilithium2_ref_poly_uniform_gamma1(&v->vec[i], seed, 4*nonce + i);
}

void pqcrystals_dilithium2_ref_polyvecl_reduce(polyvecl *v) {
  unsigned int i;

  for(i = 0; i < 4; ++i)
    pqcrystals_dilithium2_ref_poly_reduce(&v->vec[i]);
}
# 65 "dilithium2/polyvec.c"
void pqcrystals_dilithium2_ref_polyvecl_freeze(polyvecl *v) {
  unsigned int i;

  for(i = 0; i < 4; ++i)
    pqcrystals_dilithium2_ref_poly_freeze(&v->vec[i]);
}
# 82 "dilithium2/polyvec.c"
void pqcrystals_dilithium2_ref_polyvecl_add(polyvecl *w, const polyvecl *u, const polyvecl *v) {
  unsigned int i;

  for(i = 0; i < 4; ++i)
    pqcrystals_dilithium2_ref_poly_add(&w->vec[i], &u->vec[i], &v->vec[i]);
}
# 97 "dilithium2/polyvec.c"
void pqcrystals_dilithium2_ref_polyvecl_ntt(polyvecl *v) {
#pragma HLS INLINE
# 97 "dilithium2/polyvec.c"

  unsigned int i;

  for(i = 0; i < 4; ++i)
    pqcrystals_dilithium2_ref_poly_ntt(&v->vec[i]);
}

void pqcrystals_dilithium2_ref_polyvecl_invntt_tomont(polyvecl *v) {
  unsigned int i;

  for(i = 0; i < 4; ++i)
    pqcrystals_dilithium2_ref_poly_invntt_tomont(&v->vec[i]);
}

void pqcrystals_dilithium2_ref_polyvecl_pointwise_poly_montgomery(polyvecl *r, const poly *a, const polyvecl *v) {
  unsigned int i;

  for(i = 0; i < 4; ++i)
    pqcrystals_dilithium2_ref_poly_pointwise_montgomery(&r->vec[i], a, &v->vec[i]);
}
# 129 "dilithium2/polyvec.c"
void pqcrystals_dilithium2_ref_polyvecl_pointwise_acc_montgomery(poly *w,
                                       const polyvecl *u,
                                       const polyvecl *v)
{
  unsigned int i;
  poly t;

  pqcrystals_dilithium2_ref_poly_pointwise_montgomery(w, &u->vec[0], &v->vec[0]);
  for(i = 1; i < 4; ++i) {
    pqcrystals_dilithium2_ref_poly_pointwise_montgomery(&t, &u->vec[i], &v->vec[i]);
    pqcrystals_dilithium2_ref_poly_add(w, w, &t);
  }
}
# 155 "dilithium2/polyvec.c"
int pqcrystals_dilithium2_ref_polyvecl_chknorm(const polyvecl *v, int32_t bound) {
  unsigned int i;

  for(i = 0; i < 4; ++i)
    if(pqcrystals_dilithium2_ref_poly_chknorm(&v->vec[i], bound))
      return 1;

  return 0;
}





void pqcrystals_dilithium2_ref_polyveck_uniform_eta(polyveck *v, const uint8_t seed[32], uint16_t nonce) {_ssdm_SpecArrayDimSize(seed, 32);
#pragma HLS INLINE
# 169 "dilithium2/polyvec.c"

  unsigned int i;

  for(i = 0; i < 4; ++i)
    pqcrystals_dilithium2_ref_poly_uniform_eta(&v->vec[i], seed, nonce++);
}
# 184 "dilithium2/polyvec.c"
void pqcrystals_dilithium2_ref_polyveck_reduce(polyveck *v) {
  unsigned int i;

  for(i = 0; i < 4; ++i)
    pqcrystals_dilithium2_ref_poly_reduce(&v->vec[i]);
}
# 199 "dilithium2/polyvec.c"
void pqcrystals_dilithium2_ref_polyveck_caddq(polyveck *v) {
  unsigned int i;

  for(i = 0; i < 4; ++i)
    pqcrystals_dilithium2_ref_poly_caddq(&v->vec[i]);
}
# 214 "dilithium2/polyvec.c"
void pqcrystals_dilithium2_ref_polyveck_freeze(polyveck *v) {
  unsigned int i;

  for(i = 0; i < 4; ++i)
    pqcrystals_dilithium2_ref_poly_freeze(&v->vec[i]);
}
# 231 "dilithium2/polyvec.c"
void pqcrystals_dilithium2_ref_polyveck_add(polyveck *w, const polyveck *u, const polyveck *v) {
  unsigned int i;

  for(i = 0; i < 4; ++i)
    pqcrystals_dilithium2_ref_poly_add(&w->vec[i], &u->vec[i], &v->vec[i]);
}
# 249 "dilithium2/polyvec.c"
void pqcrystals_dilithium2_ref_polyveck_sub(polyveck *w, const polyveck *u, const polyveck *v) {
  unsigned int i;

  for(i = 0; i < 4; ++i)
    pqcrystals_dilithium2_ref_poly_sub(&w->vec[i], &u->vec[i], &v->vec[i]);
}
# 264 "dilithium2/polyvec.c"
void pqcrystals_dilithium2_ref_polyveck_shiftl(polyveck *v) {
  unsigned int i;

  for(i = 0; i < 4; ++i)
    pqcrystals_dilithium2_ref_poly_shiftl(&v->vec[i]);
}
# 279 "dilithium2/polyvec.c"
void pqcrystals_dilithium2_ref_polyveck_ntt(polyveck *v) {
  unsigned int i;

  for(i = 0; i < 4; ++i)
    pqcrystals_dilithium2_ref_poly_ntt(&v->vec[i]);
}
# 295 "dilithium2/polyvec.c"
void pqcrystals_dilithium2_ref_polyveck_invntt_tomont(polyveck *v) {
  unsigned int i;

  for(i = 0; i < 4; ++i)
    pqcrystals_dilithium2_ref_poly_invntt_tomont(&v->vec[i]);
}

void pqcrystals_dilithium2_ref_polyveck_pointwise_poly_montgomery(polyveck *r, const poly *a, const polyveck *v) {
  unsigned int i;

  for(i = 0; i < 4; ++i)
    pqcrystals_dilithium2_ref_poly_pointwise_montgomery(&r->vec[i], a, &v->vec[i]);
}
# 322 "dilithium2/polyvec.c"
int pqcrystals_dilithium2_ref_polyveck_chknorm(const polyveck *v, int32_t bound) {
  unsigned int i;

  for(i = 0; i < 4; ++i)
    if(pqcrystals_dilithium2_ref_poly_chknorm(&v->vec[i], bound))
      return 1;

  return 0;
}
# 346 "dilithium2/polyvec.c"
void pqcrystals_dilithium2_ref_polyveck_power2round(polyveck *v1, polyveck *v0, const polyveck *v) {
  unsigned int i;

  for(i = 0; i < 4; ++i)
    pqcrystals_dilithium2_ref_poly_power2round(&v1->vec[i], &v0->vec[i], &v->vec[i]);
}
# 368 "dilithium2/polyvec.c"
void pqcrystals_dilithium2_ref_polyveck_decompose(polyveck *v1, polyveck *v0, const polyveck *v) {
  unsigned int i;

  for(i = 0; i < 4; ++i)
    pqcrystals_dilithium2_ref_poly_decompose(&v1->vec[i], &v0->vec[i], &v->vec[i]);
}
# 386 "dilithium2/polyvec.c"
unsigned int pqcrystals_dilithium2_ref_polyveck_make_hint(polyveck *h,
                                const polyveck *v0,
                                const polyveck *v1)
{
  unsigned int i, s = 0;

  for(i = 0; i < 4; ++i)
    s += pqcrystals_dilithium2_ref_poly_make_hint(&h->vec[i], &v0->vec[i], &v1->vec[i]);

  return s;
}
# 408 "dilithium2/polyvec.c"
void pqcrystals_dilithium2_ref_polyveck_use_hint(polyveck *w, const polyveck *u, const polyveck *h) {
  unsigned int i;

  for(i = 0; i < 4; ++i)
    pqcrystals_dilithium2_ref_poly_use_hint(&w->vec[i], &u->vec[i], &h->vec[i]);
}

void pqcrystals_dilithium2_ref_polyveck_pack_w1(uint8_t r[4*192], const polyveck *w1) {_ssdm_SpecArrayDimSize(r, 768);
  unsigned int i;

  for(i = 0; i < 4; ++i)
    pqcrystals_dilithium2_ref_polyw1_pack(&r[i*192], &w1->vec[i]);
}
