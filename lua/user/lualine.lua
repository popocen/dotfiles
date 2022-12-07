local lualine_status, lualine = pcall(require, "lualine")

if not lualine_status then
	return
end

lualine.setup({
  options = {
    icons_enabled = false,
    theme = 'auto',
    component_separators = '|',
    section_separators = '',
  },
})

