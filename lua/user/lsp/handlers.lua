local sign = function(opts)
  vim.fn.sign_define(opts.name, {
    texthl = opts.name,
    text = opts.text,
    numhl = ""
  })
end

sign({name = "DiagnosticSignError", text = "✘"})
sign({name = "DiagnosticSignWarn", text = "▲"})
sign({name = "DiagnosticSignHint", text = "⚑"})
sign({name = "DiagnosticSignInfo", text = ""})

vim.diagnostic.config({
  virtual_text = false,
  severity_sort = true,
  float = {
    border = "rounded",
    source = "always",
    header = "",
    prefix = "",
  },
})

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
  vim.lsp.handlers.hover,
  {border = "single", title = "hover"}
)

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
  vim.lsp.handlers.signature_help,
  {border = "single"}
)
