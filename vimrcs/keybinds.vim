

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Filter buffer using ack
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
command Filter % !ack --filter <args>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => format xml using xlink quickly
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
command FormatXml % !xmllint -format -recover -
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Clipboard in neovim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vnoremap <leader>y "+y
nnoremap <leader>y "+y
vnoremap <leader>p "+p
nnoremap <leader>p "+p

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => TERM
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:tnoremap <Esc> <C-\><C-n>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Make
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F9> :make -C bin<cr>
map <leader>ee :cw<cr>
map <leader>eh :cn<cr>
map <leader>el :cp<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Search and replace
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Folding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>f za
nnoremap <expr> <f2> &foldlevel ? 'zM' :'zR'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " Switching tabs
nnoremap H gT
nnoremap L gt

" Disable highlight when <leader> is pressed
nnoremap <silent> <cr> :noh<cr><cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Load prev file
map <leader>e :e#<cr>

" List buffers
map <leader>b :Buffers<cr>

" Close the current buffer
map <leader>bd :Bclose<cr>:tabclose<cr>gT

" Close all the buffers
map <leader>ba :bufdo bd<cr>

map <leader>bl :bnext<cr>
map <leader>bh :bprevious<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 
map <leader>t<leader> :tabnext 

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Quickly open a buffer for scribble
map <leader>q :tabe ~/buffer<cr>

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>
