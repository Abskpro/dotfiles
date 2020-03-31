syntax enable
set nocompatible
syntax on
" filetype plugin indent on
filetype plugin on
set encoding=UTF-8
" set cursorline
" set ruler
set smartindent
set mouse=c
set scroll=5


" let g:ycm_use_clangd = 0
" let g:ycm_autoclose_preview_window_after_insertion = 1
" let g:ycm_autoclose_preview_window_after_completion = 1
    
    " set foldmethod=indent
    " set syntax=javaScript
    " set foldlevelstart=1
    " let javaScript_fold=1         " JavaScript
    " let php_folding=1             " PHP
    " let sh_fold_enabled=1         " sh
    " let vimsyn_folding='af'       " Vim script
    " let xml_syntax_folding=1      " XML
    " set foldnestmax=2

    imap jj <ESC>
    imap <Capslock> <c>
    set tabstop=4
    set relativenumber
    set number
    set showmatch
    set showcmd	
    set cursorline
    set noswapfile
    set shell
    set ft=jade
    set timeoutlen=1000
    set ttimeoutlen=0
    cnoreabbrev W w
    cnoreabbrev Q q
    cnoreabbrev WQ wq
    let g:gruvbox_italic=1
    colorscheme gruvbox
    let g:gruvbox_termcolors=256
    

    let g:go_fmt_experimental = 1

    syntax on
    let g:indentLine_color_term = 239
    let g:indentLine_char_list = ['|', '|', '?', '?']
    let g:indentLine_concealcursor = 'inc'
    let g:indentLine_conceallevel = 2
    let g:indentLine_enabled = 0
    "" for eslint (ALE)
    let g:ale_sign_error = '●' " Less aggressive than the default '>>'
    let g:ale_sign_warning = '.'
    let g:ale_sign_errore_lint_on_enter = 0 " Less distracting when opening a new file
    let b:ale_fixers = ['prettier', 'eslint']
    let g:ale_fix_on_save = 1
    let g:ale_completion_enabled = 1
    let g:ale_completion_tsserver_autoimport = 1
    "" for js
    let g:javascript_plugin_jsdoc = 1
    let g:javascript_plugin_ngdoc = 1
    let g:javascript_plugin_flow = 1
    let g:ale_linters = {
                \   '*': ['remove_trailing_lines', 'trim_whitespace'],
                \  'javascript': ['eslint'],
                \}
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

	"" Nerd trree
	nnoremap <C-e> :NERDTreeToggle<CR>
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
	let g:NERDTreeDirArrowExpandable = '▸'
	let g:NERDTreeDirArrowCollapsible = '▾'
    let g:NERDTreeWinPos = "left"
    let g:NERDTreeQuitOnOpen = 1

    ""Indent line
    let g:indentLine_char_list = ['|', '¦', '┆', '┊']
    let g:indentLine_enabled = 1
    
    ""CtrlP
    imap <F1> <c-p> 
    let g:ctrlp_working_path_mode = 'ra'

    ""jsx
    let g:jsx_ext_required = 1





    let g:ale_sign_error = '●' " Less aggressive than the default '>>'
        let g:ale_sign_warning = '.'
            let g:ale_sign_errore_lint_on_enter = 0 " Less distracting when opening a new file
                let b:ale_fixers = ['prettier', 'eslint']
                    let g:ale_fix_on_save = 1
                        let g:ale_completion_enabled = 1
                            let g:ale_set_highlights = 0
                        let g:airline#extensions#ale#enabled = 1

                    let g:javascript_plugin_jsdoc = 1
                    let g:javascript_plugin_ngdoc = 1
                    let g:javascript_plugin_flow = 1
                let g:ale_linters = {
                                    \  'javascript': ['eslint'],
                                    \  'python': ['pycodestyle']
                                    \}
    "" for html
    " iabbrev </ </<C-X><C-O>
"   "" emmet config
            autocmd FileType html,css,js EmmetInstall
            let g:user_emmet_install_global = 0
            let g:user_emmet_leader_key=','
            let g:user_emmet_settings = {
                                        \  'javascript.jsx' : {
                                        \      'extends' : 'jsx'
                                        \},
                                    \}
    autocmd FileType html,css,javascript.jsx EmmetInstall
            "indent line
   let g:indentLine_color_term = 239
    let g:indentLine_char_list = ['|', '|', '?', '?']
    let g:indentLine_concealcursor = 'inc'
    let g:indentLine_conceallevel = 2
    let g:indentLine_enabled = 0
    "
    ""python-mode
    let g:pymode_python = 'python3'"
    autocmd WinEnter * if winnr('$') == 1 && ! empty(&buftype) && ! &modified | quit | endif
                                                                                                   
" undo tree
if has("persistent_undo")
    set undodir=$HOME."/.undodir"
        set undofile
    endif

let g:prettier#autoformat = 1


"YCM Completion
"for java
let g:syntastic_java_checkers = []
let g:EclimFileTypeValidate = 0

"for javascript


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


"Markdown preview
let g:mkdp_path_to_chrome = ""
let g:mkdp_browserfunc = 'MKDP_browserfunc_default'
let g:mkdp_auto_start = 0
let g:mkdp_auto_open = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0


   " for normal mode
   nmap <silent> <F8> <Plug>MarkdownPreview
   " " for insert mode
   imap <silent> <F8> <Plug>MarkdownPreview
   " " for normal mode
   nmap <silent> <F9> <Plug>StopMarkdownPreview
   " " for insert mode
   imap <silent> <F9> <Plug>StopMarkdownPreview"


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



" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if has('patch8.1.1068')
  " Use `complete_info` if your (Neo)Vim version supports it.
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>




"ctrl p vim setting
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
