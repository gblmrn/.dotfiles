local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
  'rust_analyzer',
})

lsp.set_preferences({
  suggest_lsp_servers = false,
  sign_icons = {
    error = 'E',
    warn = 'W',
    hint = 'H',
    info = 'I'
  }
})

lsp.on_attach(
  function(client, bufnr)
  lsp.default_keymaps(
    {buffer = bufnr}
  )
end)

lsp.setup()

vim.diagnostic.config({
  virtual_text = true
})

