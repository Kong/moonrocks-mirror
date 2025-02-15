package = "lua-resty-reqargs"
version = "1.0-1"
source = {
    url = "git://github.com/bungle/lua-resty-reqargs.git",
    branch = "v1.0"
}
description = {
    summary = "Helper to Retrieve HTTP Request Arguments and File Uploads",
    detailed = "lua-resty-reqargs is a helper to Retrieve application/x-www-form-urlencoded, multipart/form-data, and application/json HTTP request arguments.",
    homepage = "https://github.com/bungle/lua-resty-reqargs",
    maintainer = "Aapo Talvensaari <aapo.talvensaari@gmail.com>",
    license = "BSD"
}
dependencies = {
    "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        ["resty.reqargs"] = "lib/resty/reqargs.lua"
    }
}
