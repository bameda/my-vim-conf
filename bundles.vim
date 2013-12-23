" Bundels declaration
Bundle 'ack.vim'
"Bundle 'vim-scripts/AutoComplPop'
Bundle 'kien/ctrlp.vim'
Bundle 'EasyMotion'
Bundle 'tpope/vim-fugitive'
Bundle 'Gundo'
Bundle 'vim-less'
Bundle 'loremipsum'
Bundle 'matchit.zip'
Bundle 'snipMate'
Bundle 'sparkup'
Bundle 'surround.vim'
Bundle 'majutsushi/tagbar'
Bundle 'tComment'
Bundle 'vim-flake8'
Bundle 'wokmarks.vim'
Bundle 'rebtags'
Bundle 'The-NERD-tree'
Bundle 'jespino/vim-rebtags'
Bundle 'lepture/vim-jinja'
Bundle 'kchmck/vim-coffee-script'
Bundle 'bling/vim-airline'
Bundle 'vim-scripts/virtualenv.vim'
Bundle 'airblade/vim-gitgutter'
Bundle 'davidhalter/jedi-vim'

"
" Bundels Configuration

" CTRLP Configuration
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_open_new_file = 't'
let g:ctrlp_open_multiple_files = 't'
let g:ctrlp_max_depth = 40
let g:ctrlp_max_height = '20'
let g:ctrlp_us_caching = 1
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'dir', 'rtscript',
                         \ 'undo', 'line', 'changes', 'mixed', 'bookmarkdir']
" Easymotion configuration
let g:EasyMotion_leader_key = '\'

" Flake 8 Configuration
let g:flake8_max_line_length = 120

" Vim-rebtags
let g:rebtags_ctags_config_file = '.ctags'
let g:rebtags_root_markers = ['.git', '.hg', '.svn', '.bzr', '_darcs', '.ctags']
let g:rebtags_extra_arguments = '--python-kinds --languages=python -R'

" Vim-airline
let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline_detect_iminsert=0
let g:airline_inactive_collapse=1
let g:airline_theme='wombat'

let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#empty_message = ''
