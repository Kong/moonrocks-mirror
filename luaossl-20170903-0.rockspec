package = "luaossl"
version = "20170903-0"
source = {
	url = "https://github.com/wahern/luaossl/archive/rel-20170903.zip";
	md5 = "771c060050fc5e49a1d0b7767d83656a";
	dir = "luaossl-rel-20170903";
}
description = {
	summary = "Most comprehensive OpenSSL module in the Lua universe.";
	homepage = "http://25thandclement.com/~william/projects/luaossl.html";
	license = "MIT/X11";
}
supported_platforms = {
	"unix";
}
dependencies = {
	"lua";
}
external_dependencies = {
	OPENSSL = {
		header = "openssl/ssl.h";
		library = "ssl";
	};
	CRYPTO = {
		header = "openssl/crypto.h";
		library = "crypto";
	};
}
build = {
	type = "builtin";
	modules = {
		["_openssl"] = {
			sources = {
				"src/openssl.c";
				"vendor/compat53/c-api/compat-5.3.c";
			};
			libraries = {
				"ssl";
				"crypto";
			};
			defines = {
				"_REENTRANT"; "_THREAD_SAFE";
				"COMPAT53_PREFIX=luaossl";
			};
			incdirs = {
				"$(OPENSSL_INCDIR)";
				"$(CRYPTO_INCDIR)";
			};
			libdirs = {
				"$(OPENSSL_LIBDIR)";
				"$(CRYPTO_LIBDIR)";
			};
		};
		["openssl"] = "src/openssl.lua";
		["openssl.auxlib"] = "src/openssl.auxlib.lua";
		["openssl.bignum"] = "src/openssl.bignum.lua";
		["openssl.cipher"] = "src/openssl.cipher.lua";
		["openssl.des"] = "src/openssl.des.lua";
		["openssl.digest"] = "src/openssl.digest.lua";
		["openssl.hmac"] = "src/openssl.hmac.lua";
		["openssl.ocsp.basic"] = "src/openssl.ocsp.basic.lua";
		["openssl.ocsp.response"] = "src/openssl.ocsp.response.lua";
		["openssl.pkcs12"] = "src/openssl.pkcs12.lua";
		["openssl.pkey"] = "src/openssl.pkey.lua";
		["openssl.pubkey"] = "src/openssl.pubkey.lua";
		["openssl.rand"] = "src/openssl.rand.lua";
		["openssl.ssl.context"] = "src/openssl.ssl.context.lua";
		["openssl.ssl"] = "src/openssl.ssl.lua";
		["openssl.x509"] = "src/openssl.x509.lua";
		["openssl.x509.altname"] = "src/openssl.x509.altname.lua";
		["openssl.x509.chain"] = "src/openssl.x509.chain.lua";
		["openssl.x509.crl"] = "src/openssl.x509.crl.lua";
		["openssl.x509.csr"] = "src/openssl.x509.csr.lua";
		["openssl.x509.extension"] = "src/openssl.x509.extension.lua";
		["openssl.x509.name"] = "src/openssl.x509.name.lua";
		["openssl.x509.store"] = "src/openssl.x509.store.lua";
		["openssl.x509.verify_param"] = "src/openssl.x509.verify_param.lua";
	};
	platforms = {
		-- Unixy systems need to link with pthreads and libm.
		-- We also define _GNU_SOURCE in the hope for extra functionality
		unix = {
			modules = {
				["_openssl"] = {
					libraries = {
						nil, nil;
						"pthread";
						"m";
					};
					defines = {
						nil, nil, nil;
						"_GNU_SOURCE";
					}
				};
			};
		};
		-- Only linux needs to link with libdl
		linux = {
			modules = {
				["_openssl"] = {
					libraries = {
						nil, nil, nil, nil;
						"dl";
					};
				};
			};
		};
	};
	patches = {
		["config.h.diff"] = [[
--- a/src/openssl.c
+++ b/src/openssl.c
@@ -26,3 +26 @@
-#if HAVE_CONFIG_H
-#include "config.h"
-#endif
+#include "../config.h.guess"
]];
	}
}
