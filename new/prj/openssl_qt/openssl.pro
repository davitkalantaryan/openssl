
QT -= core
QT -= gui

QMAKE_CFLAGS_WARN_ON += -Wno-unused-parameter
QMAKE_CFLAGS_WARN_ON += -Wno-missing-field-initializers

#QMAKE_CFLAGS += -include first_include_for_libcrypto.h

QMAKE_CFLAGS += -pthread
QMAKE_CFLAGS += -Wa,
#QMAKE_CFLAGS += --noexecstack
QMAKE_CFLAGS += -O3

DEFINES += OPENSSL_USE_NODELETE
DEFINES += OPENSSL_PIC
DEFINES += OPENSSL_CPUID_OBJ
DEFINES += OPENSSL_BN_ASM_MONT
DEFINES += OPENSSL_BN_ASM_GF2m
DEFINES += SHA1_ASM
DEFINES += SHA256_ASM
DEFINES += SHA512_ASM
DEFINES += KECCAK1600_ASM
DEFINES += AES_ASM
DEFINES += BSAES_ASM
DEFINES += GHASH_ASM
DEFINES += ECP_NISTZ256_ASM
DEFINES += POLY1305_ASM

INCLUDEPATH += $$(PWD)/../../include
INCLUDEPATH += $$(PWD)/../../../crypto/include
INCLUDEPATH += $$(PWD)/../../../include
INCLUDEPATH += $$(PWD)/../../..
INCLUDEPATH += $$(PWD)/../../../crypto/modes
INCLUDEPATH += $$(PWD)/../../../crypto/bn
INCLUDEPATH += $$(PWD)/../../../crypto

DEFINES += THIRTY_TWO_BIT
DEFINES += OPENSSL_32_BIT
#DEFINES += OPENSSL_API_COMPAT=0x20100000L

# in the case of clang
DEFINES += __GLIBCXX_BITSIZE_INT_N_0=128
DEFINES += __GLIBCXX_TYPE_INT_N_0=__int128
DEFINES += DEFINE_128_BIT


DEFINES += OPENSSL_NO_CRYPTO_MDEBUG_BACKTRACE
DEFINES += NO_WINDOWS_BRAINDEATH

#DEFINES += OPENSSL_API_COMPAT=0
#DEFINES += OPENSSL_NO_BF
#DEFINES += OPENSSL_NO_BUF_FREELISTS
#DEFINES += OPENSSL_NO_CAMELLIA
#DEFINES += OPENSSL_NO_CAPIENG
#DEFINES += OPENSSL_NO_CAST
#DEFINES += OPENSSL_NO_CMS
#DEFINES += OPENSSL_NO_COMP
#DEFINES += OPENSSL_NO_DANE
#DEFINES += OPENSSL_NO_DEPRECATED
#DEFINES += OPENSSL_NO_DYNAMIC_ENGINE
#DEFINES += OPENSSL_NO_EC_NISTP_64_GCC_128
#DEFINES += OPENSSL_NO_EC2M
#DEFINES += OPENSSL_NO_ENGINE
#DEFINES += OPENSSL_NO_GMP
#DEFINES += OPENSSL_NO_GOST
#DEFINES += OPENSSL_NO_HEARTBEATS
#DEFINES += OPENSSL_NO_HW
#DEFINES += OPENSSL_NO_IDEA
#DEFINES += OPENSSL_NO_JPAKE
#DEFINES += OPENSSL_NO_KRB5
#DEFINES += OPENSSL_NO_MD2
#DEFINES += OPENSSL_NO_MDC2
#DEFINES += OPENSSL_NO_OCB
#DEFINES += OPENSSL_NO_OCSP
#DEFINES += OPENSSL_NO_RC2
#DEFINES += OPENSSL_NO_RC5
#DEFINES += OPENSSL_NO_RFC3779
#DEFINES += OPENSSL_NO_RIPEMD
#DEFINES += OPENSSL_NO_RMD160
DEFINES += OPENSSL_NO_SCTP
#DEFINES += OPENSSL_NO_SEED
#DEFINES += OPENSSL_NO_SRP
#DEFINES += OPENSSL_NO_SSL2
#DEFINES += OPENSSL_NO_STATIC_ENGINE
#DEFINES += OPENSSL_NO_STORE
#DEFINES += OPENSSL_NO_WHIRLPOOL


OTHER_FILES += \
    $$(PWD)/../../../../../.others_sources/openssl/boringssl/include/openssl/opensslconf.h \
    $$(PWD)/../../../include/openssl/opensslconf.h \
    $$(PWD)/../../../../../.others_sources/openssl/boringssl/include/openssl/bn.h \
    $$(PWD)/../../../../../.others_sources/openssl/crypto/poly1305/poly1305_ieee754.c  \
    $$(PWD)/../../../../../.others_sources/openssl/CHANGES \
    $$(PWD)/../../../../../.others_sources/openssl/INSTALL \
    $$(PWD)/../../../../../.others_sources/openssl/crypto/bn/bn_div.c \
    $$(PWD)/../../../../../.others_sources/openssl/crypto/bn/bn_lcl.h

OTHER_FILES += \
    $$(PWD)/../../../crypto/whrlpool/wp_dgst.c                \
    $$(PWD)/../../../crypto/whrlpool/wp_block.c               \
    $$(PWD)/../../../crypto/pkcs7/pk7_enc.c                   \
    $$(PWD)/../../../crypto/ec/ecp_nistz256_table.c           \
    $$(PWD)/../../../crypto/poly1305/poly1305_ieee754.c       \
    $$(PWD)/../../../crypto/aes/aes_misc.c                    \
    $$(PWD)/../../../crypto/aes/aes_x86core.c                 \
    $$(PWD)/../../../crypto/bn/asm/x86_64-gcc.c

# following sources contains main
# $$(PWD)/../../../crypto/evp/p5_crpt2.c            # ifdef DO_TEST
# $$(PWD)/../../../crypto/asn1/ameth_lib.c          #ifdef TEST
# $$(PWD)/../../../crypto/objects/obj_xref.c        #ifdef OBJ_XREF_TEST
# $$(PWD)/../../../crypto/asn1/a_strnid.c            #ifdef STRING_TABLE_TEST
OTHER_FILES += \
    $$(PWD)/../../../crypto/x509v3/v3conf.c                   \
    $$(PWD)/../../../crypto/modes/gcm128.c                    \
    $$(PWD)/../../../crypto/evp/p5_crpt2.c                    \
    $$(PWD)/../../../crypto/asn1/ameth_lib.c                  \
    $$(PWD)/../../../crypto/asn1/a_strnid.c                   \
    $$(PWD)/../../../crypto/rc2/tab.c                         \
    $$(PWD)/../../../crypto/x509v3/tabtest.c                  \
    $$(PWD)/../../../crypto/x509v3/v3prin.c                   \
    $$(PWD)/../../../crypto/modes/cts128.c

# other platforms
OTHER_FILES += \
    $$(PWD)/../../../crypto/ppccap.c                          \
    $$(PWD)/../../../crypto/s390xcap.c                        \
    $$(PWD)/../../../crypto/sparcv9cap.c

# multiple defination files
OTHER_FILES += \
    $$(PWD)/../../../crypto/armcap.c                          \
    $$(PWD)/../../../crypto/bf/bf_enc.c                       \
    $$(PWD)/../../../crypto/bf/bf_cbc.c                       \
    $$(PWD)/../../../crypto/cryptlib.c

# bad sources
OTHER_FILES += \
    $$(PWD)/../../src/asm/poly1305_arm_asm.S                  \
    $$(PWD)/../../src/asm/poly1305_arm.s                      \
    $$(PWD)/../../src/asm/x25519-asm-arm.S


