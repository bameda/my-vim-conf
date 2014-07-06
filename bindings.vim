" CtrlP binding for ctags
nmap <C-L> :CtrlPTag<CR>

" Tabmove bindings
nmap <C-Up> :tabmove +1<CR>
nmap <C-Down> :tabmove -1<CR>

" Moving on buffers
noremap <C-left> :bprev<CR>
noremap <C-right> :bnext<CR>

map <M-left> <C-w>h
map <M-down> <C-w>j
map <M-up> <C-w>k
map <M-right> <C-w>l


" The NERD Tree
map <F2> :NERDTreeToggle<CR>

" Tagbar keybinding
map <F3> <ESC>:TagbarToggle<CR>

" Gundo Configuration
nnoremap <F4> :GundoToggle<CR>

" RebTags keybinding
map <F5> <ESC>:RebuildTags<CR>

" Spell cheking enabled by default
map <F6> <Esc>:setlocal spell spelllang=es<CR>

" vim gitgutter
nmap <F9> :GitGutterLineHighlightsEnable<CR>
nmap <F10> :GitGutterLineHighlightsDisable<CR>
nmap <F11> :GitGutterPrevHunk<CR>
nmap <F12> :GitGutterNextHunk<CR>
