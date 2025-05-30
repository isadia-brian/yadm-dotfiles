vim.keymap.set("n", "-", "<cmd>Oil --float<CR>", { desc = "Open Parent directory in Oil" })
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
vim.keymap.set("i", "jk", "<Esc>", { desc = "Exit inset mode" })
vim.keymap.set({ "i", "n" }, "<C-s>", "<cmd>w<CR>", { desc = "save file" })
vim.keymap.set("n", "<leader>fe", function()
  vim.diagnostic.open_float()
end, { desc = "Floating Errors" })
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "<leader>qq", "<cmd>qa<CR>", { desc = "Quit neovim" })
vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTerm size=60 direction=float<CR>", { desc = "Toggle floating terminal" })
vim.keymap.set("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Lazy" })
vim.keymap.set("n", "<leader>m", "<cmd>Mason<cr>", { desc = "Mason " })
vim.keymap.set("n", "<leader>Down", "<C-W>s", { desc = "Split Window Below", remap = true })
vim.keymap.set("n", "<leader>Right", "<C-W>v", { desc = "Split Window Right", remap = true })
vim.keymap.set("n", "<leader>wd", "<C-W>c", { desc = "Delete Window", remap = true })
