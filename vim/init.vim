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
  Plug 'mhinz/vim-startify'
  Plug 'Yggdroot/indentLine'
  Plug 'vim-airline/vim-airline'
  Plug 'jiangmiao/auto-pairs'
  Plug 'airblade/vim-gitgutter'
  Plug 'mattn/webapi-vim'
  Plug 'tpope/vim-surround'
  Plug 'juliosueiras/vim-terraform-completion'
  Plug 'chazmcgarvey/vim-mermaid'
  Plug 'puremourning/vimspector'
  Plug 'sbdchd/neoformat'

  " :DogeGenerate
  Plug 'kkoomen/vim-doge'

  " :TagbarToggle
  " https://github.com/majutsushi/tagbar/wiki
  Plug 'majutsushi/tagbar'

  " :Neoformat <language>
  " https://github.com/sbdchd/neoformat
  Plug 'sbdchd/neoformat'

  " Autocomplete
  Plug 'neoclide/coc.nvim', { 'branch': 'release' }

  " :Ack word_finded
  Plug 'mileszs/ack.vim'

  " :Run
  " :RunKillAll
  Plug 'sbdchd/vim-run'

  " :Git
  Plug 'tpope/vim-fugitive'

  " :GV
  " :GV! -> Current file
  Plug 'junegunn/gv.vim'

  " :Gist -p
  Plug 'mattn/gist-vim'

  " Ctrl+c -> comment
  " Ctrl+x -> uncomment
  Plug 'sudar/comments.vim'

  " :MarkdownPreview github
  Plug 'MikeCoder/markdown-preview.vim'

  " :Far foo bar <**/*.py> -> Replace
  " :Fardo -> apply
  Plug 'brooth/far.vim'

  " :GitMessenger
  Plug 'rhysd/git-messenger.vim'

  " Java unused imports
  " :UnusedImports " highlight all unused imports
  " :UnusedImportsReset " clear the highlights
  " :UnusedImportsRemove " remove all unused imports
  Plug 'akhaku/vim-java-unused-imports'

  " Themes
  Plug 'vim-airline/vim-airline-themes'
  Plug 'ayu-theme/ayu-vim'
call plug#end()

" Mouse configuration.
if has('mouse')
    set mouse=a
endif

" Apply configurations.
let g:indentLine_setColors = 1
let g:indentLine_color_term = 8

let g:GitGutterEnable = 1
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '~'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_highlight_lines = 0
let g:gitgutter_highlight_linenrs = 1

let g:gist_use_password_in_gitconfig = 1

let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

let g:indentLine_color_dark = 1
let g:indentLine_showFirstIndentLevel = 2
let g:indentLine_setColors = 0
let g:indentLine_char_list = ['¦']
let g:indentLine_setConceal = 2
let g:indentLine_concealcursor = ""

let g:coc_global_extensions = [
  \ 'coc-java',
  \ 'coc-json',
  \ 'coc-python',
  \ 'coc-snippets',
  \ 'coc-yaml',
  \ 'coc-highlight',
  \ 'coc-docker',
  \ 'coc-marketplace',
  \ 'coc-go',
  \ 'coc-xml',
  \ 'coc-webpack',
  \ 'coc-vimlsp',
  \ 'coc-vetur',
  \ 'coc-terminal',
  \ 'coc-svelte',
  \ 'coc-sql',
  \ 'coc-smartf',
  \ 'coc-sh',
  \ 'coc-phpls',
  \ 'coc-java-debug',
  \ 'coc-prettier',
  \ 'coc-html',
  \ 'coc-flutter',
  \ 'coc-css',
  \ 'coc-angular',
  \ 'coc-tsserver',
  \ 'coc-solargraph',
  \ 'coc-explorer'
  \ ]

" Theme
let g:airline_theme='transparent'
set termguicolors
set background=dark
let ayucolor="mirage"
colorscheme ayu

" Custom miscellaneous commands configuration
command JSONFormat %!python -m json.tool
command XMLFormat :%!python3 -c "import xml.dom.minidom, sys; print(xml.dom.minidom.parse(sys.stdin).toprettyxml())"

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> dc :call <SID>show_documentation()<CR>

" Remap for do codeAction of current line
nmap ac (coc-codeaction)

" Fix autofix problem of current line
nmap qf (coc-fix-current)

" Symbol renaming.
nmap <silent>rn <Plug>(coc-rename)

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Direction navigate keysmaps
nnoremap <C-down> <C-W><C-J>
nnoremap <C-up> <C-W><C-K>
nnoremap <C-right> <C-W><C-L>
nnoremap <C-left> <C-W><C-H>

" Sidebar toggle
nnoremap <F2> :CocCommand explorer --width 30<CR>

let g:coc_explorer_global_presets = {
\   '.vim': {
\      'root-uri': '~/.vim',
\   },
\   'floating': {
\      'position': 'floating',
\   },
\   'floatingLeftside': {
\      'position': 'floating',
\      'floating-position': 'left-center',
\      'floating-width': 10,
\   },
\   'floatingRightside': {
\      'position': 'floating',
\      'floating-position': 'left-center',
\      'floating-width': 10,
\   },
\   'simplify': {
\     'file.child.template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
\   }
\ }


" Tagbar toggle
nnoremap <F10> :TagbarToggle<cr>

" Terminal toggle
nnoremap <F11> :CocCommand terminal.Toggle<cr>

" press <esc> to cancel.
nmap f <Plug>(coc-smartf-forward)
nmap F <Plug>(coc-smartf-backward)
nmap ; <Plug>(coc-smartf-repeat)
nmap , <Plug>(coc-smartf-repeat-opposite)

" Refactor symbol
nmap rf <Plug>(coc-refactor)

" Rename symbol
nmap <leader>rn <Plug>(coc-rename)

" Multiple cursors
nmap <silent> <C-d> <Plug>(coc-cursors-word)*
xmap <silent> <C-d> y/\V<C-r>=escape(@",'/\')<CR><CR>gN<Plug>(coc-cursors-range)gn

" use normal command like `<leader>xi(`
nmap <leader>x <Plug>(coc-cursors-operator)

" Comments
let g:comments_map_keys = 0

" key-mappings for comment line in normal mode
" key-mappings for range comment lines in visual <Shift-V> mode
noremap  <silent> <C-L> :call CommentLine()<CR>
vnoremap <silent> <C-L> :call RangeCommentLine()<CR>

" key-mappings for un-comment line in normal mode
" key-mappings for range un-comment lines in visual <Shift-V> mode
noremap  <silent> <C-K> :call UnCommentLine()<CR>
vnoremap <silent> <C-K> :call RangeUnCommentLine()<CR>

" Debug
noremap <silent> <C-c> :call vimspector#Continue()<CR>
noremap <silent> <C-s> :call vimspector#Stop()<CR>
noremap <silent> <C-b> :call vimspector#ToggleBreakpoint()<CR>
noremap <silent> <C-y> :call vimspector#StepOver()<CR>
noremap <silent> <C-u> :call vimspector#StepInto()<CR>
noremap <silent> <C-i> :call vimspector#StepOut()<CR>
noremap <silent> <F9> :call JavaStartDebug()<CR>

" Functions
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

function! JavaStartDebugCallback(err, port)
  execute "cexpr! 'Java debug started on port: " . a:port . "'"
  call vimspector#LaunchWithSettings({ "configuration": "Java Attach", "AdapterPort": a:port })
endfunction

function JavaStartDebug()
  call CocActionAsync('runCommand', 'vscode.java.startDebugSession', function('JavaStartDebugCallback'))
endfunction
