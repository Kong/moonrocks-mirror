package = "MIDI"
version = "6.6-0"
source = {
   url = "http://www.pjb.com.au/comp/lua/MIDI-6.6.tar.gz",
   md5 = "bac2316ad889033780ed4d5b7966dbb9"
}
description = {
   summary = "Reading, writing and manipulating MIDI data",
   detailed = [[
      This module offers functions for handling MIDI files, with
      operations such as concatenating, merging and searching through
      scores; and converting to and from MIDI, and the Score and Opus
      structures inspired by Sean Burke's MIDI-Perl CPAN module.
   ]],
   homepage = "http://www.pjb.com.au/comp/lua/MIDI.html",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1, < 5.4",
}
build = {
   type = "builtin",
   modules = {
      ["MIDI"] = "MIDI.lua"
   },
   copy_directories = { "doc", "test" }
}
