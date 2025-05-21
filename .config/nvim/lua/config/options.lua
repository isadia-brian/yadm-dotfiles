vim.g.have_nerd_font = true

-- Hide deprecation warnings
vim.g.deprecation_warnings = false

-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.mouse = "a"
opt.confirm = true
opt.showmode = false

opt.clipboard = "unnamedplus"
opt.swapfile = false

opt.splitright = true
opt.splitbelow = true
opt.linebreak = true -- Wrap lines at convenient points

opt.completeopt = "menu,menuone,noselect"

opt.expandtab = true
opt.shiftwidth = 2

opt.tabstop = 2
opt.softtabstop = 2
opt.smartindent = true
opt.autoindent = true
opt.shiftround = true -- Round indent

opt.cursorline = true

opt.undofile = true
opt.ignorecase = true
opt.smartcase = true

opt.signcolumn = "yes"

opt.list = true
opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

opt.termguicolors = true

-- Show which line your cursor is on
opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
opt.scrolloff = 5

opt.wrap = true
opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize", "help", "globals", "skiprtp", "folds" }

vim.g.markdown_recommended_style = 0

--commentstring setup
local get_option = vim.filetype.get_option
vim.filetype.get_option = function(filetype, option)
  return option == "commentstring" and require("ts_context_commentstring.internal").calculate_commentstring()
    or get_option(filetype, option)
end
