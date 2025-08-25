filetype plugin on
set nocompatible
set number
set relativenumber
set showcmd
set laststatus=0
syntax on
colorscheme default

"my functions
let g:NetrwIsOpen=0

function! ToggleNetrw()
    if g:NetrwIsOpen
        let i = bufnr("$")
        while (i >= 1)
            if (getbufvar(i, "&filetype") == "netrw")
                silent exe "bwipeout " . i 
            endif
            let i-=1
        endwhile
        let g:NetrwIsOpen=0
    else
        let g:NetrwIsOpen=1
        silent Vexplore
    endif
endfunction

"filebrowser settings
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_winsize=15
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view

"bind ctrl+u/d with zz
nnoremap <C-u> <C-u>zz
nnoremap <C-d> <C-d>zz

"my keybindings
"opens home dir in new tab
noremap <A-S-o> :tabnew<CR>:Ntree<CR>
"opens home dir in new tab
noremap <A-o> :Ntree<CR>
"opens current dir in new tab
noremap <A-S-f> :tabnew %:p:h<CR>
"toggles file browser
noremap <silent> <A-f> :call ToggleNetrw()<CR>
"toggle terminal
noremap <silent> <A-b> :botright terminal ++rows=10<CR>
"open new tab
noremap <A-w> :tabnew<CR>
"closes current tab
noremap <A-s> :close<CR>
"next tab
noremap <A-e> :tabnext<CR>
"previous tab
noremap <A-d> :tabprevious<CR>
"open FZF in newtab
noremap <A-a> :tabnew<CR>:FZF<CR>
"open FZf
noremap <A-q> :FZF<CR>
"html snippit
nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>3jwf>a

