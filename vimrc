
" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2008 Dec 17
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set fileformat=unix
set cursorline
set hidden

" Vundle
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#begin() 

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" plugins
Plugin 'kien/ctrlp.vim' " fuzzy find files
Plugin 'scrooloose/nerdtree' " file drawer, open with :NERDTreeToggle
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'benmills/vimux'
Plugin 'terryma/vim-expand-region'
Plugin 'sickill/vim-pasta'
Plugin 'mtth/scratch.vim'
Plugin 'junegunn/goyo.vim'
" Plugin 'SirVer/ultisnips'
" Plugin 'honza/vim-snippets'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" allow backspacing over everything in insert mode
set backspace=indent,eol,start

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file
endif
set history=50		" keep 50 lines of command line history
" set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set number
set ignorecase
set smartcase

"For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

let g:kolor_italic=1                    " Enable italic. Default: 1
let g:kolor_bold=1                      " Enable bold. Default: 1
let g:kolor_underlined=0                " Enable underline. Default: 0
let g:kolor_alternative_matchparen=0    " Gray 'MatchParen' color. Default: 0

set virtualedit=all
set scrolloff=8
set pastetoggle=<F2>
set relativenumber
set wrap linebreak nolist

nnoremap J 2<C-e>
nnoremap K 2<C-y>
nnoremap <C-e> 2<C-e>
nnoremap <C-f> 2<C-y>
nnoremap j gj
nnoremap k gk
noremap ;; ;

map ; :
map S :w<CR>

map <Space> <leader>
nmap <silent> <leader><space> :nohlsearch<CR>
vnoremap <silent> y y`]
nnoremap gp '[v']
" vnoremap <silent> p p`];
" nnoremap <leader>v V`]
" nnoremap Y "+yy
" nnoremap yy "+yy
vnoremap y "+y
nnoremap <leader>p mz"+p'zX
nnoremap <c-o> o<Esc>k
nnoremap gO O<Esc>
nnoremap g{ {dap}p{
" nnoremap gl ddp
" nnoremap gL ddkP
nnoremap <leader>1 :b1<CR>
nnoremap <leader>2 :b2<CR>
nnoremap <leader>3 :b3<CR>
nnoremap <leader>4 :b4<CR>
nnoremap <leader>5 :b5<CR>
nnoremap <leader>e :b#<CR>
nnoremap <leader>E :e 
nnoremap <leader>w <C-w>w<CR>
imap <C-w> <C-o><C-w>
nnoremap C cc
nnoremap <C-h> <C-w>h<CR>
nnoremap <C-j> <C-w>j<CR>
nnoremap <C-k> <C-w>k<CR>
nnoremap <C-l> <C-w>l<CR>
nmap cn :cn<CR>
nmap cp :cp<CR>
nmap cl :cl<CR>
nmap cz :cw<CR>
nmap co :cclose<CR>
nmap T :make<CR><CR>cz 
nmap <leader>q :wq<cr>
imap <c-u> <Esc>u
nmap <leader>' ysi)"
nmap cc cL



set gdefault
set breakindent
set showbreak=...\ \ \ \  
set splitbelow
set splitright

au FocusLost * :wa
let g:auto_save = 1
let g:auto_save_silent = 1

colorscheme tomorrow-night
set background=dark
hi CursorLineNr ctermfg=Black

execute pathogen#infect()

imap ;so System.out.println();<left><left>

nmap " gcc
vmap " gc

noremap H ^
noremap L $
inoremap <c-f> <c-x><c-f>
inoremap <c-l> <c-x><c-l>

nnoremap zl :let @z=@"<cr>x$p:let @"=@z<cr>
nmap <leader>; A;<Esc>



" Tab completion
" will insert tab at beginning of line,
" will use completion if not at beginning
set wildmode=list:longest,list:full
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction

inoremap <Tab> <c-r>=InsertTabWrapper()<cr>

set wildignore+=*.class,*.sw?,*~

nnoremap <silent> <c-s-Left> :vertical resize +50<cr>
nnoremap <silent> <c-s-Right> :vertical resize -50<cr>
nnoremap <silent> <c-c-s-Down> :resize +50<cr>
nnoremap <silent> <c-s-Up> :resize -50<cr>
nnoremap <silent> <leader>s :110vsplit<cr>
nnoremap <silent> <Left> :vertical resize +5<cr>
nnoremap <silent> <Right> :vertical resize -5<cr>
nnoremap <silent> <Down> :resize +5<cr>
nnoremap <silent> <Up> :resize -5<cr>

autocmd FileType * setlocal formatoptions-=r formatoptions-=o

augroup cline
    au!
    au WinLeave,InsertEnter * set nocursorline
    au WinEnter,InsertLeave * set cursorline
augroup END


set backup                        " enable backups
set noswapfile                    " no swap files

set undodir=~/.vim/tmp/undo//     " undo files
set backupdir=~/.vim/tmp/backup// " backups
set directory=~/.vim/tmp/swap//   " swap files

" Make those folders automatically if they don't already exist.
if !isdirectory(expand(&undodir))
    call mkdir(expand(&undodir), "p")
endif
if !isdirectory(expand(&backupdir))
    call mkdir(expand(&backupdir), "p")
endif
if !isdirectory(expand(&directory))
    call mkdir(expand(&directory), "p")
endif

noremap ' `
nnoremap <c-d> :%s/


" close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=0
" Toggle NERDTree
nmap <silent> <leader>k :NERDTreeToggle<cr>
" expand to the path of the file in the current buffer
nmap <silent> <c-k> :NERDTreeFind<cr>

" map fuzzyfinder (CtrlP) plugin
" nmap <silent> <leader>t :CtrlP<cr>
nmap <silent> <leader>r :CtrlPBuffer<cr>;
let g:ctrlp_map='<c-t>'
let g:ctrlp_dotfiles=1
let g:ctrlp_working_path_mode = 'ra'

" CtrlP ignore patterns
let g:ctrlp_custom_ignore = {
            \ 'dir': '\.git$\|node_modules$\|\.hg$\|\.svn$',
            \ 'file': '\.exe$\|\.so$\|.class$'
            \ }

let g:tmux_navigator_save_on_switch = 1

" Vimux
map <Leader>i :VimuxPromptCommand("clear; ")<CR>
map <Leader>l :VimuxRunLastCommand<CR>
map <Leader>o :VimuxCloseRunner<CR>
map <Leader>0 :VimuxRunCommand("clear")<CR>

let g:VimuxOrientation = "h"

" vim-expand-region
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)


nnoremap <C-W>O :call MaximizeToggle()<CR>
nnoremap <C-W>o :call MaximizeToggle()<CR>
nnoremap <C-W><C-O> :call MaximizeToggle()<CR>

function! MaximizeToggle()
  if exists("s:maximize_session")
    exec "source " . s:maximize_session
    call delete(s:maximize_session)
    unlet s:maximize_session
    let &hidden=s:maximize_hidden_save
    unlet s:maximize_hidden_save
    hi CursorLineNr ctermfg=Black
  else
    let s:maximize_hidden_save = &hidden
    let s:maximize_session = tempname()
    set hidden
    exec "mksession! " . s:maximize_session
    only
    hi CursorLineNr ctermfg=Black
  endif
endfunction


" edit and source .vimrc
nmap <leader>r :edit $MYVIMRC<cr>
nmap <leader>R :so $MYVIMRC<cr>

" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"






