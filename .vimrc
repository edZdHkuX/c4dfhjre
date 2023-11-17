if !&compatible
  set nocompatible
endif

augroup MyAutoCmd
  autocmd!
augroup END

let s:cache_home = empty($XDG_CACHE_HOME) ? expand('~/.cache') : $XDG_CACHE_HOME
let s:dein_dir = s:cache_home . '/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if !isdirectory(s:dein_repo_dir)
  call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
  if v:version == 704
    call system('cd ' . s:dein_repo_dir . ' && git checkout -b 1.5 1.5')
  endif
endif

let &runtimepath = &runtimepath . ',' . s:dein_repo_dir
let g:dein#install_process_timeout =  600

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  let s:toml_file = fnamemodify(expand('<sfile>'), ':h') . '/dein.toml'
  call dein#load_toml(s:toml_file)
  call dein#end()
  call dein#save_state()
endif

if has('vim_starting') && dein#check_install()
  call dein#install()
endif

set ttyfast
set nobackup
set noswapfile
set autoread
set paste

hi clear Normal
set t_Co=256
syntax enable
hi LineNr ctermfg=236 ctermbg=darkgray
set background=dark
" hi LineNr ctermfg=darkgrey ctermbg=16
" set cursorline
" hi CursorLine cterm=reverse ctermbg=16
" set cursorcolumn
" hi CursorColumn cterm=reverse ctermbg=16
hi DiffAdd    cterm=bold ctermbg=18
hi DiffDelete cterm=bold ctermbg=88
hi DiffChange cterm=bold ctermbg=22
hi DiffText   cterm=bold ctermfg=220 ctermbg=34
set diffopt=iwhite
if has('termguicolors')
  set termguicolors
endif

set number
set relativenumber
set smartindent
set cindent
set showmatch
set laststatus=2
set autoindent

set list listchars=tab:\▸\-
set tabstop=2
set shiftwidth=2
set expandtab

set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch

nnoremap * *``
