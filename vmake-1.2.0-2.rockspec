package = "vmake"
version = "1.2.0-2"

source = {
    url = "git://github.com/vercas/vMake",
    tag = "v1.2.0-2",
}

description = {
    summary = "Tool for building software and configuring builds.",
    homepage = "https://github.com/vercas/vMake",
    license = "NCSA (BSD-like)",
}

dependencies = {
    "lua >= 5.1",
}

build = {
    type = "builtin",

    modules = {
        ["vmake"] = "vmake.lua",
    },
}
