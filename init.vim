" Pluggins
call plug#begin('~/.vim/plugged') 

" Plebvim lsp Plugins
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'tjdevries/nlua.nvim'
Plug 'tjdevries/lsp_extensions.nvim'

" Telescope requirements 
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Neovim tree shitter 
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

" Color schemes 
Plug 'colepeters/spacemacs-theme.vim'
Plug 'sainnhe/gruvbox-material'
Plug 'phanviet/vim-monokai-pro'
Plug 'flazz/vim-colorschemes'
Plug 'chriskempson/base16-vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'lifepillar/vim-solarized8'

" Airline 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" Color scheme 
let g:solarized_termcolors=256

"------------    Airline theme    -------------
" Set the font to powerline
let g:airline_powerline_fonts=1
"----------------------------------------------


"--------------    Lua    -------------------
" Define the lua requirement 
" lua require("juandiego") 
lua require'lspconfig'.tsserver.setup{ on_attach=require'completion'.on_attach }
lua require'lspconfig'.pyls.setup{ on_attach=require'completion'.on_attach }


"------------------    Remaps    ---------------
" Leader key set
let mapleader = " "

" Telescope remaps 
nnoremap <leader>tff <cmd>Telescope find_files<cr>
nnoremap <leader>tfg <cmd>Telescope live_grep<cr>
nnoremap <leader>tfb <cmd>Telescope buffers<cr>
nnoremap <leader>tfh <cmd>Telescope help_tags<cr>

" Remap to source the init.vim file
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>
