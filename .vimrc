set noerrorbells
set visualbell
set t_vb=

""" Default vim mappings --------------------

" Up/down/left/right
nnoremap n h
xnoremap n h
onoremap n h
nnoremap i k
xnoremap i k
onoremap i k
nnoremap e j
xnoremap e j
onoremap e j
nnoremap o l
xnoremap o l
onoremap o l

nnoremap ' o
xnoremap ' o
onoremap ' o
nnoremap @ O
xnoremap @ O
onoremap @ O

nnoremap , 5j
xnoremap , 5j
onoremap , 5j
nnoremap . 5k
xnoremap . 5k
onoremap . 5k

" Beginning/end of line
nnoremap l ^
xnoremap l ^
onoremap l ^
nnoremap ; $
xnoremap ; $
onoremap ; $

" Jumplist navigation
nnoremap <C-e> <C-o>
vnoremap <C-e> <C-o>

" Word left/right
nnoremap u b
xnoremap u b
onoremap u b
nnoremap y e
xnoremap y e
onoremap y e
nnoremap U B
vnoremap U B
onoremap U B
nnoremap Y E
vnoremap Y E
onoremap Y E

" End of word left/right
nnoremap <silent> N ge
xnoremap <silent> N ge
onoremap N ge
nnoremap <silent> I e
xnoremap <silent> I e
onoremap I e

" Text objects
" diw is drw. daw is now dtw.
onoremap r i
vnoremap r i
onoremap t a
vnoremap t a
" Move visual replace from 'r' to 'R'
onoremap R r
vnoremap R r

" Folds
nnoremap b z
xnoremap b z
nnoremap bb zb
xnoremap bb zb
nnoremap bu zk
xnoremap bu zk
nnoremap be zj
xnoremap be zj

" Copy/paste
nnoremap c y
xnoremap c y
onoremap c y
nnoremap v p
xnoremap v p
nnoremap C y$
xnoremap C y
nnoremap V P
xnoremap V P

" Undo/redo
nnoremap z u
nnoremap gz U
nnoremap Z <C-r>

" inSert/append (T)
nnoremap s i
nnoremap S I
nnoremap t a
nnoremap T A

" Change
nnoremap w c
xnoremap w c
onoremap w c
nnoremap W C
xnoremap W C

" Visual mode
nnoremap a v
xnoremap a v
nnoremap A V
xnoremap A V

" Insert in Visual mode
vnoremap S I

" Search
nnoremap k n
xnoremap k n
onoremap k n
nnoremap K N
xnoremap K N
onoremap K N

" 'til
" Breaks diffput
nnoremap p t
xnoremap p t
onoremap p t
nnoremap P T
xnoremap P T
onoremap P T

" Fix diffput (t for 'transfer')
nnoremap dt dp

" Macros (replay the macro recorded by qq)
nnoremap Q @q

" Cursor to bottom of screen
" H and M haven't been remapped, only L needs to be mapped
nnoremap B L
vnoremap B L

" Misc overridden keys must be prefixed with g
nnoremap gX X
xnoremap gX X
nnoremap gU U
xnoremap gU U
nnoremap gQ Q
xnoremap gQ Q
nnoremap gK K
xnoremap gK K
" extra alias
nnoremap gh K
xnoremap gh K

" Window navigation
nnoremap <C-w>n <C-w>h
xnoremap <C-w>n <C-w>h
nnoremap <C-w>e <C-w>j
xnoremap <C-w>e <C-w>j
nnoremap <C-w>i <C-w>k
xnoremap <C-w>i <C-w>k
nnoremap <C-w>o <C-w>l
xnoremap <C-w>o <C-w>l
nnoremap <C-w>N <C-w>H
xnoremap <C-w>n <C-w>h
nnoremap <C-w>E <C-w>J
xnoremap <C-w>e <C-w>j
nnoremap <C-w>I <C-w>K
xnoremap <C-w>i <C-w>k
nnoremap <C-w>O <C-w>L
xnoremap <C-w>o <C-w>l
" Disable spawning empty buffer
nnoremap <C-w><C-n> <nop>
xnoremap <C-w><C-n> <nop>
