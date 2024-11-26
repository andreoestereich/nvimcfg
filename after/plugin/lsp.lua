-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
--local servers = { 'pyright',  'tsserver', 'lua_ls', 'bashls', 'ccls', 'texlab'}
--for _, lsp in pairs(servers) do
--	require('lspconfig')[lsp].setup {
--		on_attach = on_attach,
--		Lua = {
--			diagnostics = {
--				-- Get the language server to recognize the `vim` global
--				globals = {'vim','on_attach'},
--			},
--		},
--	}
--
--end
-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(_, bufnr)
	-- Enable completion triggered by <c-x><c-o>
	vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
	vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
		vim.lsp.diagnostic.on_publish_diagnostics, {
			-- disable virtual text
			virtual_text = false,

			-- show signs
			signs = true,

			-- delay update diagnostics
			update_in_insert = false,
		}
	)
	--require('remaps.lsp')
end

-- Setup language servers.
local lspconfig = require('lspconfig')

local servers = { 'pyright',  'tsserver', 'lua_ls', 'bashls', 'ccls', 'texlab'}
for _, lsp in pairs(servers) do
	lspconfig[lsp].setup {
		on_attach = on_attach,
	}

end

lspconfig.lua_ls.setup {
	settings = {
		Lua = {
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = {'vim'},
			},
		},
	},
}