OTHER_FILES += \
    $(PWD)/../../../crypto/ec/asm/ecp_nistz256-armv4.pl


HEADERS += \
    $$(PWD)/../../../include/openssl/opensslconf.h \
    $$(PWD)/../../../crypto/include/internal/dso_conf.h \
    ../../include/first_include_for_libcrypto.h

OTHER_FILES += \
    $$(PWD)/../../../crypto/crmf/crmf_asn.c                  \
    $$(PWD)/../../../crypto/crmf/crmf_err.c                  \
    $$(PWD)/../../../crypto/crmf/crmf_lib.c                  \
    $$(PWD)/../../../crypto/crmf/crmf_pbm.c                  \
    $$(PWD)/../../../crypto/conf/conf_ssl.c                  \
    $$(PWD)/../../../crypto/cmac/cm_meth.c                   \
    $$(PWD)/../../../crypto/bn/bn_rsa_fips186_4.c            \
    $$(PWD)/../../../crypto/blake2/blake2b_mac.c             \
    $$(PWD)/../../../crypto/blake2/blake2s_mac.c             \
    $$(PWD)/../../../crypto/asn1/asn1_item_list.c            \
    $$(PWD)/../../../crypto/aria/aria.c


SOURCES += \
    $$(PWD)/../../../crypto/chacha/chacha-armv4.S            \
    $$(PWD)/../../../crypto/bn/armv4-gf2m.S                  \
    $$(PWD)/../../../crypto/bn/armv4-mont.S                  \
    $$(PWD)/../../../crypto/aes/bsaes-armv7.S                \
    $$(PWD)/../../../crypto/aes/aesv8-armx.S                 \
    $$(PWD)/../../../crypto/aes/aes-armv4.S

