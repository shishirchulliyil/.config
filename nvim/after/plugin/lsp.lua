local lsp_zero = require('lsp-zero')

-- below is for creating unique key binding for attached buffer
-- i.e. within the file you are editing
lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

lsp_zero.set_sign_icons({
  error = '✘',
  warn = '▲',
  hint = '⚑',
  info = '»'
})

-- nvim-cmp keybindings to override default ones
local cmp = require('cmp')
--local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    -- `Enter` key to confirm completion
    ['<CR>'] = cmp.mapping.confirm({select = false}),

    -- Ctrl+Space to trigger completion menu
    --['<C-Space>'] = cmp.mapping.complete(),

    -- Navigate between snippet placeholder
    --['<C-f>'] = cmp_action.luasnip_jump_forward(),
    --['<C-b>'] = cmp_action.luasnip_jump_backward(),

    -- Scroll up and down in the completion documentation
    --['<C-u>'] = cmp.mapping.scroll_docs(-4),
    --['<C-d>'] = cmp.mapping.scroll_docs(4),
  })
})

-- I am using :Mason to handle all the lsp servers installation
-- you can add the names of the lsp servers manually like below
-- or, run :Mason and install one by one from the list by clicking 'i'
-- and see the status of them getting installed
require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {'lua_ls', 'eslint', 'tsserver', 'cssls', 'cssmodules_ls', 'vuels', 'angularls', 'ansiblels', 'bashls', 'dockerls', 'graphql', 'html', 'jsonls', 'tailwindcss'},

  handlers = {
    lsp_zero.default_setup,
  },
})
