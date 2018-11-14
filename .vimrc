syntax on
set number
colo desert

set mouse=a
set hlsearch


" -----------------------------------------------------------------------------
" INDENTATION AND TEXT-WRAP
" -----------------------------------------------------------------------------

set expandtab                   " Expand tabs to spaces
set autoindent
""set copyindent                  " copy previous indentation on auto indent
set softtabstop=4               " Tab key results in # spaces
set tabstop=4                   " Tab is 4 spaces
set shiftwidth=4                " The # of spaces for indenting.
set smarttab                    " At start of line, <Tab> inserts shift width
"                                "   spaces, <Bs> deletes shift width spaces.
"
"set wrap                        " wrap lines
"set textwidth=79
"set colorcolumn=+1              " Show large lines
"set formatoptions=qrn1          " automatic formating.
"set formatoptions-=o            " don't start new lines w/ comment leader on
                                "   pressing 'o'

set nomodeline                  " don't use modeline (security)

set pastetoggle=<leader>p       " paste mode: avoid auto indent, treat chars
                                "   as literal.
set number relativenumber

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" Commenting blocks of code.
autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
autocmd FileType sh,ruby,python   let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType tex              let b:comment_leader = '% '
autocmd FileType mail             let b:comment_leader = '> '
autocmd FileType vim              let b:comment_leader = '" '
noremap <silent> + :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> - :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>
