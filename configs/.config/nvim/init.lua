local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    pin = true,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter"
    },
    opts = {
      defaults = {
        layout_strategy = "vertical",
      },
      pickers = {
        find_files = {
          follow = true,
          hidden = true,
          find_command = { "fd", "--type", "f", "--exclude", ".git" },
        },
        current_buffer_fuzzy_find = {
          previewer = false,
        },
      },
    }
  },
  {
    "mcchrish/zenbones.nvim",
    dependencies = {
      "rktjmp/lush.nvim",
    },
  },
  {
    "lewis6991/gitsigns.nvim",
    opts = {},
  },
  {
    "cappyzawa/trim.nvim",
    opts = {
      highlight = true,
    },
  },
  "tpope/vim-sleuth",
})


vim.opt.clipboard = { "unnamed", "unnamedplus" }
vim.opt.colorcolumn = "80"
vim.opt.ignorecase = true
vim.opt.linebreak = true
vim.opt.list = true

vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.tabstop = 4

vim.opt.number = true

-- colors
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.cmd.colorscheme("zenbones")

-- Remap
vim.keymap.set("n", "<esc>", ":noh <CR>", {})

local telescope = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", telescope.find_files, {})
vim.keymap.set("n", "<leader>fb", telescope.buffers, {})
vim.keymap.set("n", "<leader>fh", telescope.help_tags, {})
