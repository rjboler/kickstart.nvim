vim.lsp.config('ty', {
    cmd = { "uv", "run", "-m", "ty", "server" },
})

vim.lsp.enable 'ty'
vim.lsp.enable 'ruff'
