package = "cuid"
version = "0.2-1"

source = {
  url = "git://github.com/marcoonroad/cuid",
  tag = "v0.2-1",
}

description = {
  summary  = "CUID generator for Lua.",
  detailed = "This library provides collision-resistant IDs for applications which need to scale.",
  homepage = "http://github.com/marcoonroad/cuid",
  license  = "MIT/X11",
}

dependencies = {
  "lua >= 5.1, < 5.4",
}

build = {
  type = "builtin",
  modules = {
    cuid = "src/cuid.lua",
  }
}
