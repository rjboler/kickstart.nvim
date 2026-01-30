vim.lsp.config('nil_ls', {
  autostart = true,
  capabilities = caps,
  formatting = {
    command = 'nixfmt',
  },
})

vim.lsp.enable 'nil_ls'
