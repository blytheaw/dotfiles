local lsp = require('lsp-zero')

lsp.preset('recommended')

-- Temp fix for omnisharp not implementing lsp stuff right
-- https://github.com/OmniSharp/omnisharp-roslyn/issues/2483#issuecomment-1367289826
lsp.configure('omnisharp', {
    on_attach = function(client )
        client.server_capabilities.semanticTokensProvider.legend = {
            tokenModifiers = { "static" },
            tokenTypes = { "comment", "excluded", "identifier", "keyword", "keyword", "number", "operator", "operator", "preprocessor", "string", "whitespace", "text", "static", "preprocessor", "punctuation", "string", "string", "class", "delegate", "enum", "interface", "module", "struct", "typeParameter", "field", "enumMember", "constant", "local", "parameter", "method", "method", "property", "event", "namespace", "label", "xml", "xml", "xml", "xml", "xml", "xml", "xml", "xml", "xml", "xml", "xml", "xml", "xml", "xml", "xml", "xml", "xml", "xml", "xml", "xml", "xml", "regexp", "regexp", "regexp", "regexp", "regexp", "regexp", "regexp", "regexp", "regexp" }
        }
    end

})

lsp.nvim_workspace()

lsp.setup()

vim.diagnostic.config({
    virtual_text = true
})
