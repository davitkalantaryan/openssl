/* Copyright (c) 2014, Google Inc.
 *
 * Permission to use, copy, modify, and/or distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies.
 *
 * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
 * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
 * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
 * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE. */

/* This header is provided in order to make compiling against code that expects
   OpenSSL easier. */

#ifndef OPENSSL_HEADER_OPENSSLCONF_H
#define OPENSSL_HEADER_OPENSSLCONF_H


//#define OPENSSL_NO_BF
//#define OPENSSL_NO_BUF_FREELISTS
//#define OPENSSL_NO_CAMELLIA
//#define OPENSSL_NO_CAPIENG
//#define OPENSSL_NO_CAST
//#define OPENSSL_NO_CMS
//#define OPENSSL_NO_COMP
//#define OPENSSL_NO_DANE
//#define OPENSSL_NO_DEPRECATED
//#define OPENSSL_NO_DYNAMIC_ENGINE
//#define OPENSSL_NO_EC_NISTP_64_GCC_128
//#define OPENSSL_NO_EC2M
//#define OPENSSL_NO_ENGINE
//#define OPENSSL_NO_GMP
//#define OPENSSL_NO_GOST
//#define OPENSSL_NO_HEARTBEATS
//#define OPENSSL_NO_HW
//#define OPENSSL_NO_IDEA
//#define OPENSSL_NO_JPAKE
//#define OPENSSL_NO_KRB5
//#define OPENSSL_NO_MD2
//#define OPENSSL_NO_MDC2
//#define OPENSSL_NO_OCB
//#define OPENSSL_NO_OCSP
//#define OPENSSL_NO_RC2
//#define OPENSSL_NO_RC5
//#define OPENSSL_NO_RFC3779
//#define OPENSSL_NO_RIPEMD
//#define OPENSSL_NO_RMD160
//#define OPENSSL_NO_SCTP
//#define OPENSSL_NO_SEED
//#define OPENSSL_NO_SRP
//#define OPENSSL_NO_SSL2
//#define OPENSSL_NO_STATIC_ENGINE
//#define OPENSSL_NO_STORE
//#define OPENSSL_NO_WHIRLPOOL


#endif  /* OPENSSL_HEADER_OPENSSLCONF_H */


#ifndef OPENSSL_HEADER_OPENSSLCONF_DAV_EXT_H

#include <stdint.h>
//#include <openssl/e_os2.h>
//#include <openssl/whrlpool.h>
//#include <openssl/bn.h>

#define NON_EMPTY_TRANSLATION_UNIT static void *dummy = &dummy;


#define DEPRECATEDIN_3(...)
#define DEPRECATEDIN_1_1_0(_function)   _function;
#define DEPRECATEDIN_1_0_0(_function)   _function;
#define DEPRECATEDIN_0_9_8(_function)   _function;

#ifndef OPENSSL_FILE
#define OPENSSL_FILE  __FILE__
#endif

#ifndef OPENSSL_LINE
#define OPENSSL_LINE  __LINE__
#endif

#ifndef BN_ULONG

#if defined(OPENSSL_64_BIT)
//#define BN_ULONG uint64_t
//#define BN_BITS2 64
//#define BN_DEC_FMT1 "%" PRIu64
//#define BN_DEC_FMT2 "%019" PRIu64
//#define BN_HEX_FMT1 "%" PRIx64
//#define BN_HEX_FMT2 "%016" PRIx64
#elif defined(OPENSSL_32_BIT)
//#define BN_ULONG uint32_t
//#define BN_BITS2 32
//#define BN_DEC_FMT1 "%" PRIu32
//#define BN_DEC_FMT2 "%09" PRIu32
//#define BN_HEX_FMT1 "%" PRIx32
//#define BN_HEX_FMT2 "%08" PRIx64
#else
#error "Must define either OPENSSL_32_BIT or OPENSSL_64_BIT"
#endif

#endif

#ifndef ENGINESDIR
#define ENGINESDIR "/usr/local/ssl/lib/engines"
#endif

#if !defined(RC4_INT)
#define RC4_INT unsigned char
#endif

#ifndef OPENSSL_UNISTD
#ifdef _WIN32
#else
#define OPENSSL_UNISTD "unistd.h"
#endif
#endif

#define OPENSSLDIR "/usr/local/ssl"


#endif // #ifndef OPENSSL_HEADER_OPENSSLCONF_DAV_EXT_H

