package = "lua-resty-waf"
version = "0.9-1"
source = {
   url = "gitrec+https://github.com/p0pr0ck5/lua-resty-waf",
}
description = {
   summary = "High-performance WAF built on the OpenResty stack",
   homepage = "https://github.com/p0pr0ck5/lua-resty-waf",
   license = "GNU GPLv3",
   maintainer = "Robert Paprocki <robert@cryptobells.com>"
}
dependencies = {
   "lua >= 5.1",
   "luarocks-fetch-gitrec",
}
build = {
   type = "make",
   install_target = "install",
}