SOURCES += \
    $$(PWD)/../../../crypto/aes/aes_cbc.c                    \
    $$(PWD)/../../../crypto/aes/aes_cfb.c                    \
    $$(PWD)/../../../crypto/aes/aes_ecb.c                    \
    $$(PWD)/../../../crypto/aes/aes_ige.c                    \
    $$(PWD)/../../../crypto/aes/aes_misc.c                   \
    $$(PWD)/../../../crypto/aes/aes_ofb.c                    \
    $$(PWD)/../../../crypto/aes/aes_wrap.c                   \
    $$(PWD)/../../../crypto/asn1/a_bitstr.c                  \
    $$(PWD)/../../../crypto/asn1/a_d2i_fp.c                  \
    $$(PWD)/../../../crypto/asn1/a_digest.c                  \
    $$(PWD)/../../../crypto/asn1/a_dup.c                     \
    $$(PWD)/../../../crypto/asn1/a_gentm.c                   \
    $$(PWD)/../../../crypto/asn1/a_i2d_fp.c                  \
    $$(PWD)/../../../crypto/asn1/a_int.c                     \
    $$(PWD)/../../../crypto/asn1/a_mbstr.c                   \
    $$(PWD)/../../../crypto/asn1/a_object.c                  \
    $$(PWD)/../../../crypto/asn1/a_octet.c                   \
    $$(PWD)/../../../crypto/asn1/a_print.c                   \
    $$(PWD)/../../../crypto/asn1/a_sign.c                    \
    $$(PWD)/../../../crypto/asn1/a_strex.c                   \
    $$(PWD)/../../../crypto/asn1/a_strnid.c                  \
    $$(PWD)/../../../crypto/asn1/a_time.c                    \
    $$(PWD)/../../../crypto/asn1/a_type.c                    \
    $$(PWD)/../../../crypto/asn1/a_utctm.c                   \
    $$(PWD)/../../../crypto/asn1/a_utf8.c                    \
    $$(PWD)/../../../crypto/asn1/a_verify.c                  \
    $$(PWD)/../../../crypto/asn1/ameth_lib.c                 \
    $$(PWD)/../../../crypto/asn1/asn1_err.c                  \
    $$(PWD)/../../../crypto/asn1/asn1_gen.c                  \
    $$(PWD)/../../../crypto/asn1/asn1_lib.c                  \
    $$(PWD)/../../../crypto/asn1/asn1_par.c                  \
    $$(PWD)/../../../crypto/asn1/asn_mime.c                  \
    $$(PWD)/../../../crypto/asn1/asn_moid.c                  \
    $$(PWD)/../../../crypto/asn1/asn_mstbl.c                 \
    $$(PWD)/../../../crypto/asn1/asn_pack.c                  \
    $$(PWD)/../../../crypto/asn1/bio_asn1.c                  \
    $$(PWD)/../../../crypto/asn1/bio_ndef.c                  \
    $$(PWD)/../../../crypto/asn1/d2i_pr.c                    \
    $$(PWD)/../../../crypto/asn1/d2i_pu.c                    \
    $$(PWD)/../../../crypto/asn1/evp_asn1.c                  \
    $$(PWD)/../../../crypto/asn1/f_int.c                     \
    $$(PWD)/../../../crypto/asn1/f_string.c                  \
    $$(PWD)/../../../crypto/asn1/i2d_pr.c                    \
    $$(PWD)/../../../crypto/asn1/i2d_pu.c                    \
    $$(PWD)/../../../crypto/asn1/n_pkey.c                    \
    $$(PWD)/../../../crypto/asn1/nsseq.c                     \
    $$(PWD)/../../../crypto/asn1/p5_pbe.c                    \
    $$(PWD)/../../../crypto/asn1/p5_pbev2.c                  \
    $$(PWD)/../../../crypto/asn1/p5_scrypt.c                 \
    $$(PWD)/../../../crypto/asn1/p8_pkey.c                   \
    $$(PWD)/../../../crypto/asn1/t_bitst.c                   \
    $$(PWD)/../../../crypto/asn1/t_pkey.c                    \
    $$(PWD)/../../../crypto/asn1/t_spki.c                    \
    $$(PWD)/../../../crypto/asn1/tasn_dec.c                  \
    $$(PWD)/../../../crypto/asn1/tasn_enc.c                  \
    $$(PWD)/../../../crypto/asn1/tasn_fre.c                  \
    $$(PWD)/../../../crypto/asn1/tasn_new.c                  \
    $$(PWD)/../../../crypto/asn1/tasn_prn.c                  \
    $$(PWD)/../../../crypto/asn1/tasn_scn.c                  \
    $$(PWD)/../../../crypto/asn1/tasn_typ.c                  \
    $$(PWD)/../../../crypto/asn1/tasn_utl.c                  \
    $$(PWD)/../../../crypto/asn1/x_algor.c                   \
    $$(PWD)/../../../crypto/asn1/x_bignum.c                  \
    $$(PWD)/../../../crypto/asn1/x_info.c                    \
    $$(PWD)/../../../crypto/asn1/x_int64.c                   \
    $$(PWD)/../../../crypto/asn1/x_long.c                    \
    $$(PWD)/../../../crypto/asn1/x_pkey.c                    \
    $$(PWD)/../../../crypto/asn1/x_sig.c                     \
    $$(PWD)/../../../crypto/asn1/x_spki.c                    \
    $$(PWD)/../../../crypto/asn1/x_val.c                     \
    $$(PWD)/../../../crypto/async/arch/async_null.c          \
    $$(PWD)/../../../crypto/async/arch/async_posix.c         \
    $$(PWD)/../../../crypto/async/arch/async_win.c           \
    $$(PWD)/../../../crypto/async/async.c                    \
    $$(PWD)/../../../crypto/async/async_err.c                \
    $$(PWD)/../../../crypto/async/async_wait.c               \
    $$(PWD)/../../../crypto/bf/bf_cfb64.c                    \
    $$(PWD)/../../../crypto/bf/bf_ecb.c                      \
    $$(PWD)/../../../crypto/bf/bf_enc.c                      \
    $$(PWD)/../../../crypto/bf/bf_ofb64.c                    \
    $$(PWD)/../../../crypto/bf/bf_skey.c                     \
    $$(PWD)/../../../crypto/bio/b_addr.c                     \
    $$(PWD)/../../../crypto/bio/b_dump.c                     \
    $$(PWD)/../../../crypto/bio/b_print.c                    \
    $$(PWD)/../../../crypto/bio/b_sock.c                     \
    $$(PWD)/../../../crypto/bio/b_sock2.c                    \
    $$(PWD)/../../../crypto/bio/bf_buff.c                    \
    $$(PWD)/../../../crypto/bio/bf_lbuf.c                    \
    $$(PWD)/../../../crypto/bio/bf_nbio.c                    \
    $$(PWD)/../../../crypto/bio/bf_null.c                    \
    $$(PWD)/../../../crypto/bio/bio_cb.c                     \
    $$(PWD)/../../../crypto/bio/bio_err.c                    \
    $$(PWD)/../../../crypto/bio/bio_lib.c                    \
    $$(PWD)/../../../crypto/bio/bio_meth.c                   \
    $$(PWD)/../../../crypto/bio/bss_acpt.c                   \
    $$(PWD)/../../../crypto/bio/bss_bio.c                    \
    $$(PWD)/../../../crypto/bio/bss_conn.c                   \
    $$(PWD)/../../../crypto/bio/bss_dgram.c                  \
    $$(PWD)/../../../crypto/bio/bss_fd.c                     \
    $$(PWD)/../../../crypto/bio/bss_file.c                   \
    $$(PWD)/../../../crypto/bio/bss_log.c                    \
    $$(PWD)/../../../crypto/bio/bss_mem.c                    \
    $$(PWD)/../../../crypto/bio/bss_null.c                   \
    $$(PWD)/../../../crypto/bio/bss_sock.c                   \
    $$(PWD)/../../../crypto/blake2/blake2b.c                 \
    $$(PWD)/../../../crypto/blake2/blake2s.c                 \
    $$(PWD)/../../../crypto/blake2/m_blake2b.c               \
    $$(PWD)/../../../crypto/blake2/m_blake2s.c               \
    $$(PWD)/../../../crypto/bn/bn_add.c                      \
    $$(PWD)/../../../crypto/bn/bn_asm.c                      \
    $$(PWD)/../../../crypto/bn/bn_blind.c                    \
    $$(PWD)/../../../crypto/bn/bn_const.c                    \
    $$(PWD)/../../../crypto/bn/bn_ctx.c                      \
    $$(PWD)/../../../crypto/bn/bn_depr.c                     \
    $$(PWD)/../../../crypto/bn/bn_dh.c                       \
    $$(PWD)/../../../crypto/bn/bn_div.c                      \
    $$(PWD)/../../../crypto/bn/bn_err.c                      \
    $$(PWD)/../../../crypto/bn/bn_exp.c                      \
    $$(PWD)/../../../crypto/bn/bn_exp2.c                     \
    $$(PWD)/../../../crypto/bn/bn_gcd.c                      \
    $$(PWD)/../../../crypto/bn/bn_gf2m.c                     \
    $$(PWD)/../../../crypto/bn/bn_intern.c                   \
    $$(PWD)/../../../crypto/bn/bn_kron.c                     \
    $$(PWD)/../../../crypto/bn/bn_lib.c                      \
    $$(PWD)/../../../crypto/bn/bn_mod.c                      \
    $$(PWD)/../../../crypto/bn/bn_mont.c                     \
    $$(PWD)/../../../crypto/bn/bn_mpi.c                      \
    $$(PWD)/../../../crypto/bn/bn_mul.c                      \
    $$(PWD)/../../../crypto/bn/bn_nist.c                     \
    $$(PWD)/../../../crypto/bn/bn_prime.c                    \
    $$(PWD)/../../../crypto/bn/bn_print.c                    \
    $$(PWD)/../../../crypto/bn/bn_rand.c                     \
    $$(PWD)/../../../crypto/bn/bn_recp.c                     \
    $$(PWD)/../../../crypto/bn/bn_shift.c                    \
    $$(PWD)/../../../crypto/bn/bn_sqr.c                      \
    $$(PWD)/../../../crypto/bn/bn_sqrt.c                     \
    $$(PWD)/../../../crypto/bn/bn_srp.c                      \
    $$(PWD)/../../../crypto/bn/bn_word.c                     \
    $$(PWD)/../../../crypto/bn/bn_x931p.c                    \
    $$(PWD)/../../../crypto/buffer/buf_err.c                 \
    $$(PWD)/../../../crypto/buffer/buffer.c                  \
    $$(PWD)/../../../crypto/camellia/camellia.c              \
    $$(PWD)/../../../crypto/camellia/cmll_cbc.c              \
    $$(PWD)/../../../crypto/camellia/cmll_cfb.c              \
    $$(PWD)/../../../crypto/camellia/cmll_ctr.c              \
    $$(PWD)/../../../crypto/camellia/cmll_ecb.c              \
    $$(PWD)/../../../crypto/camellia/cmll_misc.c             \
    $$(PWD)/../../../crypto/camellia/cmll_ofb.c              \
    $$(PWD)/../../../crypto/cast/c_cfb64.c                   \
    $$(PWD)/../../../crypto/cast/c_ecb.c                     \
    $$(PWD)/../../../crypto/cast/c_enc.c                     \
    $$(PWD)/../../../crypto/cast/c_ofb64.c                   \
    $$(PWD)/../../../crypto/cast/c_skey.c                    \
    $$(PWD)/../../../crypto/cmac/cm_ameth.c                  \
    $$(PWD)/../../../crypto/cmac/cmac.c                      \
    $$(PWD)/../../../crypto/cms/cms_asn1.c                   \
    $$(PWD)/../../../crypto/cms/cms_att.c                    \
    $$(PWD)/../../../crypto/cms/cms_cd.c                     \
    $$(PWD)/../../../crypto/cms/cms_dd.c                     \
    $$(PWD)/../../../crypto/cms/cms_enc.c                    \
    $$(PWD)/../../../crypto/cms/cms_env.c                    \
    $$(PWD)/../../../crypto/cms/cms_err.c                    \
    $$(PWD)/../../../crypto/cms/cms_ess.c                    \
    $$(PWD)/../../../crypto/cms/cms_io.c                     \
    $$(PWD)/../../../crypto/cms/cms_kari.c                   \
    $$(PWD)/../../../crypto/cms/cms_lib.c                    \
    $$(PWD)/../../../crypto/cms/cms_pwri.c                   \
    $$(PWD)/../../../crypto/cms/cms_sd.c                     \
    $$(PWD)/../../../crypto/cms/cms_smime.c                  \
    $$(PWD)/../../../crypto/comp/c_zlib.c                    \
    $$(PWD)/../../../crypto/comp/comp_err.c                  \
    $$(PWD)/../../../crypto/comp/comp_lib.c                  \
    $$(PWD)/../../../crypto/conf/conf_api.c                  \
    $$(PWD)/../../../crypto/conf/conf_def.c                  \
    $$(PWD)/../../../crypto/conf/conf_err.c                  \
    $$(PWD)/../../../crypto/conf/conf_lib.c                  \
    $$(PWD)/../../../crypto/conf/conf_mall.c                 \
    $$(PWD)/../../../crypto/conf/conf_mod.c                  \
    $$(PWD)/../../../crypto/conf/conf_sap.c                  \
    $$(PWD)/../../../crypto/ct/ct_b64.c                      \
    $$(PWD)/../../../crypto/ct/ct_err.c                      \
    $$(PWD)/../../../crypto/ct/ct_log.c                      \
    $$(PWD)/../../../crypto/ct/ct_oct.c                      \
    $$(PWD)/../../../crypto/ct/ct_policy.c                   \
    $$(PWD)/../../../crypto/ct/ct_prn.c                      \
    $$(PWD)/../../../crypto/ct/ct_sct.c                      \
    $$(PWD)/../../../crypto/ct/ct_sct_ctx.c                  \
    $$(PWD)/../../../crypto/ct/ct_vfy.c                      \
    $$(PWD)/../../../crypto/ct/ct_x509v3.c                   \
    $$(PWD)/../../../crypto/des/cbc_cksm.c                   \
    $$(PWD)/../../../crypto/des/cbc_enc.c                    \
    $$(PWD)/../../../crypto/des/cfb64ede.c                   \
    $$(PWD)/../../../crypto/des/cfb64enc.c                   \
    $$(PWD)/../../../crypto/des/cfb_enc.c                    \
    $$(PWD)/../../../crypto/des/des_enc.c                    \
    $$(PWD)/../../../crypto/des/ecb3_enc.c                   \
    $$(PWD)/../../../crypto/des/ecb_enc.c                    \
    $$(PWD)/../../../crypto/des/fcrypt.c                     \
    $$(PWD)/../../../crypto/des/fcrypt_b.c                   \
    $$(PWD)/../../../crypto/des/ofb64ede.c                   \
    $$(PWD)/../../../crypto/des/ofb64enc.c                   \
    $$(PWD)/../../../crypto/des/ofb_enc.c                    \
    $$(PWD)/../../../crypto/des/pcbc_enc.c                   \
    $$(PWD)/../../../crypto/des/qud_cksm.c                   \
    $$(PWD)/../../../crypto/des/rand_key.c                   \
    $$(PWD)/../../../crypto/des/set_key.c                    \
    $$(PWD)/../../../crypto/des/str2key.c                    \
    $$(PWD)/../../../crypto/des/xcbc_enc.c                   \
    $$(PWD)/../../../crypto/dh/dh_ameth.c                    \
    $$(PWD)/../../../crypto/dh/dh_asn1.c                     \
    $$(PWD)/../../../crypto/dh/dh_check.c                    \
    $$(PWD)/../../../crypto/dh/dh_depr.c                     \
    $$(PWD)/../../../crypto/dh/dh_err.c                      \
    $$(PWD)/../../../crypto/dh/dh_gen.c                      \
    $$(PWD)/../../../crypto/dh/dh_kdf.c                      \
    $$(PWD)/../../../crypto/dh/dh_key.c                      \
    $$(PWD)/../../../crypto/dh/dh_lib.c                      \
    $$(PWD)/../../../crypto/dh/dh_meth.c                     \
    $$(PWD)/../../../crypto/dh/dh_pmeth.c                    \
    $$(PWD)/../../../crypto/dh/dh_prn.c                      \
    $$(PWD)/../../../crypto/dh/dh_rfc5114.c                  \
    $$(PWD)/../../../crypto/dh/dh_rfc7919.c                  \
    $$(PWD)/../../../crypto/dsa/dsa_ameth.c                  \
    $$(PWD)/../../../crypto/dsa/dsa_asn1.c                   \
    $$(PWD)/../../../crypto/dsa/dsa_depr.c                   \
    $$(PWD)/../../../crypto/dsa/dsa_err.c                    \
    $$(PWD)/../../../crypto/dsa/dsa_gen.c                    \
    $$(PWD)/../../../crypto/dsa/dsa_key.c                    \
    $$(PWD)/../../../crypto/dsa/dsa_lib.c                    \
    $$(PWD)/../../../crypto/dsa/dsa_meth.c                   \
    $$(PWD)/../../../crypto/dsa/dsa_ossl.c                   \
    $$(PWD)/../../../crypto/dsa/dsa_pmeth.c                  \
    $$(PWD)/../../../crypto/dsa/dsa_prn.c                    \
    $$(PWD)/../../../crypto/dsa/dsa_sign.c                   \
    $$(PWD)/../../../crypto/dsa/dsa_vrf.c                    \
    $$(PWD)/../../../crypto/dso/dso_dl.c                     \
    $$(PWD)/../../../crypto/dso/dso_dlfcn.c                  \
    $$(PWD)/../../../crypto/dso/dso_err.c                    \
    $$(PWD)/../../../crypto/dso/dso_lib.c                    \
    $$(PWD)/../../../crypto/dso/dso_openssl.c                \
    $$(PWD)/../../../crypto/dso/dso_vms.c                    \
    $$(PWD)/../../../crypto/dso/dso_win32.c                  \
    $$(PWD)/../../../crypto/ec/curve448/arch_32/f_impl.c     \
    $$(PWD)/../../../crypto/ec/curve448/curve448.c           \
    $$(PWD)/../../../crypto/ec/curve448/curve448_tables.c    \
    $$(PWD)/../../../crypto/ec/curve448/eddsa.c              \
    $$(PWD)/../../../crypto/ec/curve448/f_generic.c          \
    $$(PWD)/../../../crypto/ec/curve448/scalar.c             \
    $$(PWD)/../../../crypto/ec/curve25519.c                  \
    $$(PWD)/../../../crypto/ec/ec2_oct.c                     \
    $$(PWD)/../../../crypto/ec/ec2_smpl.c                    \
    $$(PWD)/../../../crypto/ec/ec_ameth.c                    \
    $$(PWD)/../../../crypto/ec/ec_asn1.c                     \
    $$(PWD)/../../../crypto/ec/ec_check.c                    \
    $$(PWD)/../../../crypto/ec/ec_curve.c                    \
    $$(PWD)/../../../crypto/ec/ec_cvt.c                      \
    $$(PWD)/../../../crypto/ec/ec_err.c                      \
    $$(PWD)/../../../crypto/ec/ec_key.c                      \
    $$(PWD)/../../../crypto/ec/ec_kmeth.c                    \
    $$(PWD)/../../../crypto/ec/ec_lib.c                      \
    $$(PWD)/../../../crypto/ec/ec_mult.c                     \
    $$(PWD)/../../../crypto/ec/ec_oct.c                      \
    $$(PWD)/../../../crypto/ec/ec_pmeth.c                    \
    $$(PWD)/../../../crypto/ec/ec_print.c                    \
    $$(PWD)/../../../crypto/ec/ecdh_kdf.c                    \
    $$(PWD)/../../../crypto/ec/ecdh_ossl.c                   \
    $$(PWD)/../../../crypto/ec/ecdsa_ossl.c                  \
    $$(PWD)/../../../crypto/ec/ecdsa_sign.c                  \
    $$(PWD)/../../../crypto/ec/ecdsa_vrf.c                   \
    $$(PWD)/../../../crypto/ec/eck_prn.c                     \
    $$(PWD)/../../../crypto/ec/ecp_mont.c                    \
    $$(PWD)/../../../crypto/ec/ecp_nist.c                    \
    $$(PWD)/../../../crypto/ec/ecp_nistp224.c                \
    $$(PWD)/../../../crypto/ec/ecp_nistp256.c                \
    $$(PWD)/../../../crypto/ec/ecp_nistp521.c                \
    $$(PWD)/../../../crypto/ec/ecp_nistputil.c               \
    $$(PWD)/../../../crypto/ec/ecp_nistz256-armv4.c          \
    $$(PWD)/../../../crypto/ec/ecp_nistz256.c                \
    $$(PWD)/../../../crypto/ec/ecp_oct.c                     \
    $$(PWD)/../../../crypto/ec/ecp_smpl.c                    \
    $$(PWD)/../../../crypto/ec/ecx_meth.c                    \
    $$(PWD)/../../../crypto/engine/eng_all.c                 \
    $$(PWD)/../../../crypto/engine/eng_cnf.c                 \
    $$(PWD)/../../../crypto/engine/eng_ctrl.c                \
    $$(PWD)/../../../crypto/engine/eng_dyn.c                 \
    $$(PWD)/../../../crypto/engine/eng_err.c                 \
    $$(PWD)/../../../crypto/engine/eng_fat.c                 \
    $$(PWD)/../../../crypto/engine/eng_init.c                \
    $$(PWD)/../../../crypto/engine/eng_lib.c                 \
    $$(PWD)/../../../crypto/engine/eng_list.c                \
    $$(PWD)/../../../crypto/engine/eng_openssl.c             \
    $$(PWD)/../../../crypto/engine/eng_pkey.c                \
    $$(PWD)/../../../crypto/engine/eng_rdrand.c              \
    $$(PWD)/../../../crypto/engine/eng_table.c               \
    $$(PWD)/../../../crypto/engine/tb_asnmth.c               \
    $$(PWD)/../../../crypto/engine/tb_cipher.c               \
    $$(PWD)/../../../crypto/engine/tb_dh.c                   \
    $$(PWD)/../../../crypto/engine/tb_digest.c               \
    $$(PWD)/../../../crypto/engine/tb_dsa.c                  \
    $$(PWD)/../../../crypto/engine/tb_eckey.c                \
    $$(PWD)/../../../crypto/engine/tb_pkmeth.c               \
    $$(PWD)/../../../crypto/engine/tb_rand.c                 \
    $$(PWD)/../../../crypto/engine/tb_rsa.c                  \
    $$(PWD)/../../../crypto/err/err.c                        \
    $$(PWD)/../../../crypto/err/err_all.c                    \
    $$(PWD)/../../../crypto/err/err_prn.c                    \
    $$(PWD)/../../../crypto/ess/ess_asn1.c                   \
    $$(PWD)/../../../crypto/ess/ess_err.c                    \
    $$(PWD)/../../../crypto/ess/ess_lib.c                    \
    $$(PWD)/../../../crypto/evp/bio_b64.c                    \
    $$(PWD)/../../../crypto/evp/bio_enc.c                    \
    $$(PWD)/../../../crypto/evp/bio_md.c                     \
    $$(PWD)/../../../crypto/evp/bio_ok.c                     \
    $$(PWD)/../../../crypto/evp/c_allc.c                     \
    $$(PWD)/../../../crypto/evp/c_alld.c                     \
    $$(PWD)/../../../crypto/evp/c_allm.c                     \
    $$(PWD)/../../../crypto/evp/cmeth_lib.c                  \
    $$(PWD)/../../../crypto/evp/digest.c                     \
    $$(PWD)/../../../crypto/evp/e_aes.c                      \
    $$(PWD)/../../../crypto/evp/e_aes_cbc_hmac_sha1.c        \
    $$(PWD)/../../../crypto/evp/e_aes_cbc_hmac_sha256.c      \
    $$(PWD)/../../../crypto/evp/e_aria.c                     \
    $$(PWD)/../../../crypto/evp/e_bf.c                       \
    $$(PWD)/../../../crypto/evp/e_camellia.c                 \
    $$(PWD)/../../../crypto/evp/e_cast.c                     \
    $$(PWD)/../../../crypto/evp/e_chacha20_poly1305.c        \
    $$(PWD)/../../../crypto/evp/e_des.c                      \
    $$(PWD)/../../../crypto/evp/e_des3.c                     \
    $$(PWD)/../../../crypto/evp/e_idea.c                     \
    $$(PWD)/../../../crypto/evp/e_null.c                     \
    $$(PWD)/../../../crypto/evp/e_old.c                      \
    $$(PWD)/../../../crypto/evp/e_rc2.c                      \
    $$(PWD)/../../../crypto/evp/e_rc4.c                      \
    $$(PWD)/../../../crypto/evp/e_rc4_hmac_md5.c             \
    $$(PWD)/../../../crypto/evp/e_rc5.c                      \
    $$(PWD)/../../../crypto/evp/e_seed.c                     \
    $$(PWD)/../../../crypto/evp/e_sm4.c                      \
    $$(PWD)/../../../crypto/evp/e_xcbc_d.c                   \
    $$(PWD)/../../../crypto/evp/encode.c                     \
    $$(PWD)/../../../crypto/evp/evp_cnf.c                    \
    $$(PWD)/../../../crypto/evp/evp_enc.c                    \
    $$(PWD)/../../../crypto/evp/evp_err.c                    \
    $$(PWD)/../../../crypto/evp/evp_fetch.c                  \
    $$(PWD)/../../../crypto/evp/evp_key.c                    \
    $$(PWD)/../../../crypto/evp/evp_lib.c                    \
    $$(PWD)/../../../crypto/evp/evp_pbe.c                    \
    $$(PWD)/../../../crypto/evp/evp_pkey.c                   \
    $$(PWD)/../../../crypto/evp/kdf_lib.c                    \
    $$(PWD)/../../../crypto/evp/m_md2.c                      \
    $$(PWD)/../../../crypto/evp/m_md4.c                      \
    $$(PWD)/../../../crypto/evp/m_md5.c                      \
    $$(PWD)/../../../crypto/evp/m_md5_sha1.c                 \
    $$(PWD)/../../../crypto/evp/m_mdc2.c                     \
    $$(PWD)/../../../crypto/evp/m_null.c                     \
    $$(PWD)/../../../crypto/evp/m_ripemd.c                   \
    $$(PWD)/../../../crypto/evp/m_sha1.c                     \
    $$(PWD)/../../../crypto/evp/m_sha3.c                     \
    $$(PWD)/../../../crypto/evp/m_sigver.c                   \
    $$(PWD)/../../../crypto/evp/m_wp.c                       \
    $$(PWD)/../../../crypto/evp/mac_lib.c                    \
    $$(PWD)/../../../crypto/evp/names.c                      \
    $$(PWD)/../../../crypto/evp/p5_crpt.c                    \
    $$(PWD)/../../../crypto/evp/p5_crpt2.c                   \
    $$(PWD)/../../../crypto/evp/p_dec.c                      \
    $$(PWD)/../../../crypto/evp/p_enc.c                      \
    $$(PWD)/../../../crypto/evp/p_lib.c                      \
    $$(PWD)/../../../crypto/evp/p_open.c                     \
    $$(PWD)/../../../crypto/evp/p_seal.c                     \
    $$(PWD)/../../../crypto/evp/p_sign.c                     \
    $$(PWD)/../../../crypto/evp/p_verify.c                   \
    $$(PWD)/../../../crypto/evp/pbe_scrypt.c                 \
    $$(PWD)/../../../crypto/evp/pkey_kdf.c                   \
    $$(PWD)/../../../crypto/evp/pkey_mac.c                   \
    $$(PWD)/../../../crypto/evp/pmeth_fn.c                   \
    $$(PWD)/../../../crypto/evp/pmeth_gn.c                   \
    $$(PWD)/../../../crypto/evp/pmeth_lib.c                  \
    $$(PWD)/../../../crypto/gmac/gmac.c                      \
    $$(PWD)/../../../crypto/hmac/hm_ameth.c                  \
    $$(PWD)/../../../crypto/hmac/hm_meth.c                   \
    $$(PWD)/../../../crypto/hmac/hmac.c                      \
    $$(PWD)/../../../crypto/idea/i_cbc.c                     \
    $$(PWD)/../../../crypto/idea/i_cfb64.c                   \
    $$(PWD)/../../../crypto/idea/i_ecb.c                     \
    $$(PWD)/../../../crypto/idea/i_ofb64.c                   \
    $$(PWD)/../../../crypto/idea/i_skey.c                    \
    $$(PWD)/../../../crypto/kdf/hkdf.c                       \
    $$(PWD)/../../../crypto/kdf/kdf_err.c                    \
    $$(PWD)/../../../crypto/kdf/kdf_util.c                   \
    $$(PWD)/../../../crypto/kdf/pbkdf2.c                     \
    $$(PWD)/../../../crypto/kdf/scrypt.c                     \
    $$(PWD)/../../../crypto/kdf/sshkdf.c                     \
    $$(PWD)/../../../crypto/kdf/sskdf.c                      \
    $$(PWD)/../../../crypto/kdf/tls1_prf.c                   \
    $$(PWD)/../../../crypto/kmac/kmac.c                      \
    $$(PWD)/../../../crypto/lhash/lh_stats.c                 \
    $$(PWD)/../../../crypto/lhash/lhash.c                    \
    $$(PWD)/../../../crypto/armcap.c                         \
    $$(PWD)/../../../crypto/armv4cpuid.c                     \
    $$(PWD)/../../../crypto/context.c                        \
    $$(PWD)/../../../crypto/core_fetch.c                     \
    $$(PWD)/../../../crypto/cpt_err.c                        \
    $$(PWD)/../../../crypto/cryptlib.c                       \
    $$(PWD)/../../../crypto/ctype.c                          \
    $$(PWD)/../../../crypto/cversion.c                       \
    $$(PWD)/../../../crypto/ebcdic.c                         \
    $$(PWD)/../../../crypto/ex_data.c                        \
    $$(PWD)/../../../crypto/getenv.c                         \
    $$(PWD)/../../../crypto/init.c                           \
    $$(PWD)/../../../crypto/mem.c                            \
    $$(PWD)/../../../crypto/mem_dbg.c                        \
    $$(PWD)/../../../crypto/mem_sec.c                        \
    $$(PWD)/../../../crypto/o_dir.c                          \
    $$(PWD)/../../../crypto/o_fips.c                         \
    $$(PWD)/../../../crypto/o_fopen.c                        \
    $$(PWD)/../../../crypto/o_init.c                         \
    $$(PWD)/../../../crypto/o_str.c                          \
    $$(PWD)/../../../crypto/o_time.c                         \
    $$(PWD)/../../../crypto/params.c                         \
    $$(PWD)/../../../crypto/provider.c                       \
    $$(PWD)/../../../crypto/provider_conf.c                  \
    $$(PWD)/../../../crypto/provider_core.c                  \
    $$(PWD)/../../../crypto/provider_predefined.c            \
    $$(PWD)/../../../crypto/sparse_array.c                   \
    $$(PWD)/../../../crypto/threads_none.c                   \
    $$(PWD)/../../../crypto/threads_pthread.c                \
    $$(PWD)/../../../crypto/threads_win.c                    \
    $$(PWD)/../../../crypto/trace.c                          \
    $$(PWD)/../../../crypto/uid.c                            \
    $$(PWD)/../../../crypto/md4/md4_dgst.c                   \
    $$(PWD)/../../../crypto/md4/md4_one.c                    \
    $$(PWD)/../../../crypto/md5/md5_dgst.c                   \
    $$(PWD)/../../../crypto/md5/md5_one.c                    \
    $$(PWD)/../../../crypto/mdc2/mdc2_one.c                  \
    $$(PWD)/../../../crypto/mdc2/mdc2dgst.c                  \
    $$(PWD)/../../../crypto/modes/cbc128.c                   \
    $$(PWD)/../../../crypto/modes/ccm128.c                   \
    $$(PWD)/../../../crypto/modes/cfb128.c                   \
    $$(PWD)/../../../crypto/modes/ctr128.c                   \
    $$(PWD)/../../../crypto/modes/cts128.c                   \
    $$(PWD)/../../../crypto/modes/gcm128.c                   \
    $$(PWD)/../../../crypto/modes/ghash-armv4.c              \
    $$(PWD)/../../../crypto/modes/ghashv8-armx.c             \
    $$(PWD)/../../../crypto/modes/ocb128.c                   \
    $$(PWD)/../../../crypto/modes/ofb128.c                   \
    $$(PWD)/../../../crypto/modes/siv128.c                   \
    $$(PWD)/../../../crypto/modes/wrap128.c                  \
    $$(PWD)/../../../crypto/modes/xts128.c                   \
    $$(PWD)/../../../crypto/objects/o_names.c                \
    $$(PWD)/../../../crypto/objects/obj_dat.c                \
    $$(PWD)/../../../crypto/objects/obj_err.c                \
    $$(PWD)/../../../crypto/objects/obj_lib.c                \
    $$(PWD)/../../../crypto/objects/obj_xref.c               \
    $$(PWD)/../../../crypto/ocsp/ocsp_asn.c                  \
    $$(PWD)/../../../crypto/ocsp/ocsp_cl.c                   \
    $$(PWD)/../../../crypto/ocsp/ocsp_err.c                  \
    $$(PWD)/../../../crypto/ocsp/ocsp_ext.c                  \
    $$(PWD)/../../../crypto/ocsp/ocsp_ht.c                   \
    $$(PWD)/../../../crypto/ocsp/ocsp_lib.c                  \
    $$(PWD)/../../../crypto/ocsp/ocsp_prn.c                  \
    $$(PWD)/../../../crypto/ocsp/ocsp_srv.c                  \
    $$(PWD)/../../../crypto/ocsp/ocsp_vfy.c                  \
    $$(PWD)/../../../crypto/ocsp/v3_ocsp.c                   \
    $$(PWD)/../../../crypto/pem/pem_all.c                    \
    $$(PWD)/../../../crypto/pem/pem_err.c                    \
    $$(PWD)/../../../crypto/pem/pem_info.c                   \
    $$(PWD)/../../../crypto/pem/pem_lib.c                    \
    $$(PWD)/../../../crypto/pem/pem_oth.c                    \
    $$(PWD)/../../../crypto/pem/pem_pk8.c                    \
    $$(PWD)/../../../crypto/pem/pem_pkey.c                   \
    $$(PWD)/../../../crypto/pem/pem_sign.c                   \
    $$(PWD)/../../../crypto/pem/pem_x509.c                   \
    $$(PWD)/../../../crypto/pem/pem_xaux.c                   \
    $$(PWD)/../../../crypto/pem/pvkfmt.c                     \
    $$(PWD)/../../../crypto/pkcs12/p12_add.c                 \
    $$(PWD)/../../../crypto/pkcs12/p12_asn.c                 \
    $$(PWD)/../../../crypto/pkcs12/p12_attr.c                \
    $$(PWD)/../../../crypto/pkcs12/p12_crpt.c                \
    $$(PWD)/../../../crypto/pkcs12/p12_crt.c                 \
    $$(PWD)/../../../crypto/pkcs12/p12_decr.c                \
    $$(PWD)/../../../crypto/pkcs12/p12_init.c                \
    $$(PWD)/../../../crypto/pkcs12/p12_key.c                 \
    $$(PWD)/../../../crypto/pkcs12/p12_kiss.c                \
    $$(PWD)/../../../crypto/pkcs12/p12_mutl.c                \
    $$(PWD)/../../../crypto/pkcs12/p12_npas.c                \
    $$(PWD)/../../../crypto/pkcs12/p12_p8d.c                 \
    $$(PWD)/../../../crypto/pkcs12/p12_p8e.c                 \
    $$(PWD)/../../../crypto/pkcs12/p12_sbag.c                \
    $$(PWD)/../../../crypto/pkcs12/p12_utl.c                 \
    $$(PWD)/../../../crypto/pkcs12/pk12err.c                 \
    $$(PWD)/../../../crypto/pkcs7/bio_pk7.c                  \
    $$(PWD)/../../../crypto/pkcs7/pk7_asn1.c                 \
    $$(PWD)/../../../crypto/pkcs7/pk7_attr.c                 \
    $$(PWD)/../../../crypto/pkcs7/pk7_doit.c                 \
    $$(PWD)/../../../crypto/pkcs7/pk7_lib.c                  \
    $$(PWD)/../../../crypto/pkcs7/pk7_mime.c                 \
    $$(PWD)/../../../crypto/pkcs7/pk7_smime.c                \
    $$(PWD)/../../../crypto/pkcs7/pkcs7err.c                 \
    $$(PWD)/../../../crypto/poly1305/poly1305-armv4.c        \
    $$(PWD)/../../../crypto/poly1305/poly1305.c              \
    $$(PWD)/../../../crypto/poly1305/poly1305_ameth.c        \
    $$(PWD)/../../../crypto/poly1305/poly1305_meth.c         \
    $$(PWD)/../../../crypto/property/defn_cache.c            \
    $$(PWD)/../../../crypto/property/property.c              \
    $$(PWD)/../../../crypto/property/property_err.c          \
    $$(PWD)/../../../crypto/property/property_parse.c        \
    $$(PWD)/../../../crypto/property/property_string.c       \
    $$(PWD)/../../../crypto/rand/drbg_ctr.c                  \
    $$(PWD)/../../../crypto/rand/drbg_hash.c                 \
    $$(PWD)/../../../crypto/rand/drbg_hmac.c                 \
    $$(PWD)/../../../crypto/rand/drbg_lib.c                  \
    $$(PWD)/../../../crypto/rand/rand_crng_test.c            \
    $$(PWD)/../../../crypto/rand/rand_egd.c                  \
    $$(PWD)/../../../crypto/rand/rand_err.c                  \
    $$(PWD)/../../../crypto/rand/rand_lib.c                  \
    $$(PWD)/../../../crypto/rand/rand_unix.c                 \
    $$(PWD)/../../../crypto/rand/rand_vms.c                  \
    $$(PWD)/../../../crypto/rand/rand_win.c                  \
    $$(PWD)/../../../crypto/rand/randfile.c                  \
    $$(PWD)/../../../crypto/rc2/rc2_cbc.c                    \
    $$(PWD)/../../../crypto/rc2/rc2_ecb.c                    \
    $$(PWD)/../../../crypto/rc2/rc2_skey.c                   \
    $$(PWD)/../../../crypto/rc2/rc2cfb64.c                   \
    $$(PWD)/../../../crypto/rc2/rc2ofb64.c                   \
    $$(PWD)/../../../crypto/rc4/rc4_enc.c                    \
    $$(PWD)/../../../crypto/rc4/rc4_skey.c                   \
    $$(PWD)/../../../crypto/ripemd/rmd_dgst.c                \
    $$(PWD)/../../../crypto/ripemd/rmd_one.c                 \
    $$(PWD)/../../../crypto/rsa/rsa_ameth.c                  \
    $$(PWD)/../../../crypto/rsa/rsa_asn1.c                   \
    $$(PWD)/../../../crypto/rsa/rsa_chk.c                    \
    $$(PWD)/../../../crypto/rsa/rsa_crpt.c                   \
    $$(PWD)/../../../crypto/rsa/rsa_depr.c                   \
    $$(PWD)/../../../crypto/rsa/rsa_err.c                    \
    $$(PWD)/../../../crypto/rsa/rsa_gen.c                    \
    $$(PWD)/../../../crypto/rsa/rsa_lib.c                    \
    $$(PWD)/../../../crypto/rsa/rsa_meth.c                   \
    $$(PWD)/../../../crypto/rsa/rsa_mp.c                     \
    $$(PWD)/../../../crypto/rsa/rsa_none.c                   \
    $$(PWD)/../../../crypto/rsa/rsa_oaep.c                   \
    $$(PWD)/../../../crypto/rsa/rsa_ossl.c                   \
    $$(PWD)/../../../crypto/rsa/rsa_pk1.c                    \
    $$(PWD)/../../../crypto/rsa/rsa_pmeth.c                  \
    $$(PWD)/../../../crypto/rsa/rsa_prn.c                    \
    $$(PWD)/../../../crypto/rsa/rsa_pss.c                    \
    $$(PWD)/../../../crypto/rsa/rsa_saos.c                   \
    $$(PWD)/../../../crypto/rsa/rsa_sign.c                   \
    $$(PWD)/../../../crypto/rsa/rsa_sp800_56b_check.c        \
    $$(PWD)/../../../crypto/rsa/rsa_sp800_56b_gen.c          \
    $$(PWD)/../../../crypto/rsa/rsa_ssl.c                    \
    $$(PWD)/../../../crypto/rsa/rsa_x931.c                   \
    $$(PWD)/../../../crypto/rsa/rsa_x931g.c                  \
    $$(PWD)/../../../crypto/seed/seed.c                      \
    $$(PWD)/../../../crypto/seed/seed_cbc.c                  \
    $$(PWD)/../../../crypto/seed/seed_cfb.c                  \
    $$(PWD)/../../../crypto/seed/seed_ecb.c                  \
    $$(PWD)/../../../crypto/seed/seed_ofb.c                  \
    $$(PWD)/../../../crypto/sha/keccak1600-armv4.c           \
    $$(PWD)/../../../crypto/sha/sha1-armv4-large.c           \
    $$(PWD)/../../../crypto/sha/sha1_one.c                   \
    $$(PWD)/../../../crypto/sha/sha1dgst.c                   \
    $$(PWD)/../../../crypto/sha/sha256-armv4.c               \
    $$(PWD)/../../../crypto/sha/sha256.c                     \
    $$(PWD)/../../../crypto/sha/sha512-armv4.c               \
    $$(PWD)/../../../crypto/sha/sha512.c                     \
    $$(PWD)/../../../crypto/siphash/siphash.c                \
    $$(PWD)/../../../crypto/siphash/siphash_ameth.c          \
    $$(PWD)/../../../crypto/siphash/siphash_meth.c           \
    $$(PWD)/../../../crypto/sm2/sm2_crypt.c                  \
    $$(PWD)/../../../crypto/sm2/sm2_err.c                    \
    $$(PWD)/../../../crypto/sm2/sm2_pmeth.c                  \
    $$(PWD)/../../../crypto/sm2/sm2_sign.c                   \
    $$(PWD)/../../../crypto/sm3/m_sm3.c                      \
    $$(PWD)/../../../crypto/sm3/sm3.c                        \
    $$(PWD)/../../../crypto/sm4/sm4.c                        \
    $$(PWD)/../../../crypto/srp/srp_lib.c                    \
    $$(PWD)/../../../crypto/srp/srp_vfy.c                    \
    $$(PWD)/../../../crypto/stack/stack.c                    \
    $$(PWD)/../../../crypto/store/loader_file.c              \
    $$(PWD)/../../../crypto/store/store_err.c                \
    $$(PWD)/../../../crypto/store/store_init.c               \
    $$(PWD)/../../../crypto/store/store_lib.c                \
    $$(PWD)/../../../crypto/store/store_register.c           \
    $$(PWD)/../../../crypto/store/store_strings.c            \
    $$(PWD)/../../../crypto/ts/ts_asn1.c                     \
    $$(PWD)/../../../crypto/ts/ts_conf.c                     \
    $$(PWD)/../../../crypto/ts/ts_err.c                      \
    $$(PWD)/../../../crypto/ts/ts_lib.c                      \
    $$(PWD)/../../../crypto/ts/ts_req_print.c                \
    $$(PWD)/../../../crypto/ts/ts_req_utils.c                \
    $$(PWD)/../../../crypto/ts/ts_rsp_print.c                \
    $$(PWD)/../../../crypto/ts/ts_rsp_sign.c                 \
    $$(PWD)/../../../crypto/ts/ts_rsp_utils.c                \
    $$(PWD)/../../../crypto/ts/ts_rsp_verify.c               \
    $$(PWD)/../../../crypto/ts/ts_verify_ctx.c               \
    $$(PWD)/../../../crypto/txt_db/txt_db.c                  \
    $$(PWD)/../../../crypto/ui/ui_err.c                      \
    $$(PWD)/../../../crypto/ui/ui_lib.c                      \
    $$(PWD)/../../../crypto/ui/ui_null.c                     \
    $$(PWD)/../../../crypto/ui/ui_openssl.c                  \
    $$(PWD)/../../../crypto/ui/ui_util.c                     \
    $$(PWD)/../../../crypto/whrlpool/wp_block.c              \
    $$(PWD)/../../../crypto/whrlpool/wp_dgst.c               \
    $$(PWD)/../../../crypto/x509/by_dir.c                    \
    $$(PWD)/../../../crypto/x509/by_file.c                   \
    $$(PWD)/../../../crypto/x509/t_crl.c                     \
    $$(PWD)/../../../crypto/x509/t_req.c                     \
    $$(PWD)/../../../crypto/x509/t_x509.c                    \
    $$(PWD)/../../../crypto/x509/x509_att.c                  \
    $$(PWD)/../../../crypto/x509/x509_cmp.c                  \
    $$(PWD)/../../../crypto/x509/x509_d2.c                   \
    $$(PWD)/../../../crypto/x509/x509_def.c                  \
    $$(PWD)/../../../crypto/x509/x509_err.c                  \
    $$(PWD)/../../../crypto/x509/x509_ext.c                  \
    $$(PWD)/../../../crypto/x509/x509_lu.c                   \
    $$(PWD)/../../../crypto/x509/x509_meth.c                 \
    $$(PWD)/../../../crypto/x509/x509_obj.c                  \
    $$(PWD)/../../../crypto/x509/x509_r2x.c                  \
    $$(PWD)/../../../crypto/x509/x509_req.c                  \
    $$(PWD)/../../../crypto/x509/x509_set.c                  \
    $$(PWD)/../../../crypto/x509/x509_trs.c                  \
    $$(PWD)/../../../crypto/x509/x509_txt.c                  \
    $$(PWD)/../../../crypto/x509/x509_v3.c                   \
    $$(PWD)/../../../crypto/x509/x509_vfy.c                  \
    $$(PWD)/../../../crypto/x509/x509_vpm.c                  \
    $$(PWD)/../../../crypto/x509/x509cset.c                  \
    $$(PWD)/../../../crypto/x509/x509name.c                  \
    $$(PWD)/../../../crypto/x509/x509rset.c                  \
    $$(PWD)/../../../crypto/x509/x509spki.c                  \
    $$(PWD)/../../../crypto/x509/x509type.c                  \
    $$(PWD)/../../../crypto/x509/x_all.c                     \
    $$(PWD)/../../../crypto/x509/x_attrib.c                  \
    $$(PWD)/../../../crypto/x509/x_crl.c                     \
    $$(PWD)/../../../crypto/x509/x_exten.c                   \
    $$(PWD)/../../../crypto/x509/x_name.c                    \
    $$(PWD)/../../../crypto/x509/x_pubkey.c                  \
    $$(PWD)/../../../crypto/x509/x_req.c                     \
    $$(PWD)/../../../crypto/x509/x_x509.c                    \
    $$(PWD)/../../../crypto/x509/x_x509a.c                   \
    $$(PWD)/../../../crypto/x509v3/pcy_cache.c               \
    $$(PWD)/../../../crypto/x509v3/pcy_data.c                \
    $$(PWD)/../../../crypto/x509v3/pcy_lib.c                 \
    $$(PWD)/../../../crypto/x509v3/pcy_map.c                 \
    $$(PWD)/../../../crypto/x509v3/pcy_node.c                \
    $$(PWD)/../../../crypto/x509v3/pcy_tree.c                \
    $$(PWD)/../../../crypto/x509v3/v3_addr.c                 \
    $$(PWD)/../../../crypto/x509v3/v3_admis.c                \
    $$(PWD)/../../../crypto/x509v3/v3_akey.c                 \
    $$(PWD)/../../../crypto/x509v3/v3_akeya.c                \
    $$(PWD)/../../../crypto/x509v3/v3_alt.c                  \
    $$(PWD)/../../../crypto/x509v3/v3_asid.c                 \
    $$(PWD)/../../../crypto/x509v3/v3_bcons.c                \
    $$(PWD)/../../../crypto/x509v3/v3_bitst.c                \
    $$(PWD)/../../../crypto/x509v3/v3_conf.c                 \
    $$(PWD)/../../../crypto/x509v3/v3_cpols.c                \
    $$(PWD)/../../../crypto/x509v3/v3_crld.c                 \
    $$(PWD)/../../../crypto/x509v3/v3_enum.c                 \
    $$(PWD)/../../../crypto/x509v3/v3_extku.c                \
    $$(PWD)/../../../crypto/x509v3/v3_genn.c                 \
    $$(PWD)/../../../crypto/x509v3/v3_ia5.c                  \
    $$(PWD)/../../../crypto/x509v3/v3_info.c                 \
    $$(PWD)/../../../crypto/x509v3/v3_int.c                  \
    $$(PWD)/../../../crypto/x509v3/v3_lib.c                  \
    $$(PWD)/../../../crypto/x509v3/v3_ncons.c                \
    $$(PWD)/../../../crypto/x509v3/v3_pci.c                  \
    $$(PWD)/../../../crypto/x509v3/v3_pcia.c                 \
    $$(PWD)/../../../crypto/x509v3/v3_pcons.c                \
    $$(PWD)/../../../crypto/x509v3/v3_pku.c                  \
    $$(PWD)/../../../crypto/x509v3/v3_pmaps.c                \
    $$(PWD)/../../../crypto/x509v3/v3_prn.c                  \
    $$(PWD)/../../../crypto/x509v3/v3_purp.c                 \
    $$(PWD)/../../../crypto/x509v3/v3_skey.c                 \
    $$(PWD)/../../../crypto/x509v3/v3_sxnet.c                \
    $$(PWD)/../../../crypto/x509v3/v3_tlsf.c                 \
    $$(PWD)/../../../crypto/x509v3/v3_utl.c                  \
    $$(PWD)/../../../crypto/x509v3/v3err.c                   \
    $$(PWD)/../../../providers/common/ciphers/aes.c          \
    $$(PWD)/../../../providers/common/ciphers/aes_basic.c    \
    $$(PWD)/../../../providers/common/ciphers/block.c        \
    $$(PWD)/../../../providers/common/digests/sha2.c         \
    $$(PWD)/../../../providers/common/provider_err.c         \
    $$(PWD)/../../../providers/default/defltprov.c
