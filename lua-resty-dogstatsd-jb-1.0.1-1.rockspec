package = "lua-resty-dogstatsd-jb"
version = "1.0.1-1"
source = {
  url = "git://github.com/adobe-apiplatform/lua-resty-dogstatsd.git",
  tag = "v1.0.1"
}
description = {
  summary = "DogStatsd client for OpenResty/ngx_lua",
  detailed = "DogStatsd client for Lua 5.1+.",
  homepage = "https://github.com/adobe-apiplatform/lua-resty-dogstatsd",
  license = "GPLv3"
}
dependencies = {
  "lua >= 5.1",
  "lua-resty-statsd >= 3.0.2",
}
build = {
  type = "builtin",
  modules = {
    resty_dogstatsd = "resty_dogstatsd.lua"
  }
}

