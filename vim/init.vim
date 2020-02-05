" Extensions configurations
""" Bash
au FileType sh set noexpandtab
au FileType sh set shiftwidth=2
au FileType sh set softtabstop=2
au FileType sh set tabstop=2

""" CSS
au FileType css set expandtab
au FileType css set shiftwidth=2
au FileType css set softtabstop=2
au FileType css set tabstop=2

""" gitcommit
au FileType gitcommit setlocal spell
au FileType gitcommit setlocal textwidth=80

""" HTML
au FileType html set expandtab
au FileType html set shiftwidth=2
au FileType html set softtabstop=2
au FileType html set tabstop=2

""" JavaScript
au FileType javascript set expandtab
au FileType javascript set shiftwidth=2
au FileType javascript set softtabstop=2
au FileType javascript set tabstop=2

""" JSON
au FileType json set expandtab
au FileType json set shiftwidth=2
au FileType json set softtabstop=2
au FileType json set tabstop=2

""" LESS
au FileType less set expandtab
au FileType less set shiftwidth=2
au FileType less set softtabstop=2
au FileType less set tabstop=2

""" Make
au FileType make set noexpandtab
au FileType make set shiftwidth=2
au FileType make set softtabstop=2
au FileType make set tabstop=2

""" Markdown
au FileType markdown setlocal spell
au FileType markdown set expandtab
au FileType markdown set shiftwidth=4
au FileType markdown set softtabstop=4
au FileType markdown set tabstop=4
au FileType markdown set syntax=markdown

""" Python
au FileType python set expandtab
au FileType python set shiftwidth=4
au FileType python set softtabstop=4
au FileType python set tabstop=4

""" Jinja 2
au FileType jinja2 set expandtab
au FileType jinja2 set shiftwidth=2
au FileType jinja2 set softtabstop=2
au FileType jinja2 set tabstop=2

""" SQL
au FileType sql set expandtab
au FileType sql set shiftwidth=2
au FileType sql set softtabstop=2
au FileType sql set tabstop=2

""" vimscript
au FileType vim set expandtab
au FileType vim set shiftwidth=4
au FileType vim set softtabstop=4
au FileType vim set tabstop=4

""" YAML
au FileType yaml set expandtab
au FileType yaml set shiftwidth=2
au FileType yaml set softtabstop=2
au FileType yaml set tabstop=2

""" Go
au FileType go set expandtab
au FileType go set shiftwidth=4
au FileType go set softtabstop=4
au FileType go set tabstop=4

""" Java
au FileType java set expandtab
au FileType java set shiftwidth=4
au FileType java set softtabstop=4
au FileType java set tabstop=4

""" Set configurations
set laststatus=0
set autoindent
set smartindent
set autoread
set autowrite
set autowriteall
set clipboard=unnamedplus
set cursorline
set encoding=utf-8
set expandtab
set nospell
set noswapfile
set nowrap
set noerrorbells
set novisualbell
set number
set relativenumber
set ruler
set formatoptions=tcqron
set softtabstop=2
set tabstop=2
set textwidth=80
set title
set updatetime=100
set hidden
set listchars=eol:¬,tab:→→,extends:>,precedes:<,space:·
set list
set hidden
set shortmess=aFc

" Plugins configurations
call plug#begin('~/.vim/plugged')
  Plug 'sheerun/vim-polyglot'
  Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
  Plug 'neoclide/coc.nvim', { 'branch': 'release' }
  Plug 'Yggdroot/indentLine'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'itchyny/vim-gitbranch'
  Plug 'itchyny/lightline.vim'
  Plug 'mileszs/ack.vim'
  Plug 'townk/vim-autoclose'
  Plug 'sbdchd/vim-run'
  Plug 'itchyny/vim-gitbranch'
  Plug 'airblade/vim-gitgutter'
  Plug 'tpope/vim-fugitive'
  Plug 'junegunn/gv.vim'
  Plug 'rainglow/vim'
  Plug 'mattn/webapi-vim'
  Plug 'mattn/gist-vim'
  Plug 'sudar/comments.vim'
  Plug 'mhinz/vim-startify'
  Plug 'brooth/far.vim'
  Plug 'rhysd/git-messenger.vim'
  Plug 'ayu-theme/ayu-vim'
  Plug 'paulo-pyc/vim-one'
call plug#end()

" Mouse configuration
if has('mouse')
    set mouse=a
endif

" Let configurations
let g:indentLine_setColors = 1
let g:indentLine_color_term = 8
let g:GitGutterEnable = 1
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '~'
let g:gitgutter_sign_removed = '-'
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '~'
let g:NERDTreeShowHidden = 0
let g:NERDTreeChDirMode = 2

let g:airline_theme='transparent'
let ayucolor="mirage"
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

let NERDTreeIgnore = [
    \ '\~$',
    \ '\.pyc$',
    \ '^\.DS_Store$',
    \ '^node_modules$',
    \ '^.ropeproject$',
    \ '^__pycache__$',
    \ '\.git$',
    \ '\.env$',
    \ '\.vscode$',
    \ '\.cache$',
    \ '\logs$',
    \ '\.tern-project',
    \ '\.gitignore',
    \ '\.python-version'
\]

let NERDTreeMinimalUI=1

let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

let g:indentLine_color_dark = 1
let g:indentLine_showFirstIndentLevel = 2
let g:indentLine_setColors = 0
let g:indentLine_char_list = ['¦']

" Set configuration
set termguicolors
set background=dark

" Set color scheme
colorscheme ayu

" Keymaps configuration
nnoremap <C-down> <C-W><C-J>
nnoremap <C-up> <C-W><C-K>
nnoremap <C-right> <C-W><C-L>
nnoremap <C-left> <C-W><C-H>
nnoremap <F2> :NERDTreeToggle<cr>
nnoremap <buffer> <F9> :Run<cr>

" Custom miscellaneous commands configuration
command JSONFormat %!python -m json.tool
command XMLFormat :%!python3 -c "import xml.dom.minidom, sys; print(xml.dom.minidom.parse(sys.stdin).toprettyxml())"

" Code navigation configuration
command Definition execute "call CocActionAsync('jumpDefinition')"
command Implementation execute "call CocActionAsync('jumpImplementation')"
command Rename execute "call CocActionAsync('rename')"
command Declaration execute "call CocActionAsync('jumpDeclaration')"
command TypeDefinition execute "call CocActionAsync('jumpTypeDefinition')"
command References execute "call CocActionAsync('jumpReferences')"
command OpenLink execute "call CocActionAsync('openLink')"
command CodeLens execute "call CocActionAsync('codeLensAction')"

" Run jest for current project
command! -nargs=0 Jest :call  CocAction('runCommand', 'jest.projectTest')
command! -nargs=0 JestCurrent :call  CocAction('runCommand', 'jest.fileTest', ['%'])
nnoremap <leader>te :call CocAction('runCommand', 'jest.singleTest')<CR>
command! JestInit :call CocAction('runCommand', 'jest.init')
