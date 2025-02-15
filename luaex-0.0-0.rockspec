package = "luaex"
version = "0.0-0"
source = {
  url = "git://github.com/shakna-israel/luaex",
  tag = "0.0.0"
}
description = {
  summary = "Convert Lua files to executables",
  detailed = [=[luaex is currently a braindead Lua->C converter, that then calls the system cc to generate an executable file.
  ]=],
  homepage = "https://github.com/shakna-israel/luaex",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "none",
  install = {
    lua = {
      "luaex/luaex.lua"
    }
  }
}
