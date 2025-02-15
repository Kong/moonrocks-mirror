local MODREV, SPECREV = "0.0.1", "-2"
rockspec_format = "3.0"
package = "nvim-cmp"
version = MODREV .. SPECREV

description = {
  summary = "A completion plugin for neovim",
  labels = { "neovim" },
  detailed = [[
    A completion engine plugin for neovim written in Lua. Completion sources are installed from external repositories and "sourced".
   ]],
  homepage = "https://github.com/hrsh7th/nvim-cmp",
  license = "MIT",
}

dependencies = {
  "lua >= 5.1, < 5.4",
}

source = {
  url = "http://github.com/hrsh7th/nvim-cmp/archive/v" .. MODREV .. ".zip",
  dir = "nvim-cmp-" .. MODREV,
}

if MODREV == "scm" then
  source = {
    url = "git://github.com/hrsh7th/nvim-cmp",
  }
end

build = {
  type = "builtin",
  copy_directories = {
    'lua',
    'autoload',
    'plugin',
  }
}
