local group = vim.api.nvim_create_augroup('user_cnds', { clear = true })

vim.api.nvim_create_autocmd('FileType', {
	pattern = { 'help', 'man'},
	group = group,
	command = 'nnoremap <buffer> q <cmd>quit<cr>'
})

