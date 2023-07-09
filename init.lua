require "paq" {
    "savq/paq-nvim";
    "OmniSharp/omnisharp-vim";
    "preservim/nerdtree";
    "dense-analysis/ale";
    "BurntSushi/ripgrep";
    "nvim-lua/plenary.nvim";
    {"nvim-telescope/telescope.nvim", branch="0.1.x"};
    "prabirshrestha/asyncomplete.vim";
    "mhinz/vim-signify";
    {"neoclide/coc.nvim",·branch="release"};
    "folke/tokyonight.nvim";
}

local wo = vim.wo
local g = vim.g
local opt = vim.opt
local keymap = vim.keymap

wo.number = true -- show line numbers
g.OmniSharp_server_use_net6 = 1
opt.wrap = false -- no text wrap
opt.backup = false -- no annoying backup file
-- everything in utf-8
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"
opt.termencoding = "utf-8"

vim.cmd([[
	set listchars=tab:>·,trail:~,extends:>,precedes:<,space:·
	set list
	" 4 spaces indentation
	set tabstop=4 softtabstop=0 expandtab shiftwidth=4
    set clipboard=unnamed

    colorscheme tokyonight-day

	" Deal with unwanted white spaces (show them in red)
	highlight ExtraWhitespace ctermbg=red guibg=red
	match ExtraWhitespace /\s\+$/
	autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
	autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
	autocmd InsertLeave * match ExtraWhitespace /\s\+$/
	autocmd BufWinLeave * call clearmatches()


    " Don't autoselect first omnicomplete option, show options even if there is only
    " one (so the preview documentation is accessible). Remove 'preview', 'popup'
    " and 'popuphidden' if you don't want to see any documentation whatsoever.
    " Note that neovim does not support `popuphidden` or `popup` yet:
    " https://github.com/neovim/neovim/issues/10996
    if has('patch-8.1.1880')
    set completeopt=longest,menuone,popuphidden
    " Highlight the completion documentation popup background/foreground the same as
    " the completion menu itself, for better readability with highlighted
    " documentation.
    set completepopup=highlight:Pmenu,border:off
    else
    set completeopt=longest,menuone,preview
    " Set desired preview window height for viewing documentation.
    set previewheight=5
    endif

    " Tell ALE to use OmniSharp for linting C# files, and no other linters.
    let g:ale_linters = { 'cs': ['OmniSharp'] }

    augroup omnisharp_commands
    autocmd!

    " Show type information automatically when the cursor stops moving.
    " Note that the type is echoed to the Vim command line, and will overwrite
    " any other messages in this space including e.g. ALE linting messages.
    autocmd CursorHold *.cs OmniSharpTypeLookup

    " The following commands are contextual, based on the cursor position.
    autocmd FileType cs nmap <silent> <buffer> gd <Plug>(omnisharp_go_to_definition)
    autocmd FileType cs nmap <silent> <buffer> <Leader>osfu <Plug>(omnisharp_find_usages)
    autocmd FileType cs nmap <silent> <buffer> <Leader>osfi <Plug>(omnisharp_find_implementations)
    autocmd FileType cs nmap <silent> <buffer> <Leader>ospd <Plug>(omnisharp_preview_definition)
    autocmd FileType cs nmap <silent> <buffer> <Leader>ospi <Plug>(omnisharp_preview_implementations)
    autocmd FileType cs nmap <silent> <buffer> <Leader>ost <Plug>(omnisharp_type_lookup)
    autocmd FileType cs nmap <silent> <buffer> <Leader>osd <Plug>(omnisharp_documentation)
    autocmd FileType cs nmap <silent> <buffer> <Leader>osfs <Plug>(omnisharp_find_symbol)
    autocmd FileType cs nmap <silent> <buffer> <Leader>osfx <Plug>(omnisharp_fix_usings)
    autocmd FileType cs nmap <silent> <buffer> <C-\> <Plug>(omnisharp_signature_help)
    autocmd FileType cs imap <silent> <buffer> <C-\> <Plug>(omnisharp_signature_help)

    " Find all code errors/warnings for the current solution and populate the quickfix window
    autocmd FileType cs nmap <silent> <buffer> <Leader>osgcc <Plug>(omnisharp_global_code_check)
    " Contextual code actions (uses fzf, vim-clap, CtrlP or unite.vim selector when available)
    autocmd FileType cs nmap <silent> <buffer> <Leader>osca <Plug>(omnisharp_code_actions)
    autocmd FileType cs xmap <silent> <buffer> <Leader>osca <Plug>(omnisharp_code_actions)
    " Repeat the last code action performed (does not use a selector)
    autocmd FileType cs nmap <silent> <buffer> <Leader>os. <Plug>(omnisharp_code_action_repeat)
    autocmd FileType cs xmap <silent> <buffer> <Leader>os. <Plug>(omnisharp_code_action_repeat)

    autocmd FileType cs nmap <silent> <buffer> <Leader>os= <Plug>(omnisharp_code_format)

    autocmd FileType cs nmap <silent> <buffer> <Leader>osnm <Plug>(omnisharp_rename)

    autocmd FileType cs nmap <silent> <buffer> <Leader>osre <Plug>(omnisharp_restart_server)
    autocmd FileType cs nmap <silent> <buffer> <Leader>osst <Plug>(omnisharp_start_server)
    autocmd FileType cs nmap <silent> <buffer> <Leader>ossp <Plug>(omnisharp_stop_server)
    augroup END

    " Tab completion
    inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
    inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
    inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"

    map <C-T> :Telescope find_files<CR>
    map <C-L> :NERDTree<CR>
    command FT Telescope live_grep

    " Up/down/left/right {{{
        nnoremap n h|xnoremap n h|onoremap n h|
        nnoremap e j|xnoremap e j|onoremap e j|
        nnoremap i k|xnoremap i k|onoremap i k|
        nnoremap o l|xnoremap o l|onoremap o l|
    " }}}

    " Words forward/backward {{{
        nnoremap u b|xnoremap u b|onoremap u b|
        nnoremap U B|xnoremap U B|onoremap U B|
        nnoremap y e|xnoremap y e|onoremap y e|
        nnoremap Y E|xnoremap Y E|onoremap Y E|
    " }}}
    
    " insert/append {{{
        nnoremap s i|
        nnoremap S I|
        nnoremap t a|
        nnoremap T A|
    " }}}
    
    " Change {{{
        nnoremap w c|xnoremap w c|
        nnoremap W C|xnoremap W C|
        nnoremap ww cc|
    " }}}

    " Cut/copy/paste {{{
        nnoremap x x|xnoremap x d|
        nnoremap c y|xnoremap c y|
        nnoremap v p|xnoremap v p|
        nnoremap X dd|xnoremap X d|
        nnoremap C yy|xnoremap C y|
        nnoremap V P|xnoremap V P|
        "nnoremap gv gp|xnoremap gv gp|
        "nnoremap gV gP|xnoremap gV gP|
    " }}}

    " Undo/redo {{{
        nnoremap z u|xnoremap z :<C-U>undo<CR>|
        "nnoremap gz U|xnoremap gz :<C-U>undo<CR>|
        nnoremap Z <C-R>|xnoremap Z :<C-U>redo<CR>|
    " }}}    
    
    " Visual mode {{{
        nnoremap a v|xnoremap a v|
        nnoremap A V|xnoremap A V|
        "nnoremap ga gv
        " Make insert/add work also in visual line mode like in visual block mode
        xnoremap <silent> <expr> s (mode() =~# "[V]" ? "\<C-V>0o$I" : "I")
        xnoremap <silent> <expr> S (mode() =~# "[V]" ? "\<C-V>0o$I" : "I")
        xnoremap <silent> <expr> t (mode() =~# "[V]" ? "\<C-V>0o$A" : "A")
        xnoremap <silent> <expr> T (mode() =~# "[V]" ? "\<C-V>0o$A" : "A")
    " }}}
    " Search {{{
        " f/F are unchanged
        nnoremap p t|xnoremap p t|onoremap p t|
        nnoremap P T|xnoremap P T|onoremap P T|
        nnoremap b ;|xnoremap b ;|onoremap b ;|
        nnoremap B ,|xnoremap B ,|onoremap B ,|
        nnoremap k n|xnoremap k n|onoremap k n|
        nnoremap K N|xnoremap K N|onoremap K N|
    " }}}
    " inneR text objects {{{
        " E.g. dip (delete inner paragraph) is now drp
        onoremap r i
    " }}}
    " Folds, etc. {{{
        nnoremap j z|xnoremap j z|
        nnoremap jn zj|xnoremap jn zj|
        nnoremap je zk|xnoremap je zk|
    " }}}
    " Overridden keys must be prefixed with g {{{
        nnoremap gX X|xnoremap gX X|
        nnoremap gK K|xnoremap gK K|
        nnoremap gL L|xnoremap gL L|
    " }}}
    " Window handling {{{
        nnoremap <C-W>h <C-W>h|xnoremap <C-W>h <C-W>h|
        nnoremap <C-W>n <C-W>j|xnoremap <C-W>n <C-W>j|
        nnoremap <C-W>e <C-W>k|xnoremap <C-W>e <C-W>k|
        nnoremap <C-W>i <C-W>l|xnoremap <C-W>i <C-W>l|
    " }}}    
]])