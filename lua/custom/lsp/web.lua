vim.lsp.config('emmet_ls', {
  capabilities = capabilities,
  filetypes = { 'css', 'html', 'javascript', 'javascriptreact', 'less', 'sass', 'scss', 'svelte', 'pug', 'typescriptreact', 'vue' },
  init_options = {
    html = {
      options = {
        ['bem.enabled'] = true,
      },
    },
  },
})

vim.lsp.enable 'emmet_ls'
