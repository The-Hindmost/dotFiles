" Variables {{{1
let g:linuxFont = 'Liberation\ Mono\ 8' "Font config to use on Linux systems
let g:win32Font = 'Consolas:h9'         "Font config to use on windows systems

" Configure Vundle {{{1
"Set the runtime path to include Vundle and initialise
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Configure list of plugins here {{{2
"Let Vundle manage Vundle (required)
Plugin 'VundleVim/Vundle.vim'

Plugin 'Reewr/vim-monokai-phoenix'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'hotchpotch/perldoc-vim'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-latex/vim-latex'
"}}}
call vundle#end()

" Global Preferences {{{1
set autoread                            "Automatically read external file changes
set errorbells                          "Enable bell on errors
set foldmethod=marker                   "Use markers to define folds
set mouse=a                             "Enable the mouse to always function
set nobackup                            "Don't create backup files
set nocompatible                        "Remove compatibility with vi
set nowritebackup                       "Don't create backup files when editing
set ttyfast                             "Increase the speed of drawing the tty
set visualbell                          "Flash screen instead of beeping
set wildmenu                            "Enable command completion
set wildmode=longest:full,full          "Set parameters for wildmenu

" Plugin Preferences {{{1
" Nerd Commenter {{{2
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
" }}}
" Nerd Tree {{{2
let g:NERDTreeShowHidden = 1
" }}}
" vim-latex {{{2
let g:Tex_DefaultTargetFormat = 'pdf'
" }}}

" Editing Preferences {{{1
au BufLeave * silent! wa                "Save named writable files on leaving a buffer
au FocusLost * silent! wa               "Save named writable files on lost focus
set backspace=indent,eol,start          "Fixes backspacing in Vim on Windows 7
set completeopt=menu,menuone,preview    "Set completion options
set cursorline                          "Highlight the current line
set infercase                           "Infer the correct case to use
set paste                               "Set paste mode for insert
setlocal spell spelllang=en_gb          "Enable spell checking
syntax on                               "Set syntax highlighting on

" Indent Preferences {{{1
filetype plugin indent on               "Set indenting style to be based on the filetype
set autoindent                          "Enable automatic indenting
set shiftwidth=4                        "Indent four spaces
set softtabstop=4                       "Use four spaces for soft tabs
set tabstop=4                           "Use four spaces for tabs
set expandtab                           "Convert tabs to spaces

" Layout Preferences {{{1
colorscheme monokai-phoenix
"Highlight columns 80 and 100 onwards
let &colorcolumn="80," . join(range(100,999), ",")
set foldcolumn=1                        "Set the column for fold expansion
set laststatus=2                        "Show two status lines
set nu                                  "Set numbers at the start of lines to on
set relativenumber                      "Use relative line numbering
set ruler                               "Enable the ruler
set scrolloff=5                         "Keep 5 lines on screen when scrolling
set showcmd                             "Show the last command
set showmode                            "Show the current mode
" Status line settings {{{2
set statusline=%r                       "Flag if file is readonly
set statusline+=%<%F                    "Show filename (trim folder if needed)
set statusline+=%m                      "Flag if file is modified
set statusline+=%=                      "Switch to the right side
set statusline+=%{WordCount()}\ word(s) "Word count
set statusline+=\ \                     "Separator
set statusline+=%L\ line(s)             "Total lines
set statusline+=\ \                     "Separator
set statusline+=(%l,                    "Current line
set statusline+=%c)                     "Current column
set statusline+=\ \                     "Separator
set statusline+=%P                      "Show the percentage through the file

"Font settings: {{{2
if has("win32")
    exec "set guifont=" . g:win32Font
else
    exec "set guifont=" . g:linuxFont
endif

"GUI Specific settings: {{{2
if has("gui_running")
    "Set height and width (30 rows of text + 2 status by 90 columns):
    set lines=32
    au BufRead * let &numberwidth = float2nr(log10(line("$"))) + 2
              \| let &columns = &numberwidth + 90
endif

" Search Preferences {{{1
set hlsearch                            "Highlight search results
set ignorecase                          "Ignore case during searches
set incsearch                           "Perform incremental searches
set showmatch                           "Highlight bracket matching one under cursor
set smartcase                           "Make case sensitive searches smart
"Use Perl and Python style regexes:
nnoremap / /\v
vnoremap / /\v

" Autocmd Preferences {{{1
autocmd BufWinEnter * silent loadview
autocmd BufWinLeave * mkview

" Nerdtree settings {{{2
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Perl filetype settings {{{2
autocmd FileType perl compiler perl
autocmd FileType perl set errorformat=%f:%l:%m
autocmd FileType perl set autowrite

" Key remaps {{{1
nnoremap <leader>m :make<cr>

" Commands {{{1
"Stop highlighting duplicate lines:
command! HideDupes
    \ noh |
    \ syntax off |
    \ syntax on
"Highlight duplicate lines:
command! ShowDupes
    \ noh |
    \ syn clear Repeat |
    \ g/^\(.*\)\n\ze\%(.*\n\)*\1$/exe
        \ 'syn match Repeat "^' . escape(getline('.'), '".\^$*[]') . '$"'
"Perform word count:
command! WordCount
    \ echo WordCount() . " Words in document"

" Functions {{{1
"Adds word count functionality to vim:
function! WordCount() "{{{2
   let s:old_status = v:statusmsg
   let position = getpos(".")
   exe ":silent normal g\<c-g>"
   let stat = v:statusmsg
   let s:word_count = 0
   if stat != '--No lines in buffer--'
     let s:word_count = str2nr(split(v:statusmsg)[11])
     let v:statusmsg = s:old_status
   end
   call setpos('.', position)
   return s:word_count
endfunction
