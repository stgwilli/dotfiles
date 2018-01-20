" Steven Williams
"
set nocompatible            " enabled vim features instead of strict vi compatibility

" set leader to comma
let mapleader = ","

" COLORS AND FONT
" {
	syntax enable           " enable syntax highlighting
	colorscheme badwolf
	set termguicolors
    set t_Co=256            " use 256 at the terminal
    syntax sync fromstart   " sync syntax highlighting from the start of the file
    filetype on             " try to detect file type
    
" }



" MISC
" {
    set nobackup        " do not make backup~ files
    set nowritebackup
    set visualbell      " flash screen on bell
    set ttyfast         " assume fast connection
    set encoding=utf-8  " set character encoding to UTF-8
    set mousehide       " turn off mouse pointer when typing
    set mouse=c         " put mouse in command-line mode

    " ,w to save
    nmap <leader>w :w!<cr>
" }



" SPACES AND TABS
" {
	set tabstop=4     "4 space tab
	set expandtab 	  "use spaces for tabs
	set softtabstop=4 "4 space tab
	set shiftwidth=4
	set modelines=1
	filetype indent on
	filetype plugin on
	set autoindent
" }



" UI LAYOUT
" {
    set number          " show line numbers
    set showcmd         " show command bar
    set wildmenu        " use pop-up menu
    set lazyredraw      " dont redraw during macros
    set ruler           " show ruler
    set showmatch       " highlight matching brackets and parens
    " set fillchars+=vert:|
    set nowrap          " don't wrap lines
    " set showmode        " show mode in last line
    set scrolloff=3     " show 3 lines above or below cursor when scrolling
    set laststatus=2    " every window gets a status line
    set ch=1            " make command line one line high
" }



" SEARCHING
" {
    set ignorecase      " ignore case when searching
    set incsearch       " search as characters are typed
    set hlsearch        " highlight all matches

    " clear search when pressing <esc>
    nnoremap <leader>/ :nohlsearch <cr>

    vnoremap <silent> * :VisualSearch('f')<cr>
    vnoremap <silent> # :VisualSearch('b')<cr>
" }

" FOLDING
" {
    set foldmethod=indent   " fold based on indent
    set foldnestmax=10      " limit to 10 nested folders
    set foldenable          " enable folding
    set foldlevelstart=10   " open most folds
    
    " toggle current fold
    nnoremap <space> za
" }



" TABS AND BUFFERS
" {
    " Control J => move to bottom buffer
    map <C-j> <C-W>j

    " Control k => move to top buffer
    map <C-k> <C-W>k

    " Control h => move to left buffer
    map <C-h> <C-W>h

    " Control l => move to right buffer
    map <C-l> <C-W>l

    " right arrow to next buffer
    map <right> :bn<cr>

    " left arrow to previous buffer
    map <left> :bp<cr>
" }


" PLUGINS
" {
    call plug#begin()
        Plug 'kien/ctrlp.vim'
        Plug 'scrooloose/syntastic'
        Plug 'scrooloose/nerdtree'
        Plug 'tpope/vim-fugitive'
        Plug 'bling/vim-airline'
        Plug 'pangloss/vim-javascript'
        Plug 'mattn/emmet-vim'
        Plug 'moll/vim-node'
        Plug 'vim-airline/vim-airline-themes'
    call plug#end()
" }


" NERDTree
" {
    nnoremap <leader>n :NERDTree .<cr>
    nnoremap <leader>m :NERDTreeFind .<cr>
" }

" Syntastic
" {
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*

    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0
" }


" EMMET
" {
    let g:user_emmet_mode='a'    "enable all function in all mode.
    let g:user_emmet_install_global = 0
    autocmd FileType html,css EmmetInstall
" }


" AIRLINE
" {
    let g:airline_theme = 'badwolf'
    let g:airline_powerline_fonts = 1
" }
