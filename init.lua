-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

--Load all config files in lua/config
-- This is a bit of a hack, but it works

for _, file in ipairs(vim.fn.readdir(vim.fn.stdpath("config") .. "/lua/config", [[v:val =~ '\.lua$']])) do
  require("config." .. file:gsub("%.lua$", ""))
end

vim.cmd("colorscheme rose-pine-midnight")
