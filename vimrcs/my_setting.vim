""""""""""""""""""""""""""""""""""""""""""""""
"basic mapping""
"""""""""""""""""""""""jo"""""""""""""""""""""""
    syntax enable
    set nocompatible
    syntax on
    set encoding=UTF-8
    set smartindent
    set mouse=c
    set scroll=5
    imap jj <ESC>
    imap <Capslock> <c>
    set relativenumber
    set number
    set showmatch
    set showcmd	
    set cursorline
    set shell
    set ft=jade
    set timeoutlen=1000
    set ttimeoutlen=0
    cnoreabbrev W w
    cnoreabbrev Q q
    cnoreabbrev WQ wq


"""""""""""""""""""""""''"""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""
"Ycm setting""
"""""""""""""""""""""""""""""""""""""""""""""""""
let g:ycm_use_clangd = 0
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

"for java
let g:syntastic_java_checkers = []
let g:EclimFileTypeValidate = 0

let g:go_fmt_experimental = 1
    

""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""
    " set foldmethod=indent
    " set syntax=javaScript
    " set foldlevelstart=1
    " let javaScript_fold=1         " JavaScript
    " let php_folding=1             " PHP
    " let sh_fold_enabled=1         " sh
    " let vimsyn_folding='af'       " Vim script
    " let xml_syntax_folding=1      " XML
    " set foldnestmax=2

""""""""""""""""""""""""""""""""""""""""""""""""
"gruvbox settings
""""""""""""""""""""""""""""""""""""""""""""""""""
    let g:gruvbox_italic=1
    colorscheme gruvbox
    let g:gruvbox_termcolors=256
""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""
"Indent lines
""""""""""""""""""""""""""""""""""""""""""""""""""""
    let g:indentLine_color_term = 239
    let g:indentLine_char_list = ['|', '|', '?', '?']
    let g:indentLine_concealcursor = 'inc'
    let g:indentLine_conceallevel = 2
    let g:indentLine_enabled = 1

""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""
"Ale settings
""""""""""""""""""""""""""""""""""""""""""""""""""
    "" for eslint (ALE)
    let g:ale_sign_error = '●' " Less aggressive than the default '>>'
    let g:ale_sign_warning = '.'
    let g:ale_sign_errore_lint_on_enter = 0 " Less distracting when opening a new file
    let b:ale_fixers = ['prettier', 'eslint']
    let g:ale_set_highlights = 0
    let g:ale_fix_on_save = 1
    let g:ale_completion_enabled = 1
    let g:ale_completion_tsserver_autoimport = 1
    let g:airline#extensions#ale#enabled = 1
    "" for js
    let g:javascript_plugin_jsdoc = 1
    let g:javascript_plugin_ngdoc = 1
    let g:javascript_plugin_flow = 1
    let g:ale_linters = {
                \   '*': ['remove_trailing_lines', 'trim_whitespace'],
                \  'javascript': ['eslint'],
                \  'python' : ['pycodestyle']
                \}


""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"emmet config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    "" for html
    " iabbrev </ </<C-X><C-O>
	"" emmet config
    autocmd FileType html,css,js,javascript.jsx EmmetInstall
    " autocmd FileType javascript set filetype:javascript.jsx 
    let g:user_emmet_install_global = 0
    let g:user_emmet_leader_key=','
    let g:user_emmet_settings = {
    \  'javascript' : {
    \      'extends' : 'jsx',
    \  },
    \ 'typescript':{
    \   'extends':'jsx',
    \   },
    \}
   let g:jsx_ext_required = 0  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Nerd tree config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  nnoremap <C-e> :NERDTreeToggle<CR>
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
  let g:NERDTreeDirArrowExpandable = '▸'
  let g:NERDTreeDirArrowCollapsible = '▾'
  let g:NERDTreeWinPos = "left"
  let g:NERDTreeQuitOnOpen = 1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""CtrlP settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
imap <F1> <c-p> 
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

""jsx
let g:jsx_ext_required = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"python mode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""python-mode
let g:pymode_python = 'python3'"
autocmd WinEnter * if winnr('$') == 1 && ! empty(&buftype) && ! &modified | quit | endif
let g:pymode_quickfix_minheight = 3
let g:pymode_quickfix_maxheight = 6
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""                                                                                                   
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"undo tree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("persistent_undo")
    set undodir=$HOME."/.undodir"
        set undofile
    endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"prettier
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:prettier#autoformat = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



"typescript
let g:typescript_indent_disable=1
setlocal indentkeys+=0
let g:typescript_opfirst='\%([<>=,?^%|*/&]\|\([-:+]\)\1\@!\|!=\|in\%(stanceof\)\=\>\)''))'

let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow


let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Markdown preview
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_browser = ''
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {}
    \}
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
" let g:mkdp_page_title = '「${name}」'

" normal/insert
nmap <C-s> <Plug>MarkdownPreview
nmap <M-s> <Plug>MarkdownPreviewStop
nmap <C-p> <Plug>MarkdownPreviewToggle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"for proper vim scrolling based on 25 % of screen height

function! ScrollQuarter(move)
     let height=winheight(0)

        if a:move == 'up'
             let key="\<C-Y>"
         else
             let key="\<C-E>"
         endif

         execute 'normal! ' . height/4 . key
endfunction
         




