vim.g.cornelis_use_global_binary = 1
vim.g.cornelis_no_agda_input = 1

require('lean.abbreviations').enable('*.agda', {
	extra = {
		['n=='] = '≢',
		['.b'] = '∙',
	},
})

local group = vim.api.nvim_create_augroup('WilliamSAgda', {
	clear = true,
})

local onFileAttach = function()
	local nore = { noremap = true }
	vim.api.nvim_set_keymap('n', '<leader>l', '<cmd>CornelisLoad<CR>', nore)
	vim.api.nvim_set_keymap('n', '<leader>r', '<cmd>CornelisRefine<CR>', nore)
	vim.api.nvim_set_keymap('n', '<leader>d', '<cmd>CornelisMakeCase<CR>', nore)
	vim.api.nvim_set_keymap(
		'n',
		'<leader>,',
		'<cmd>CornelisTypeContext<CR>',
		nore
	)
	vim.api.nvim_set_keymap(
		'n',
		'<leader>.',
		'<cmd>CornelisTypeContextInfer<CR>',
		nore
	)
	vim.api.nvim_set_keymap('n', '<leader>n', '<cmd>CornelisSolve<CR>', nore)
	vim.api.nvim_set_keymap('n', '<leader>a', '<cmd>CornelisAuto<CR>', nore)
	vim.api.nvim_set_keymap('n', 'gd', '<cmd>CornelisGoToDefinition<CR>', nore)
	vim.api.nvim_set_keymap('n', 'ga,', '<cmd>CornelisPrevGoal<CR>f!l', nore)
	vim.api.nvim_set_keymap('n', 'ga.', '<cmd>CornelisNextGoal<CR>f!l', nore)
	vim.api.nvim_set_keymap('n', '<C-A>', '<cmd>CornelisInc<CR>', nore)
	vim.api.nvim_set_keymap('n', '<C-X>', '<cmd>CornelisDec<CR>', nore)

	vim.api.nvim_set_keymap(
		'n',
		'K',
		'<cmd>CornelisTypeInfer<CR><cword><CR>',
		nore
	)

	vim.api.nvim_set_keymap('i', '<C-G>', '{!  !}<esc>hhi', {})
end

vim.api.nvim_create_autocmd(
	{ 'BufRead', 'BufNewFile' },
	{ pattern = '*.agda', group = group, callback = onFileAttach }
)

vim.api.nvim_create_autocmd('QuitPre', {
	pattern = '*.agda',
	group = group,
	command = '<cmd>CornelisCloseInfoWindows<CR>',
})
