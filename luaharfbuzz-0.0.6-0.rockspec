package = "luaharfbuzz"
version = "0.0.6-0"
source = {
  url = "git://github.com/deepakjois/luaharfbuzz",
  tag = "v0.0.6"
}
description = {
  summary = "Lua bindings for the Harfbuzz text shaping library",
  homepage = "https://github.com/deepakjois/luaharfbuzz",
  license = "MIT",
  maintainer = "Deepak Jois <deepak.jois@gmail.com>"
}
dependencies = {
  "lua >= 5.2"
}
build = {
  type = "builtin",
  modules = {
    harfbuzz ="src/harfbuzz.lua",
    luaharfbuzz= {
      sources = {
      "src/luaharfbuzz/luaharfbuzz.c",
      "src/luaharfbuzz/blob.c",
      "src/luaharfbuzz/face.c",
      "src/luaharfbuzz/font.c",
      "src/luaharfbuzz/buffer.c",
      "src/luaharfbuzz/feature.c",
      "src/luaharfbuzz/class_utils.c"
      },
      libraries = {"harfbuzz"},
      incdirs = {"$(HARFBUZZ_INCDIR)/harfbuzz"},
      libdirs = {"$(HARFBUZZ_LIBDIR)"}
    }
  }
}
external_dependencies = {
   HARFBUZZ = {
      header = "harfbuzz/hb.h"
   }
}
