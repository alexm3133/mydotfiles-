
local lspconfig = require('lspconfig')

-- Configuración para TypeScript
lspconfig.tsserver.setup {}

-- Configuración para Angular
lspconfig.angularls.setup {}

-- Configuración para Python
lspconfig.pylsp.setup {}

-- Configuración para HTML
lspconfig.html.setup {
  cmd = { 'vscode-html-languageserver', '--stdio' },
}
