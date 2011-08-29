filetype on   		"  Automatically detect file types
set nocompatible	"  We don't want vi compatibility

" Add recently accessed projects menu (project plugin)
set viminfo^=!

" Minibuffer Explorer settings
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplMapSelTarget = 1

" alt+n or alt+p to navigate between entries in QuickFix
map <silent> <m-p> :cp <cr>
map <silent> <m-n> :cn <cr>

" Change which file opens after executing :Rails command
let g:rails_default_file='config/database.yml'

syntax enable

set cf									" Enable error files & error jumping
set clipboard+=unnamed  " Yanks go on clipboard instead
set history=256					" Number of things to remember in history
set autowrite						" Writes on make/shell commands
set ruler 							" Ruler on
set nu									" Line numbers on
set nowrap							" Line wrapping off
set timeoutlen=250			" Time to wait after ESC
set cmdheight=2         " The commandbar height

set noswapfile

" Formatting
set ts=2								" Tabs are 2 spaces
set bs=2								" Backspace over everything in insert mode
set shiftwidth=2				" Tabs under smart indent
set nocp incsearch
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case
set formatoptions=tcqr
set cindent
set autoindent
set smarttab
set expandtab
set ai
set si

" Visual
set showmatch						" Show matching brackets
set mat=5								" Bracket blinking
set list
set lcs=tab:\ \ ,eol:$,trail:~,extends:>,precedes:<
set novisualbell
set noerrorbells
set laststatus=2				" Always show status line

command! -nargs=0 -range=% SortByLength <line1>,<line2>call QSort('CmpByLineLengthNname', 1) 
command! -nargs=0 -range=% RSortByLength <line1>,<line2>call QSort('CmpByLineLengthNname', -1)
command! -nargs=1 -bang -complete=customlist,genutils#UserFileComplete2 FindInPath :find<bang> <args>

command! W :w
command! Q :q

nnoremap <silent> <C-Space> :call ShiftWordInSpace(1)<CR> 
nnoremap <silent> <C-BS> :call ShiftWordInSpace(-1)<CR> 
nnoremap <silent> \cw :call CenterWordInSpace()<CR> 
nnoremap <silent> \va :call AlignWordWithWordInPreviousLine()<CR>

" Persistent undo
try
  set undodir=~/.vim_runtime/undodir
  set undofile
catch
endtry

" Abbreviations

ab !i !important

