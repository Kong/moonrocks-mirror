package = "parser-gen"
version = "1.0-3"
source = {
   url = "git://github.com/vsbenas/parser-gen"
}
description = {
   summary = "A PEG parser generator that handles space characters, generates ASTs and adds error labels automatically.",
   homepage = "https://github.com/vsbenas/parser-gen",
   license = "MIT/X11"
}
dependencies = {
	 "lua >= 5.1, < 5.4",
	 "lpeglabel >= 0.12.2"
}
build = {
   type = "builtin",
   modules = {}
}