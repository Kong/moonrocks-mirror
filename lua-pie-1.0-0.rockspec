package = "lua-pie"
version = "1.0-0"
source = {
   url = "git://github.com/SvenMarcus/lua-pie",
   tag = "v1.0",
}
description = {
   summary = "A class library with polymorphism, inheritance and encapsulation.",
   detailed = [[
      lua-pie is a class library that supports polymorphism, inheritance and encapsulation (hence the name!). Accessibility is specified via the keywords private, public and static. Attributes are defined in the constructor and are private by default.
      It is also possible to implement metamethods for classes via the operators function.
   ]],
   homepage = "https://github.com/SvenMarcus/lua-pie",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}

build = {
   type = "builtin",
   modules = {
         ["lua-pie"] = "lua-pie.lua"
   },
   copy_directories = { "doc" }
}