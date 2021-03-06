"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vundle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
"
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
"
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
"
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" colorscheme
Plugin 'Siphalor/vim-atomified'

" git wrapper - Ultimate
Plugin 'tpope/vim-fugitive'

" File Tree Explorer - Ultimate
Plugin 'scrooloose/nerdtree'

" Aligns text for you.
Plugin 'godlygeek/tabular'

" Comment stuff out - Ultimate
Plugin 'tpope/vim-commentary' 

" Parenthetical support
Plugin 'tpope/vim-surround'

" Syntax checking - Ultimate 
Plugin 'w0rp/ale'

" Code Completion
Plugin 'valloric/youcompleteme'

" Fuzzy file, buffer, mru, tag, etc finder - Ultimate
Plugin 'ctrlpvim/ctrlp.vim'

" Automatic endings
Plugin 'tpope/vim-endwise'

" extend you complete me for qmake ?
Plugin 'rdnetto/ycm-generator'

" more colors
Plugin 'jeaye/color_coded'

" header file guards
Plugin 'drmikehenry/vim-headerguard'

" autoclose parentheticals --OLD AND BUGGED
" Plugin 'Townk/vim-autoclose'

" c/cpp navigation commands
Plugin 'vim-scripts/a.vim'

" for cpp refactoring
" Plugin 'LucHermitte/lh-vim-lib'
" Plugin 'LucHermitte/lh-tags'
" Plugin 'LucHermitte/lh-dev'
" Plugin 'LucHermitte/lh-brackets'
" Plugin 'LucHermitte/vim-refactor'

" for clang-format usage
Plugin 'rhysd/vim-clang-format'

" for automated markdown bulleted lists
Plugin 'dkarter/bullets.vim'

" status bar stuff
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" color scheme
Plugin 'junegunn/seoul256.vim'
Plugin 'morhetz/gruvbox'
Plugin 'fneu/breezy'

" for a bitching toc generator for markdown
Plugin 'mzlogin/vim-markdown-toc'

" All of your Plugins must be added before the following line
call vundle#end()            " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Personal Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctrl s maps to save in all major views
noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>

" maps ctrl z to undo last action in insert mode
inoremap <silent> <C-Z>         <C-O>u
noremap <silent> <C-Z>          u
" maps ctrl x to redo last action in insert mode 
inoremap <silent> <C-X>       <C-O><C-R>

" makes space partition insert actions
inoremap <Space>               <C-]><Space><C-g>u

" abbreviation for highlighting in blog md post
inoreabbrev <buffer> teh the
inoreabbrev hh ****{:.highlighted}<C-O>16<Left>

" Everything below is adapted from:
" > https://github.com/amix/vimrc/
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" :W sudo saves the file
" (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set scrolloff=7

" Avoid garbled characters in Chinese language windows OS
let $LANG='en'
set langmenu=en
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" Turn on the Wild menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

"Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Properly disable sound on errors on MacVim
if has("gui_macvim")
    autocmd GUIEnter * set vb t_vb=
endif

" shows line numbers
set number

" show relative line numbers, when both number and relativenumber are enabled, hybrid line numbers are made
set relativenumber 

" will toggle relative numbers when switching between buffers
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" put cursor to mouse on click
set mouse=a


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

try
    colorscheme desert
catch
endtry

set background=dark

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines


""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
"vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
"vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close the current buffer
map <leader>bd :Bclose<cr>:tabclose<cr>gT

" Close all the buffers
map <leader>ba :bufdo bd<cr>

map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>t<leader> :tabnext

" Let 'tl' toggle between this and the last accessed tab
let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()


" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Specify the behavior when switching between buffers
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap VIM 0 to first non-blank character
map 0 ^

" Move a line of text using ALT+[jk] or Command+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
endif

" Delete trailing white space on save, useful for some filetypes ;)
fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

if has("autocmd")
    autocmd BufWritePre *.txt,*.js,*.py,*.wiki,*.sh,*.coffee :call CleanExtraSpaces()
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Quickly open a buffer for scribble
map <leader>q :e ~/buffer<cr>

