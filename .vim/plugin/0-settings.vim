" show lines numbers
set number
" autoindent as per C rules
set cindent
" line length to 80 chars max
set textwidth=80
" folding
set foldmethod=manual
" Enable mouse usage (normal
set mouse=n
" mode) in terminals

" Always show a status bar
set laststatus=2
set statusline=
" flags and buf no
set statusline+=%*[%n%H%R%W]%*
" cut at start
set statusline+=\ %<
" path
set statusline+=\ %-40f
set statusline+=\ %=%#warningmsg#%m%*
" filetype
set statusline+=[%{strlen(&ft)?&ft:'none'}
" encoding
set statusline+=\ %{strlen(&fenc)?&fenc:&enc}]
" line and column
set statusline+=%10((%l/%L,%c)%)
" percentage of file
set statusline+=\ %P
" search is done as the letters are typed
set incsearch

" highlight search results by default
set hlsearch
" Search is case insensitive...
set ignorecase
" ...Unless a capital letter is typed, in which case, the search becomes case sensitive
set smartcase
" Backspace over everything in insert mode
set backspace=indent,eol,start

set completeopt=menu,preview,menuone

" Set spell check
set spell spelllang=en spellfile=$HOME/.vim/spell/techspeak.utf-8.add,$HOME/.vim/en.utf-8.add

" Find in recursive paths + "fuzzy" search
set path+=**

set grepprg=ag


" avoid tilde files in working directory
set backupdir=~/.vim/backup
" avoid swap files in working directory
set directory=~/.vim/backup/

set wildchar=<Tab> wildmenu wildmode=full
" To be able to leave an unsaved buffer to access another one
set hidden
set tags=.git/tags;/

set splitbelow
set splitright

let &colorcolumn=&l:textwidth . ",".join(range(120,999),",")

let g:cpp_member_variable_highlight = 1
let g:pymode_python = 'python3'
let g:pymode_folding = 0
let g:pymode_lint_on_fly = 1
let g:pymode_lint_checkers = ['pylint', 'pycodestyle', 'pyflakes']
let g:pymode_run_bind = '<leader>R'
let g:pymode_breakpoint_bind = '<leader>B'
let g:pymode_lint_cwindow = 0
