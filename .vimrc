:set number
:syntax on 
:colorscheme industry 

let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

autocmd Filetype go setlocal tabstop=4
autocmd Filetype rb setlocal tabstop=2
autocmd Filetype yml setlocal tabstop=2

:hi NonText ctermbg=black ctermfg=black cterm=NONE

set tabstop=4
set shiftwidth=4
