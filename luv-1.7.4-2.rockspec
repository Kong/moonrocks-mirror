package = "luv"
version = "1.7.4-2"
source = {
  url = 'https://github.com/luvit/luv/releases/download/1.7.4-2/luv-1.7.4-2.tar.gz',
}

description = {
  summary = "Bare libuv bindings for lua",
  detailed = [[
libuv bindings for luajit and lua 5.1/5.3.

This library makes libuv available to lua scripts. It was made for the luvit project but should usable from nearly any lua project.
  ]],
  homepage = "https://github.com/luvit/luv",
  license = "Apache 2.0"
}

dependencies = {
  "lua >= 5.1"
}

build = {
  type = 'cmake',
  variables = {
     CFLAGS="$(CFLAGS)",
     LIBFLAG="$(LIBFLAG)",
     LUA_LIBDIR="$(LUA_LIBDIR)",
     LUA_BINDIR="$(LUA_BINDIR)",
     LUA_INCDIR="$(LUA_INCDIR)",
     LUA="$(LUA)",
     PREFIX="$(PREFIX)",
     BINDIR="$(BINDIR)",
     LIBDIR="$(LIBDIR)",
     LUADIR="$(LUADIR)",
     CONFDIR="$(CONFDIR)",
  },
}
