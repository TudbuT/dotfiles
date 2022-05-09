set number
set autoindent
set tabstop=4 expandtab shiftwidth=4
set smartindent
set smarttab
set undofile

imap <C-h> <C-o>:tabp<cr>
imap <C-l> <C-o>:tabn<cr>
nmap <C-h> :tabp<cr>
nmap <C-l> :tabn<cr>
nmap <C-m>h :tabm -1<cr>
nmap <C-m>l :tabm +1<cr>
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
imap <C-space> <C-p>
imap <S-space> <C-p>
tmap <C-q> <C-\><C-n>
nnoremap <C-s> :%s/\<<C-r><C-w>\>//g<Left><Left>

syntax on
colorscheme pablo
hi TabLineFill ctermfg=grey ctermbg=black
hi TabLine ctermfg=black ctermbg=blue cterm=none
hi TabLineSel ctermfg=white ctermbg=black
hi VertSplit ctermbg=blue ctermfg=blue
hi StatusLineNC ctermbg=black ctermfg=blue
hi StatusLine ctermbg=white ctermfg=black
hi Visual ctermfg=black ctermbg=lightblue

let @m="yypk_vEr wv$r-hr+$a+\<esc>yyjp0R +\<esc>lvwhr-k_Whr|$a|\<esc>q"
let @t="j/|\<CR>Nll"
let @z="/|\<CR>ll"

silent !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
silent !xmodmap -e 'keycode 0x69 = Escape'
