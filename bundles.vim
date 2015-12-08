" Bundels declaration

" Vim plugin for the Perl module / CLI script 'ack' (Need community/ack)
Bundle 'mileszs/ack.vim'
" Automatically opens popup menu for completions
Bundle 'vim-scripts/AutoComplPop'
" Using the jedi autocompletion library for VIM (Need community/python-jedi)
"Bundle 'davidhalter/jedi-vim'
" Vim python-mode. PyLint, Rope, Pydoc, breakpoints from box.
"Bundle 'klen/python-mode'
" Fuzzy file, buffer, mru, tag, etc finder
Bundle 'kien/ctrlp.vim'
" Vim motions on speed!
"Bundle 'Lokaltog / vim-easymotion'
" A Git wrapper so awesome, it should be illegal
Bundle 'tpope/vim-fugitive'
Bundle 'rhysd/committia.vim'
" Graph your Vim undo tree in style
Bundle 'vim-scripts/Gundo'
" vim syntax for LESS (dynamic CSS)
Bundle 'groenewege/vim-less'
" A dummy text generator
"Bundle 'vim-scripts/loremipsum'
" Extended % matching for HTML, LaTeX, and many other languages
"Bundl 'vim-scripts/matchit.zip'
" TextMate's snippets features in Vim
"Bundle 'msanders/snipmate.vim'
" Sparkup for Vim like it's 2013
"Bundle 'tristen/vim-sparkup'
" Quoting/parenthesizing made simple
Bundle 'tpope/vim-surround'
" Vim plugin that displays tags in a window, ordered by class etc
Bundle 'majutsushi/tagbar'
" An extensible & universal comment vim-plugin that also handles embedded filetypes
Bundle 'tomtom/tcomment_vim'
" Flake8 plugin for Vim
Bundle 'nvie/vim-flake8'
" Local marks usage more similar to other editors
"Bundle 'vim-scripts/wokmarks.vim'
" Vim plugin for rebuild tags files with ctags
Bundle 'jespino/vim-rebtags'
" Easy tags rebuilding on your project directory.
"Bundle 'vim-scripts/rebtags'
" A tree explorer plugin for navigating the filesystem
Bundle 'vim-scripts/The-NERD-tree'
" An up-to-date jinja2 syntax file
Bundle 'Glench/Vim-Jinja2-Syntax'
" CoffeeScript support for vim
Bundle 'kchmck/vim-coffee-script'
" lean & mean status/tabline for vim that's light as air
Bundle 'bling/vim-airline'
" Work with python virtualenvs within vim
Bundle 'vim-scripts/virtualenv.vim'
" A Vim plugin which shows a git diff in the gutter (sign column).
Bundle 'airblade/vim-gitgutter'
" Jade syntax
Bundle 'digitaltoad/vim-jade'
" Sass syntax
Bundle 'cakebaker/scss-syntax.vim'


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

"" Easymotion configuration
"let g:EasyMotion_leader_key = '\'

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

" committia.vim
let g:committia_hooks = {}
function! g:committia_hooks.edit_open(info)
    " If no commit message, start with insert mode
    if a:info.vcs ==# 'git' && getline(1) ==# ''
        startinsert
    end
endfunction
