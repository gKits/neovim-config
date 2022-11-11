local capabilities = require('cmp_nvim_lsp').default_capabilities()
require'lspconfig'.gopls.setup {
    capabilities = capabilities
}
require'lspconfig'.tsserver.setup{
    capabilities = capabilities
}
require'lspconfig'.eslint.setup{
    capabilities = capabilities
}
require'lspconfig'.pyright.setup{
    capabilities = capabilities
}
require'lspconfig'.dockerls.setup{
    capabilities = capabilities
}
require'lspconfig'.yamlls.setup{
    capabilities = capabilities
}
require'lspconfig'.marksman.setup{
    capabilities = capabilities
}