" Quickly open a markdown buffer for scribble
map <leader>x :e ~/buffer.md<cr>

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Parenthesis/bracket
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vnoremap $1 <esc>`>a)<esc>`<i(<esc>
vnoremap $2 <esc>`>a]<esc>`<i[<esc>
vnoremap $3 <esc>`>a}<esc>`<i{<esc>
vnoremap $$ <esc>`>a"<esc>`<i"<esc>
vnoremap $q <esc>`>a'<esc>`<i'<esc>
vnoremap $e <esc>`>a"<esc>`<i"<esc>

" Map auto complete of (, ", ', [
inoremap $1 ()<esc>i
inoremap $2 []<esc>i
inoremap $3 {}<esc>i
inoremap $4 {<esc>o}<esc>O
inoremap $q ''<esc>i
inoremap $e ""<esc>i


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
    let l:currentBufNum = bufnr("%")
    let l:alternateBufNum = bufnr("#")

    if buflisted(l:alternateBufNum)
        buffer #
    else
        bnext
    endif

    if bufnr("%") == l:currentBufNum
        new
    endif

    if buflisted(l:currentBufNum)
        execute("bdelete! ".l:currentBufNum)
    endif
endfunction

function! CmdLine(str)
    call feedkeys(":" . a:str)
endfunction

function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", "\\/.*'$^~[]")
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'gv'
        call CmdLine("Ack '" . l:pattern . "' " )
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin Specific Settings
" =
" =
" =
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""
" => CTRL-P
""""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 0

let g:ctrlp_map = '<c-f>'
map <leader>j :CtrlP<cr>
map <c-b> :CtrlPBuffer<cr>

let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ale (syntax checker)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_linters = {
\   'javascript': ['jshint'],
\   'python': ['flake8'],
\   'go': ['go', 'golint', 'errcheck']
\}

nmap <silent> <leader>a <Plug>(ale_next_wrap)

" Disabling highlighting
let g:ale_set_highlights = 0

" Only run linting when saving the file
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => YouCompleteMe 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-clang-format 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:clang_format#code_style = 'llvm'
let g:clang_format#style_options = {
            \ "BasedOnStyle": "LLVM",
            \ "AlignAfterOpenBracket": "Align",
            \ "AlignConsecutiveAssignments": "true",
            \ "AlignConsecutiveDeclarations": "true",
            \ "AlignOperands": "true",
            \ "AlignTrailingComments": "true",
            \ "AllowAllParametersOfDeclarationOnNextLine": "false",
            \ "AllowShortBlocksOnASingleLine": "true",
            \ "AllowShortCaseLabelsOnASingleLine": "false",
            \ "AllowShortFunctionsOnASingleLine": "Inline",
            \ "AllowShortIfStatementsOnASingleLine": "true",
            \ "AllowShortLoopsOnASingleLine": "true",
            \ "AlwaysBreakAfterReturnType": "None",
            \ "AlwaysBreakBeforeMultilineStrings": "false",
            \ "AlwaysBreakTemplateDeclarations": "false",
            \ "BinPackArguments": "false",
            \ "BinPackParameters": "false",
            \ "BreakAfterJavaFieldAnnotations": "true",
            \ "BreakBeforeBinaryOperators": "NonAssignment",
            \ "BreakBeforeBraces": "Attach",
            \ "BreakBeforeTernaryOperators": "true",
            \ "BreakConstructorInitializers": "AfterColon",
            \ "BreakStringLiterals": "true",
            \ "ColumnLimit": 80,
            \ "CompactNamespaces": "false",
            \ "ConstructorInitializerAllOnOneLineOrOnePerLine": "true",
            \ "Cpp11BracedListStyle": "true",
            \ "DerivePointerAlignment": "false",
            \ "DisableFormat": "false",
            \ "FixNamespaceComments": "true",
            \ "IncludeBlocks": "Regroup",
            \ "IndentCaseLabels": "true",
            \ "IndentPPDirectives": "None",
            \ "IndentWidth": 4,
            \ "IndentWrappedFunctionNames": "false",
            \ "KeepEmptyLinesAtTheStartOfBlocks": "true",
            \ "Language": "Cpp",
            \ "MaxEmptyLinesToKeep": 2,
            \ "NamespaceIndentation": "None",
            \ "PointerAlignment": "Left",
            \ "ReflowComments": "true",
            \ "SortIncludes": "true",
            \ "SortUsingDeclarations": "true",
            \ "SpaceAfterCStyleCast": "true",
            \ "SpaceAfterTemplateKeyword": "true",
            \ "SpaceBeforeAssignmentOperators": "true",
            \ "SpaceBeforeParens": "ControlStatements",
            \ "SpaceInEmptyParentheses": "false",
            \ "SpacesBeforeTrailingComments": 4,
            \ "SpacesInAngles": "false",
            \ "SpacesInCStyleCastParentheses": "false",
            \ "SpacesInContainerLiterals": "true",
            \ "SpacesInParentheses": "true",
            \ "SpacesInSquareBrackets": "false",
            \ "Standard": "Cpp11",
            \ "TabWidth": 8,
            \ "UseTab": "Never"}

autocmd FileType c,cpp,h ClangFormatAutoEnable
" use this if you want to use a local .clang-format file
" let g:clang_format#detect_style_file = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-headerguard
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufNewFile *.h HeaderguardAdd

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:airline_theme='deus'
"let g:airline_theme='breezy'
let g:airline_theme='gruvbox'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colorscheme stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:seoul256_background = 234
colo gruvbox

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ctags stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>. :CtrlPTag<cr>
