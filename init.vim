
set number
set autoindent
set tabstop=4 expandtab shiftwidth=4
set smartindent
set smarttab
set undofile

inoremap <C-h> <C-o>:tabp<cr>
inoremap <C-l> <C-o>:tabn<cr>
nnoremap <C-h> :tabp<cr>
nnoremap <C-l> :tabn<cr>
nmap <C-g>h :tabm -1<cr>
nmap <C-g>l :tabm +1<cr>
nmap <C-n> i<cr><esc>
nmap <C-b> a<cr><esc>
nmap dh i<backspace><esc>l
nmap ZS :w<cr>
nmap ZAS :wa<cr>
nmap ZAZ :wqa<cr>
nmap ZAQ! :qa!<cr>
nmap ZQ :bd!<cr>
nmap ZZ :w<cr>:bd<cr>
nmap UM :set mouse=a<cr>
nmap UN :set mouse=<cr>
nmap US <esc>:match Chars /./<cr>:hi Chars ctermbg=236<cr>
nmap UH <esc>:match Chars //<cr>:hi Chars ctermbg=236<cr>
nmap UW :!cp ~/.vimrc ~/Schule/IT/.vimrc<cr>:!cp ~/.config/nvim/init.vim ~/Schule/IT/init.vim<cr>:!update<cr>:!cp ~/Schule/IT/.vimrc ~/.vimrc<cr>:!cp ~/Schule/IT/init.vim ~/.config/nvim/init.vim<cr>
nmap UQ! :silent !systemctl suspend<cr>
nmap U :set nohlsearch<cr>
nmap UU :set nohlsearch<cr>
nmap UI :set hlsearch<cr>
imap <C-z> <C-o>ZS
imap <C-c> <C-o>@t
imap <C-x> <C-o>@z
nmap <C-x> <C-w>v
nmap <C-y> <C-w>s
imap <C-space> <C-p>
imap <S-space> <C-p>
tmap <C-q> <C-\><C-n>
nmap <C-j>p o"TODO: \n" puts<esc>_Wi
nmap <C-j># o"TODO: " #<esc>_Wi
nmap <C-j>i o# "TODO: "<esc>$i
nmap <C-k>p o"\n" puts<esc>_li
nmap <C-k># o"" #<esc>_li
nmap <C-k>i o# ""<esc>$i
nmap - <C-o>
nmap + <C-i>
nmap , <C-o>
nmap ; <C-i>
nmap <C-d> v\\a
imap <C-d> <esc>l<C-d>
vmap <C-d> \\a
nnoremap <C-s> :%s/\<<C-r><C-w>\>//g<Left><Left>

" this is the default, but plugins get bugged when you do it sometimes.
nmap _ ^

" some simple shorthands
nmap gc <C-w>s<C-w>T
nmap gC :tabclose<cr>
nmap gk :w<cr>:e!<cr>
nmap <# Vj_%j<
nmap ># Vj_%j>
nmap <+ Vk$%k<
nmap >+ Vk$%k>
nmap J }
nmap K {
nmap f `
nmap F '

" coc
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gD gc<Plug>(coc-definition)
nmap <silent> gi gc<Plug>(coc-references)
nmap <silent> gI gc<Plug>(coc-implementation)
nmap <silent> gF <Plug>(coc-fix-current)
nmap gr <Plug>(coc-rename)
nmap <silent> gf <Plug>(coc-codeaction-selected)l
nmap <silent> gh <Plug>(coc-codeaction)
vmap <silent> gf <Plug>(coc-codeaction-selected)

" fzf
nmap UO :call fzf#vim#files(".")<cr>

" nerdtree
nnoremap gn :NERDTree<cr>
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
let NERDTreeQuitOnOpen=1
command Ex :NERDTree %

" lightline
set noshowmode

syntax enable
filetype plugin indent on
colorscheme pablo
hi TabLineFill ctermfg=grey ctermbg=black
hi TabLine ctermfg=black ctermbg=blue cterm=none
hi TabLineSel ctermfg=white ctermbg=black
hi VertSplit ctermbg=blue ctermfg=blue
hi StatusLineNC ctermbg=black ctermfg=blue
hi StatusLine ctermbg=white ctermfg=black
hi Visual ctermfg=black ctermbg=lightblue
hi CocFloating ctermbg=239
hi MatchParen ctermbg=darkgrey
hi LineNr ctermbg=235
set cursorline
hi CursorLine ctermbg=237 cterm=none
hi CursorLineNr ctermbg=237 cterm=none


let @m="yypk_vEr wv$r-hr+$a+\<esc>yyjp0R +\<esc>lvwhr-k_Whr|$a|\<esc>q"
let @t="j/|\<CR>Nll"
let @z="/|\<CR>ll"

call plug#begin()
Plug 'rust-lang/rust.vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'mg979/vim-visual-multi'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'itchyny/lightline.vim'
call plug#end()

silent !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
silent !xmodmap -e 'keycode 0x69 = Escape'

au BufNewFile,BufRead *.isbpl setfiletype isbpl
au BufWrite,BufRead *.java retab
au BufWrite,BufRead *.js retab
au BufWrite,BufRead *.ts retab

" plugin overrides
au TabNew * set tabline=

