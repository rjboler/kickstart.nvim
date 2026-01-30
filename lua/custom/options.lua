local vim = vim
local opt = vim.opt

-- BEGIN Folding
opt.fillchars = { fold = ' ' }
opt.foldmethod = 'indent'
opt.foldenable = false
opt.foldlevel = 99

-- END Folding

-- BEGIN CommentBehavior
vim.api.nvim_create_autocmd('FileType', {
  pattern = '*',
  callback = function()
    vim.opt_local.formatoptions:remove { 'r', 'o' }
  end,
})
-- END CommentBehavior

-- BEGIN LanguageOptions
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'python',
  callback = function()
    opt.foldignore = ''
  end,
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'html',
  callback = function()
    vim.opt.tabstop = 2
    vim.opt.shiftwidth = 2
    vim.opt.expandtab = true
  end,
})

vim.api.nvim_create_autocmd('Filetype', {
  pattern = { 'c', 'cpp', 'h', 'lua', 'json' },
  callback = function()
    vim.opt.tabstop = 2
    vim.opt.shiftwidth = 2
    vim.opt.expandtab = true
  end,
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'nix',
  callback = function()
    vim.opt.tabstop = 2
    vim.opt.shiftwidth = 2
    vim.opt.expandtab = true
  end,
})
-- END LanguageOptions

-- BEGIN FontOptions
vim.g.have_nerd_fonts = true
-- END FontOptions

-- BEGIN StyleOptions
vim.cmd.hi 'Comment gui=none'
vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
vim.api.nvim_set_hl(0, 'NormalNC', { bg = 'none' })
vim.api.nvim_set_hl(0, 'NonText', { bg = 'none' })
vim.api.nvim_set_hl(0, 'LineNr', { bg = 'none' })
vim.api.nvim_set_hl(0, 'SignColumn', { bg = 'none' })
-- END StyleOptions

-- BEGIN NeoGen

require('neogen').setup {
  enabled = true,
  input_after_command = true,
  languages = {
    python = {
      template = {
        annotation_convention = 'google_docstrings',
      },
    },
  },
}

-- END NeoGen
