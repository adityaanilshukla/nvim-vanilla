-- File: ~/.config/nvim/lua/plugins/vimtex.lua

-- Vimtex configuration
vim.g.vimtex_view_method = 'zathura'
vim.g.vimtex_compiler_method = 'latexmk'

-- Additional configurations
vim.g.vimtex_quickfix_mode = 0
vim.g.vimtex_syntax_enabled = 1
vim.g.vimtex_fold_enabled = 1

-- Define custom mappings if needed
vim.cmd [[
  augroup vimtex_event_handlers
    autocmd!
    autocmd FileType tex nmap <buffer> <leader>lv :VimtexView<CR>
    autocmd FileType tex nmap <buffer> <leader>lc :VimtexCompile<CR>
    autocmd FileType tex nmap <buffer> <leader>le :VimtexErrors<CR>
  augroup END
]]

-- VimTeX compile 
vim.api.nvim_set_keymap('n', '<leader>v', ':VimtexCompile<CR>', { noremap = true, silent = true, desc = 'Vimtex Compile Doc' })
