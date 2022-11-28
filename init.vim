
set number
set autoindent
set tabstop=4 expandtab shiftwidth=4
set smartindent
set smarttab
set undofile
set relativenumber
set textwidth=90
set signcolumn=yes
set nowrap

inoremap <C-h> <C-o>gT
inoremap <C-l> <C-o>gt
nnoremap <C-h> gT
nnoremap <C-l> gt
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
nmap US <esc>:match Chars /./<cr>:hi Chars ctermbg=236 guibg=#262626<cr>
nmap UH <esc>:match Chars //<cr>:hi Chars ctermbg=236 guibg=#262626<cr>
nmap UW :FS<CR>:term sh -c "cp ~/.vimrc ~/Schule/IT/.vimrc ; cp ~/.config/nvim/init.vim ~/Schule/IT/init.vim ; echo COPIED ; ~/Schule/update ; cp ~/Schule/IT/.vimrc ~/.vimrc ; cp ~/Schule/IT/init.vim ~/.config/nvim/init.vim ; echo DONE"<cr><C-w><C-w>
nmap UQ! :silent !systemctl suspend<cr>
nmap U :set nohlsearch<cr>
nmap UU :nohl<cr>
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
nmap s v<C-g>
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
nmap ' `

vmap ( "9di()<esc>"9P
vmap [ "9di[]<esc>"9P
vmap { "9di{}<esc>"9P
imap ( ()<left>
imap [ []<left>
vmap gA :EasyAlign 
nmap gA :EasyAlign 

" coc
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gD gc<Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-references)
nmap <silent> gI <Plug>(coc-implementation)
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
hi TabLineFill ctermfg=grey ctermbg=black guifg=#a8a8a8 guibg=#a8a8a8
hi TabLine ctermfg=black ctermbg=blue cterm=none gui=none guifg=#1d1f21 guibg=#7aa6da
hi TabLineSel ctermfg=white ctermbg=black guifg=#dddddd guibg=#1d1f21
hi VertSplit ctermbg=blue ctermfg=blue
hi StatusLineNC ctermbg=black ctermfg=blue
hi StatusLine ctermbg=white ctermfg=black
hi Visual guifg=#000000 guibg=#00ffff ctermfg=black ctermbg=lightblue
hi CocFloating ctermbg=239 guibg=#4e4e4e
hi MatchParen guibg=darkgrey ctermbg=darkgrey
hi LineNr ctermbg=235 guibg=#262626
hi! link SignColumn LinrNr
set cursorline
hi CursorLine ctermbg=237 cterm=none guibg=#3a3a3a
hi CursorLineNr ctermbg=237 cterm=none guibg=#3a3a3a
hi Conceal guibg=#505050
hi CocInlayHint guibg=#404040
hi CocHintSign guibg=#262626
hi CocInfoSign guibg=#262626
hi CocErrorSign guibg=#602020
hi CocErrorFloat guibg=#4e4e4e guifg=#ff0000
hi CocWarningSign guibg=#382818
hi Normal guifg=#dddddd guibg=#1d1f21
hi Pmenu guibg=#800080 ctermbg=darkmagenta ctermfg=0 guifg=#dddddd
hi PmenuSel guibg=#13345a ctermbg=109 ctermfg=0 guifg=#dddddd
hi Special guifg=#4080ff
hi SpecialKey guifg=#4080ff
set guifont=Fira_Code:h10 " == === ->-->-<->- <---->
if exists("g:neovide")
    let g:neovide_scroll_animation_length=0.4
endif

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
Plug 'vim-scripts/scratch.vim'
Plug 'tudbut/floaty.nvim'
Plug 'airblade/vim-gitgutter'
Plug 'OmniSharp/omnisharp-vim'
Plug 'junegunn/vim-easy-align'
call plug#end()

silent !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
silent !xmodmap -e 'keycode 0x69 = Escape'

au BufNewFile,BufRead *.isbpl setfiletype isbpl
au BufWrite,BufRead *.java retab
au BufWrite,BufRead *.js retab
au BufWrite,BufRead *.ts retab

" plugin overrides
au TabNew,BufEnter * set tabline=
inoremap <expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<CR>"
hi CocPum guibg=#800080 ctermbg=darkmagenta ctermfg=15 guifg=#dddddd
hi CocSearch ctermfg=0 guifg=#dddddd
nmap gwu <Plug>(GitGutterUndoHunk)
nmap gwn <Plug>(GitGutterNextHunk)
nmap gwN <Plug>(GitGutterPrevHunk)
nmap gws <Plug>(GitGutterStageHunk)

" abbreviations
"abbrev fori <esc>B"0dWafor(int i = 0; i < <esc>"0pxa; i++) {<CR>}<esc>kA
abbrev psvm public static void main(String[<right> args<right> {<CR>}<esc>O
"abbrev foreach <esc>B"0dWafor(int i = 0; <esc>"0pxa.hasNext(); i++) {<CR>}<esc>kA
"abbrev sout <esc>B"0dWaSystem.out.println(<esc>"0pxa);
"abbrev serr <esc>B"0dWaSystem.err.println(<esc>"0pxa);
"abbrev ifn <esc>B"0dWaif(<esc>"0pxa == null) {<CR>}<esc>kA
"abbrev ifnn <esc>B"0dWaif(<esc>"0pxa != null) {<CR>}<esc>kA

