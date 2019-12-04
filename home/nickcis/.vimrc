syntax on

" set noexpandtab
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

execute pathogen#infect()
let g:airline_powerline_fonts = 1
set background=dark
colorscheme monokai
let g:airline_theme="luna"
set number
map <C-n> :NERDTreeToggle<CR>

"Mouse
set ttymouse=xterm2
set mouse=a

"Mostrar tabs
set list
set listchars=tab:>-,trail:·
"Bajar el timeout del doble tecla
"set timeout timeoutlen=150

"bash completion
set wildmenu
set wildmode=list,longest:full,full

set autoindent
" busqueda incremental (a medida que se escribe)
set incsearch

" resulados de busquedas resaltados
set hlsearch

" Accesos directos para tabs
map tn :tabn<CR>
map tp :tabp<CR>
map tm :tabm
map tt :tabnew
map t1 :tabn1<cr>
map 11 :tabn1<cr>
map t2 :tabn2<cr>
map 22 :tabn2<cr>
map t3 :tabn3<cr>
map 33 :tabn3<cr>
map t4 :tabn4<cr>
map 44 :tabn4<cr>
map t5 :tabn5<cr>
map 55 :tabn5<cr>
map t6 :tabn6<cr>
map 66 :tabn6<cr>
map t7 :tabn7<cr>
map 77 :tabn7<cr>
map t8 :tabn8<cr>
map 88 :tabn8<cr>
map t9 :tabn9<cr>
map 99 :tabn9<cr>
map t0 :tabl<cr>
map 00 :tabl<cr>

" Copiar cursor hasta fin de linea
nnoremap Y v$hy

filetype plugin indent on

autocmd Filetype yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype json setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype perl setlocal noexpandtab

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
