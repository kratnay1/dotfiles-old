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
" Plugin 'scrooloose/nerdtree' " file drawer, open with :NERDTreeToggle
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'chriskempson/base16-vim'
Plugin 'benmills/vimux'
Plugin 'sickill/vim-pasta'
Plugin 'mtth/scratch.vim'
Plugin 'junegunn/goyo.vim'
" Plugin 'rstacruz/vim-closer'
Plugin 'SirVer/ultisnips'
" Plugin 'honza/vim-snippets'
Plugin 'ervandew/supertab'
Plugin 'gorkunov/smartpairs.vim'
Plugin 'vim-scripts/TeX-PDF'
Plugin 'tacahiroy/ctrlp-funky'



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
set laststatus=2
set cmdheight=2

"For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q @q

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
set lazyredraw
set wrap linebreak nolist


nnoremap J 8<C-e>
nnoremap K 8<C-y>
" nnoremap J 15gj
" nnoremap K 15gk
" nnoremap <C-f> 3<C-y>
nnoremap j gj
nnoremap k gk
noremap S :w<CR>
" nnoremap <esc><esc> s
noremap s ;

nnoremap ; :

map <Space> <leader>
let hlstate=0
nmap <silent> <leader><space> :nohlsearch<CR>
nmap <silent> <leader>9 :set hlsearch<CR>
vnoremap <silent> y y`]
nnoremap gp '[v']
" vnoremap <silent> p p`];
" nnoremap <leader>v V`]
" nnoremap Y "+yy
" nnoremap yy "+yy
vnoremap y "+y
nnoremap <leader>p mz"+p'zX
nnoremap <c-o> o<Esc>k
nnoremap go O<Esc>j
nnoremap g{ {dap}p{
" nnoremap gl ddp
" nnoremap gL ddkP
nnoremap <leader>1 :b1<CR>
nnoremap <leader>2 :b2<CR>
nnoremap <leader>3 :b3<CR>
nnoremap <leader>4 :b4<CR>
nnoremap <leader>5 :b5<CR>
nnoremap <leader>e :b#<CR>
nnoremap <C-e> :e 
nnoremap <leader>no :e ~/Tests/.pl/notes.txt<CR>
" nnoremap <leader>w <C-w>w<CR>
map <Leader>f mmgg=G`m
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
nmap T :make<CR><CR>cz<Esc> 
nmap <leader>q :wq<cr>
imap <c-u> <Esc>u
nmap <leader>' ysi)"
nmap cc cL
nnoremap <c-i> <c-u>
nnoremap n nzz
nnoremap N Nzz
nnoremap G Gzz
nnoremap } }zz
nnoremap { {zz
"quick pairs
imap ;' ''<ESC>i
imap ;; ""<ESC>i
imap ;( ()<ESC>i
imap ;[ []<ESC>i
"visual mode
vmap aa VGo1G
" nnoremap D <c-i>

set gdefault
set breakindent
set showbreak=..\ \ 
set splitbelow
set splitright

au FocusLost * :wa
let g:auto_save = 1
let g:auto_save_silent = 1

let base16colorspace=256  " Access colors present in 256 colorspace
colorscheme tomorrow-night

execute pathogen#infect()

imap ;so System.out.println();<left><left>

nmap ? gcc
vmap ? gc

noremap H ^
noremap L $
inoremap <c-f> <c-x><c-f>
inoremap <c-l> <c-x><c-l>

nnoremap zl :let @z=@"<cr>x$p:let @"=@z<cr>
nmap <leader>; A;<Esc>



" Tab completion
" will insert tab at beginning of line,
" will use completion if not at beginning
" set wildmode=list:longest,list:full
" function! InsertTabWrapper()
"     let col = col('.') - 1
"     if !col || getline('.')[col - 1] !~ '\k'
"         return "\<tab>"
"     else
"         return "\<c-p>"
"     endif
" endfunction

" inoremap <Tab> <c-r>=InsertTabWrapper()<cr>

set wildignore+=*.class,*.sw?,*~

nnoremap <silent> <leader>s :110vsplit<cr>
nnoremap <silent> <leader>S :split<cr>
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
nnoremap <c-p> :
nnoremap <c-s> :%s/


" close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=0
" Toggle NERDTree
" nmap <silent> <leader>t :NERDTreeToggle<cr>
" expand to the path of the file in the current buffer
" nmap <silent> <c-i> :NERDTreeFind<cr>

" map fuzzyfinder (CtrlP) plugin
" nmap <silent> <leader>t :CtrlP<cr>
nmap <silent> <leader>t :CtrlPBuffer<cr>
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


" nnoremap <C-W>O :call MaximizeToggle()<CR>
" nnoremap <C-W>o :call MaximizeToggle()<CR>
" nnoremap <C-W><C-O> :call MaximizeToggle()<CR>

" function! MaximizeToggle()
"     if exists("s:maximize_session")
"         exec "source " . s:maximize_session
"         call delete(s:maximize_session)
"         unlet s:maximize_session
"         let &hidden=s:maximize_hidden_save
"         unlet s:maximize_hidden_save
"         hi CursorLineNr ctermfg=Black
"     else
"         let s:maximize_hidden_save = &hidden
"         let s:maximize_session = tempname()
"         set hidden
"         exec "mksession! " . s:maximize_session
"         only
"         hi CursorLineNr ctermfg=Black
"     endif
" endfunction


" edit and source .vimrc
nmap <leader>r :edit $MYVIMRC<cr>
nmap <leader>R :so $MYVIMRC<cr><leader><space>

" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

nmap <Leader>u :UltiSnipsEdit<cr>
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<cr>"
" let g:UltiSnipsJumpBackwardTrigger="<s-cr>"

autocmd! FileType c,cpp,java,php call CSyntaxAfter()


set noesckeys
set ttimeout
set ttimeoutlen=1

set timeoutlen=500

hi MatchParen cterm=none ctermbg=black ctermfg=yellow

function! RenameFile()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'), 'file')
    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        exec ':silent !rm ' . old_name
        redraw!
    endif
endfunction
" map <Leader>n :call RenameFile()<cr>

" Better? completion on command line
set wildmenu
" What to do when I press 'wildchar'. Worth tweaking to see what feels right.
set wildmode=list:full


" highlight clear SignColumn
" highlight VertSplit    ctermbg=236
" highlight ColorColumn  ctermbg=237
highlight LineNr       ctermbg=236 ctermfg=243
" highlight CursorLineNr ctermbg=236 ctermfg=240
" highlight CursorLine   ctermbg=236
highlight VertSplit ctermfg=238 ctermbg=238
highlight StatusLineNC ctermfg=238
highlight StatusLine   ctermfg=238
highlight IncSearch    ctermbg=3   ctermfg=1
" highlight Search       ctermbg=1   ctermfg=3
" highlight Visual       ctermbg=3   ctermfg=0
" highlight Pmenu        ctermbg=240 ctermfg=12
" highlight PmenuSel     ctermbg=3   ctermfg=1
" highlight SpellBad     ctermbg=0   ctermfg=1


" map . in visual mode
vnoremap . :norm.<cr>


" set statusline=%<%F%m%r%h%w%y\ %{&ff}\ %{strftime(\"%d/%m/%Y-%H:%M\")}%=\ col:%c%V\ ascii:%b\ pos:%o\ lin:%l\,%L\ %P

" set statusline=%F
" hi statusline ctermbg=182


" LaTeX macros for compiling and viewing
augroup latex_macros " {
    autocmd!
    autocmd FileType tex :nnoremap <leader>c :w<CR>:!rubber --pdf --warn all %<CR>
    autocmd FileType tex :nnoremap <leader>v :!mupdf-gl %:r.pdf &<CR><CR>
augroup END " }


if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

 
" Store relative line number jumps in the jumplist if they exceed a threshold.
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : '') . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : '') . 'j'





