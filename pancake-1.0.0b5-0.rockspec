
package = "Pancake"
version = "1.0.0b5-0"
source = {
   url = 'git://github.com/odkr/pancake',
   branch = 'main',
   tag = 'v1.0.0b5',
}

description = {
   summary = 'Toolkit to write Lua filters for Pandoc.',
   detailed = [[Pancake aides with

* maintaining compatibility accross different versions of Pandoc
* working with complex data structures
* error handling
* string interpolation
* object-oriented programming
* file I/O and filesystem interaction
* metadata parsing]],
   homepage = "https://github.com/odkr/pancake",
   license = "MIT"
}

dependencies = {
   "lua >= 5.3, <6"
}

build = {
   type = "builtin",
   modules = {
      pancake = 'pancake/pancake.lua',
   },
   copy_directories = { 'doc' }
}
