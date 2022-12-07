local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
  return
end

treesitter.setup({
  highlight = {
    enable = true,
    disable = { "css"}
  },
  indent = { enable = true },
  autotag = { enable = true },
  ensure_installed = {
    "lua",
    "vim",
  },
  -- auto install above language parsers
  auto_install = true,

})
