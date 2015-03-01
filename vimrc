set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
source ~/.vim/bundles.vim

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

filetype plugin on

syntax on
filetype plugin indent on

autocmd BufRead *.vala,*.vapi set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
au BufRead,BufNewFile *.vala,*.vapi setfiletype vala

" Less syntax highlight
au BufNewFile,BufRead *.less set filetype=less

" CoffeScript syntax highlight
au BufNewFile,BufRead *.coffe set filetype=coffe

" Jinja syntax highlight (with plugin)
au BufNewFile,BufRead *.jinja set filetype=jinja
" Jinja syntax highlight (without plugin)
"au BufRead,BufNewFile *.jinja set filetype=htmldjango

" Remove last spaces
au BufWritePre *.py :%s/\s\+$//e
au BufWritePre *.coffee :%s/\s\+$//e

" Highlight last spaces
highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave,BufWinEnter * match ExtraWhitespace /\s\+$/
au ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red

source ~/.vim/abbreviations.vim
source ~/.vim/bindings.vim

" Use skeletons
au BufNewFile *.sh 0r ~/.vim/skeleton/script.sh

set laststatus=2 " Always display the statusline in all windows
