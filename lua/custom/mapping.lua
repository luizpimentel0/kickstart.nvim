local nmap = function(key, effect, desc)
  vim.keymap.set('n', key, effect, { silent = true, noremap = true, desc = desc })
end

local vmap = function(key, effect, desc)
  vim.keymap.set('v', key, effect, { silent = true, noremap = true, desc = desc })
end

local imap = function(key, effect, desc)
  vim.keymap.set('i', key, effect, { silent = true, noremap = true, desc = desc })
end

local tmap = function(key, effect)
  vim.keymap.set('t', key, effect, { buffer = 0 })
end

-- Custom maps
nmap('<leader>e', '<cmd>:NvimTreeToggle:<cr>', 'Toggle NERDTree')
nmap('<C-s>', '<cmd>:w<cr>', 'Save file')
imap('<C-s>', '<cmd>:w<cr><esc>', 'Save file and go to normal mode')

imap('jk', '<esc>', 'Exit insert mode')
imap('kj', '<esc>', 'Exit insert mode')
imap('<Enter>', '<Enter>zz', 'break row and center')

nmap('<s-l>', '<cmd>:bnext<cr>','Next buffer')
nmap('<s-h>', '<cmd>:bprev<cr>','Previous buffer')
nmap('<leader>c', '<cmd>:bdelete<cr>', 'Close current buffer')
nmap('<leader>cc', '<cmd>:%bd|e#<cr>', 'Close all buffers except current')
nmap('<c-h>', '<c-w>h><esc>', 'Move to left window')
nmap('<c-l>', '<c-w>l><esc>', 'Move to right window')
nmap('<c-j>', '<c-w>j><esc>', 'Move to top window')
nmap('<c-k>', '<c-w>k><esc>', 'Move to bottom window')

-- nmap('<C-d>', '<C-d>zz', '')
-- nmap('<C-u>', '<C-u>zz', '')

-- LazyGit
nmap('<leader>gg', ':LazyGit<cr>', 'Open LazyGit')

-- live server
nmap('<A-s>', '<cmd>:LiveServerStart<cr>', 'start the live server')
nmap('<A-so>', '<cmd>:LiveServerStop<cr>', 'stop the live server')

-- Terminal config
nmap("<leader>tf", "<cmd>ToggleTerm direction=float<cr>", "Open terminal on float mode")
nmap("<leader>th", "<cmd>ToggleTerm direction=horizontal size=10 <cr>", "Open terminal on horizontal split")
nmap("<leader>tv", "<cmd>ToggleTerm direction=vertical size=50<cr>", "Open terminal on vertical split")

function _G.set_terminal_keymaps()
  tmap('<esc>', [[<C-\><C-n>]])

  tmap('<C-h>', [[<Cmd>wincmd h<CR>]])
  tmap('<C-j>', [[<Cmd>wincmd j<CR>]])
  tmap('<C-k>', [[<Cmd>wincmd k<CR>]])
  tmap('<C-l>', [[<Cmd>wincmd l<CR>]])
  tmap('<C-w>', [[<C-\><C-n><C-w>]])
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
