package = "gonapps-cookie"
version = "1.0-1"

source = {
    url = "git://github.com/gonapps/gonapps-lua-cookie",
    tag = "v1.0-1"
}

description = {
    summary = "Cookie for lua",
    detailed = [[]],
    homepage = "http://github.com/gonapps/gonapps-lua-cookie",
    license = "LGPLv3"
}

dependencies = {"lua >= 5.1"}

build = {
    type = "builtin",
    modules = {
        ["gonapps.cookie"] = "src/gonapps/cookie.lua"
    }
}
