package = "lua-path"
version = "0.3.0-2"
source = {
  url = "https://github.com/moteus/lua-path/archive/v0.3.0.zip",
  dir = "lua-path-0.3.0",
}

description = {
  summary = "File system path manipulation library",
  detailed = [[
  ]],
  homepage = "https://github.com/moteus/lua-path",
  license  = "MIT/X11",
}

dependencies = {
  "lua >= 5.1, < 5.4",
  -- "luafilesystem >= 1.4",
  -- "alien >= 0.7.0",       -- instead lfs on windows
}

build = {
  type = "builtin",
  copy_directories = {
    "doc",
    "examples",
    "test",
  },
  modules = {
    ["path"                   ] = "lua/path.lua",
    ["path.fs"                ] = "lua/path/fs.lua",
    ["path.findfile"          ] = "lua/path/findfile.lua",
    ["path.lfs.fs"            ] = "lua/path/lfs/fs.lua",
    ["path.syscall.fs"        ] = "lua/path/syscall/fs.lua",
    ["path.lfs.impl.fs"       ] = "lua/path/lfs/impl/fs.lua",
    ["path.module"            ] = "lua/path/module.lua",
    ["path.win32.alien.fs"    ] = "lua/path/win32/alien/fs.lua",
    ["path.win32.alien.types" ] = "lua/path/win32/alien/types.lua",
    ["path.win32.alien.utils" ] = "lua/path/win32/alien/utils.lua",
    ["path.win32.alien.wcs"   ] = "lua/path/win32/alien/wcs.lua",
    ["path.win32.ffi.fs"      ] = "lua/path/win32/ffi/fs.lua",
    ["path.win32.ffi.types"   ] = "lua/path/win32/ffi/types.lua",
    ["path.win32.ffi.wcs"     ] = "lua/path/win32/ffi/wcs.lua",
    ["path.win32.fs"          ] = "lua/path/win32/fs.lua",
    ["path.win32.wcs"         ] = "lua/path/win32/wcs.lua",
  }
}

