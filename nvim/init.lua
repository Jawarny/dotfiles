local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup('plugins')

-- Warning treesitter
vim.g.skip_ts_context_commentstring_module = true
-- options
local opts = vim.o

vim.cmd("set splitright")

opts.encoding = 'utf-8'
opts.number = true
opts.relativenumber = true
opts.title = true
opts.autoindent = true
opts.backup = false
opts.hlsearch = true
opts.showcmd = true
opts.cmdheight = 1
opts.laststatus = 2
opts.scrolloff = 10
opts.sidescrolloff = 10
opts.expandtab = true
opts.inccommand = 'split'
opts.scrollbind = false
opts.ruler = false
opts.showmatch = false
opts.lazyredraw = true
opts.ignorecase = true
opts.smarttab = true
opts.shiftwidth = 4
opts.tabstop = 4
opts.autoindent = true
opts.smartindent = true
opts.wrap = false
opts.cursorline = true
opts.suffixesadd = '.java,.c,.cpp,.h,.hpp,.hxx,.m,.mm,.php,.py,.rb,.sh,.swift,.yml,.yaml,.rust,.json,.js,.jsx,.ts,.tsx,.css,.md,.es,.pl,.svelte,.astro'
opts.exrc = true
opts.hidden = true
opts.listchars = "eol:↵"
opts.list = true
opts.termguicolors = true
opts.winblend = 0
opts.wildoptions = 'pum'
opts.pumblend = 5

-- color scheme
require('colors')
require('lsp')
require('mappings')
