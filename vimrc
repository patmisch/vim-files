call pathogen#infect()
syntax on
filetype plugin indent on


if has("gui_running")
  set guifont=Monaco:h12
  set fuopt=maxvert,maxhorz
  
  "use alt key
  set invmmta

  "maximize window default
  set lines=999
  set columns=999
else

endif

"remove toolbar, menu bar(if not OSX) and scroll bar
set guioptions-=m  
set guioptions-=T  
set guioptions+=LlRrb
set guioptions-=LlRrb


"colorscheme
colorscheme desert

"easier escaping to normal mode
imap jj <esc>

set cpoptions+=$

"line numbers default
set number

"NERDTree quick
map <F2> :NERDTreeToggle<CR>

let NERDTreeShowBookmarks=1

"save on focus lost
:au FocusLost * :wa

"snipmate
:filetype plugin on

"hidden files
set hidden

"Buffer map
:nnoremap <F5> :buffers<CR>:buffer<Space>

"autowrite all
:set autowriteall




filetype on  " Automatically detect file types.
set nocompatible  " We don't want vi compatibility.
 
" Add recently accessed projects menu (project plugin)
set viminfo^=!
 
 
 
" Change which file opens after executing :Rails command
let g:rails_default_file='config/database.yml'
 
set cf  " Enable error files & error jumping.
set clipboard+=unnamed  " Yanks go on clipboard instead.
set history=256  " Number of things to remember in history.
set autowrite  " Writes on make/shell commands
set ruler  " Ruler on
set nu  " Line numbers on
set nowrap  " Line wrapping off
set timeoutlen=250  " Time to wait after ESC (default causes an annoying delay)
 
" Formatting (some of these are for coding in C and C++)
set ts=2  " Tabs are 2 spaces
set bs=2  " Backspace over everything in insert mode
set shiftwidth=2  " Tabs under smart indent
set nocp incsearch
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case
set formatoptions=tcqr
set cindent
set autoindent
set smarttab
set expandtab
 
" Visual
set showmatch  " Show matching brackets.
set mat=5  " Bracket blinking.
set novisualbell  " No blinking .
set noerrorbells  " No noise.
set laststatus=2  " Always show status line.
 
"window resizing
" Maps Alt-[h,j,k,l] to resizing a window split
map <silent> <A-h> <C-w><
map <silent> <A-j> <C-W>-
map <silent> <A-k> <C-W>+
map <silent> <A-l> <C-w>>

let Tlist_Ctags_Cmd = "/usr/local/Cellar/ctags/5.8/bin/ctags"
let Tlist_WinWidth = 50
map <F6> :TlistToggle<cr>


"window numbering for easier switching
let i = 1
while i <= 9
    execute 'nnoremap <Leader>' . i . ' :' . i . 'wincmd w<CR>'
    let i = i + 1
endwhile

function! WindowNumber()
    let str=tabpagewinnr(tabpagenr())
    return str
endfunction

"status line stuff
set statusline=
  set statusline+=%<\                       " cut at start
  set statusline+=%2*[%n%H%M%R%W]%*\        " flags and buf no
  set statusline+=%-40f\                    " path
  set statusline+=win:%{WindowNumber()}\      " window number
  set statusline+=%=%1*%y%*%*\              " file type
  set statusline+=%10((%l,%c)%)\            " line and column
  set statusline+=%P                        " percentage of file

"adding blank lines without entering insert mode
map <S-Enter> O<Esc>
map <CR> o<Esc>

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

