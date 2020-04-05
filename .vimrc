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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle
set nocompatible
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin() 
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" plugins
Plugin 'kien/ctrlp.vim' " fuzzy find files
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'sickill/vim-pasta'
Plugin 'simnalamburt/vim-mundo'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'tmhedberg/SimpylFold'
Plugin 'heavenshell/vim-pydocstring'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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
" set shellcmdflag=-ic
let $BASH_ENV = "~/.bash_aliases"


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
    let g:syntax_cmd = "skip"
    set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

    " Enable file type detection.
    " Use the default filetype settings, so that mail gets 'tw' set to 72,
    " 'cindent' is on in C files, etc.
    " Also load indent files, to automatically do language-dependent indenting.
    " filetype plugin indent on

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


set virtualedit=all
set scrolloff=8
set pastetoggle=<F2>
set relativenumber
set lazyredraw
set wrap linebreak nolist


nnoremap D 5<C-e>
nnoremap U 5<C-y>
nnoremap <C-D> 8<C-e>8gj
nnoremap <C-i> 8<C-y>8gk
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
nmap <silent> <leader>8 :set hlsearch<CR>
nmap <silent> <C-w> :b#<CR>
vnoremap <silent> y y`]
nnoremap gp '[v']
vnoremap y "+y
nnoremap <leader>p mz"+p'zX
nnoremap <c-o> o<Esc>k
nnoremap go O<Esc>j
nnoremap g{ {dap}p{
nnoremap gp `[v`]
nnoremap <leader>1 :b1<CR>
nnoremap <leader>2 :b2<CR>
nnoremap <leader>3 :b3<CR>
nnoremap <leader>4 :b4<CR>
nnoremap <leader>5 :b5<CR>
nnoremap <C-e> <c-o>
nnoremap <C-f> <c-i>
nnoremap <leader>no :e ~/tests/.pl/notes.txt<CR>
nnoremap <silent> <F2> :set rnu! <bar> set nu!<CR>
map <Leader>- mmgg=G`m;
nnoremap C cc
nnoremap <leader>l <C-w>l<CR>
nnoremap <leader>h <C-w>h<CR>
nnoremap <leader>t :!ts 
" nnoremap <leader>j <C-w>j<CR>
" nnoremap <leader>k <C-w>k<CR>
nmap cn :cn<CR>
nmap cp :cp<CR>
nmap cl :cl<CR>
nmap cz :cw<CR>
nmap co :cclose<CR>
nmap <leader>q :wq<cr>
imap <c-u> <Esc>u
nmap <leader>' ysi)"
nmap cc cL
nnoremap n nzz
nnoremap N Nzz
nnoremap G Gzz
nnoremap } }zz
nnoremap { {zz
"quick pairs
imap ;' ''<ESC>i
imap ;; ""<ESC>i
imap ;b ()<ESC>i
imap ;B []<ESC>i
imap ;fn <c-r>=expand('%:t:r')<cr>



set gdefault
set breakindent
set showbreak=..\ \ 

au FocusLost * :wa
let g:auto_save = 1
let g:auto_save_silent = 1

colorscheme tomorrow-night


imap ;so System.out.println();<left><left>
imap ;wo writer.out.println();<left><left>

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

nnoremap <silent> <leader>s :80vsplit<cr>
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


" map fuzzyfinder (CtrlP) plugin
nmap <silent> <C-q> :CtrlPBuffer<cr>
nnoremap <leader>f :CtrlPFunky<cr>
nnoremap <Leader># :execute 'CtrlPFunky ' . expand('<cword>')<cr>

let g:ctrlp_map='<leader>e'
let g:ctrlp_dotfiles=1
let g:ctrlp_working_path_mode = 'ra'

" CtrlP ignore patterns
let g:ctrlp_custom_ignore = {
            \ 'dir': '\.git$\|node_modules$\|\.hg$\|\.svn$',
            \ 'file': '\.exe$\|\.so$\|.class$'
            \ }


let g:tmux_navigator_save_on_switch = 1
nmap <C-j> zj
nmap <C-k> zk

let s:toggle_state = 1
command! TM call MapKeys()

function! MapKeys()
    if s:toggle_state
        let g:tmux_navigator_no_mappings = 1
        nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
        nmap <silent> <C-j> :TmuxNavigateDown<cr>
        nmap <silent> <C-k> :TmuxNavigateUp<cr>
        nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
        nnoremap <silent> <c-\> :TmuxNavigatePrevious<cr>
    else
        nmap <C-j> zj
        nmap <C-k> zk
    endif
    let s:toggle_state = !s:toggle_state
endfunction

nmap <leader>j :TM<cr>


" edit and source .vimrc
nmap <leader>v :edit $MYVIMRC<cr>
nmap <leader>V :so $MYVIMRC<cr><leader><space>
nmap <leader>br :edit ~/.bashrc<cr>
nmap <leader>ba :edit ~/.bash_aliases<cr>

" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv


let g:SuperTabDefaultCompletionType = '<C-n>'
" " nmap <Leader>u :UltiSnipsEdit<cr>
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<tab>"
" let g:UltiSnipsJumpBackwardTrigger="<s-tab>"



set noesckeys
set ttimeout
set ttimeoutlen=100


function! RenameFile()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'), 'file')
    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        exec ':silent !rm ' . old_name
        redraw!
    endif
endfunction
map <Leader>n :call RenameFile()<cr>

" Better? completion on command line
set wildmenu
" What to do when I press 'wildchar'. Worth tweaking to see what feels right.
set wildmode=list:full


" map . in visual mode
vnoremap . :norm.<cr>


" LaTeX macros for compiling and viewing
augroup latex_macros " {
    autocmd!
    autocmd FileType tex :set showbreak=\ \ \ 
    autocmd FileType tex :nnoremap <leader>c :w<CR>:!rubber --pdf --warn all %<CR><CR>
    autocmd FileType tex :nnoremap <leader>v :!evince %:r.pdf &<CR><CR>
    autocmd FileType tex :nnoremap <C-m> :!touch main.tex<CR> :make<CR><CR><C-e>
augroup END " }

if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" Store relative line number jumps in the jumplist if they exceed a threshold.
nnoremap <expr> k (v:count > 8 ? "m'" . v:count : '') . 'gk'
nnoremap <expr> j (v:count > 8 ? "m'" . v:count : '') . 'gj'


" set clipboard=unnamed
set clipboard=exclude:.*


set tags=tags

" folding
set foldlevelstart=0
set foldcolumn=3
nnoremap T za
vnoremap T za
nnoremap <c-t> za
vnoremap <c-t> za
nnoremap <return> za
nnoremap <s-return> za
nnoremap <c-return> za
nnoremap J zj
nnoremap K zk
nnoremap <leader>z zMzvzz
nnoremap zO zCzO
nnoremap <leader>o zo
nnoremap <leader>O zCzO
" nnoremap <leader>c zc
" nnoremap <leader>C zC
nnoremap <leader>r zr
nnoremap <leader>R zR
nnoremap <leader>m zm
nnoremap <leader>M zM
nnoremap <leader>9 :set foldcolumn=3<cr>
nnoremap <leader>0 :set foldcolumn=0<cr>

" Mundo
nnoremap <leader>u :MundoToggle<CR>
let g:mundo_preview_height = 20
let g:mundo_right = 1

set fillchars=vert:┃
set fillchars+=fold:·

" set statusline=%F
set statusline=%f\ %h%w%m%r\ %=%(%l\ \ \ \ \ %=\ %P%)


" function! NeatFoldText()
"     let line = ' ' . substitute(getline(v:foldstart), '^\s*"\?\s*\|\s*"\?\s*{{' . '{\d*\s*', '', 'g') . ' '
"     let lines_count = v:foldend - v:foldstart + 1
"     let lines_count_text = ' ' . printf("%3s", lines_count . ' ') . ''
"     let lines_count_text = ' '
"     let foldchar = matchstr(&fillchars, 'fold:\zs.')
"     let foldtextstart = strpart('' . repeat(foldchar, v:foldlevel*2) . line, 0, (winwidth(0)*2)/3)
"     let foldtextend = lines_count_text . repeat(foldchar, 8)
"     let foldtextlength = strlen(substitute(foldtextstart . foldtextend, '.', 'x', 'g')) + &foldcolumn
"     return foldtextstart . repeat(foldchar, winwidth(0)-foldtextlength) . foldtextend
" endfunction

function! MyFoldText() 
    let line = getline(v:foldstart)

    let nucolwidth = &fdc + &number * &numberwidth
    let windowwidth = winwidth(0) - nucolwidth - 3
    let foldedlinecount = v:foldend - v:foldstart 

    let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
    let fillcharcount = windowwidth - len(line) - len(foldedlinecount)
    " return line . '…' . foldedlinecount  . repeat(" ",fillcharcount) . '…' . ' '
    let line = substitute(line, 'def', '', 'g')
    return '   ' . line . '…' . foldedlinecount . repeat("  ",fillcharcount) 
endfunction 


set foldtext=MyFoldText()
" set foldtext=NeatFoldText()

nmap <silent> <C-x> <Plug>(pydocstring)


