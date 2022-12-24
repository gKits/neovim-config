local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.setup()

lsp.ensure_installed({
    'tsserver',
    'eslint',
    'gopls',
    'pywright',
    'marksman',
    'tailwindcss-language-server'
})
