" general settings
"

call pathogen#infect()
call pathogen#helptags()

set showmatch
set smartcase
set autoindent
set smartindent
set nofoldenable
set nocompatible
set showcmd
set title
set ruler
set autoindent
set et
set number
set incsearch
set hlsearch
set background=dark
set laststatus=2
set noshowmode
set ttimeoutlen=50
set autoread
set autowrite
set modeline
set relativenumber
set backspace=eol,indent,start
set history=500
set ttyfast

" visual settings

syntax on
set t_Co=256
color jellybeans

"default tabstop settings

set tabstop=8
set softtabstop=4
set shiftwidth=4
set shiftround

"key mappings

nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <F3> :Gstatus<CR>
nnoremap <F4> :Gdiff<CR>
nnoremap <F5> :GundoToggle<CR>
nnoremap <F6> :TagbarToggle<CR>

"disable cursor keys in normal mode
"to foster vimification

nnoremap <Up> <Nop>
nnoremap <Left> <Nop>
nnoremap <Down> <Nop>
nnoremap <Right> <Nop>

map <C-j> <C-W>j
map <C-h> <C-W>h
map <C-l> <C-W>l
map <C-k> <C-W>k

" file type settings

autocmd BufRead *.vala,*.vapi set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
au BufRead,BufNewFile *.vala,*.vapi setfiletype vala
au FileType vala setlocal efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
au FileType vala setlocal et sw=4 et cindent
au FileType vala setlocal cinwords+=foreach
au FileType vala setlocal fo=croql nu rnu
au FileType vala setlocal cinoptions=>4,n0,{2,^-2,:0,=2,g0,h2,p5,t0,+2,(0,u0,w1,m1,N-8,j4

au FileType html setlocal omnifunc=htmlcomplete#CompleteTags
au FileType html setlocal foldmethod=syntax et sw=2 sts=2 ts=2 nu rnu
au FileType jade setlocal sw=2 sts=2
au FileType stylus setlocal sw=2 sts=2
au FileType coffee setlocal et sw=2 sts=2 fdm=indent
au FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS

let vala_space_errors = 1
filetype plugin indent on

" plugin settings


let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_whitespace_symbol = 'Ξ'

" custom commands

command KillWhiteSpaces :%s/\s\+$//

" Tagbar

let g:tagbar_compact = 1
let g:tagbar_autofocus = 1
if executable('coffeetags')
    let g:tagbar_type_coffee = {
        \ 'ctagsbin'  : 'coffetags'
        \ 'ctagsargs' : '',
        \ 'kinds'     : [
            \ 'c:classes',
            \ 'm:methods',
            \ 'f:functions',
            \ 'v:variables',
            \ 'f:fields',
            \ 'o:object',
        \ ],
        \ 'sro': ".",
        \ 'kind2scope': {
        \ 'f': 'object',
        \ 'o': 'object',
        \ }
        \ }
endif
