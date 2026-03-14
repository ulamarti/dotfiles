" Make commands
nn <silent> ;m :term make<CR>
nn <silent> ;b :term make build<CR>
nn <silent> ;r :term make run<CR>
nn <silent> ;c :term make clean<CR>

" Save and Quit
nor <silent> ;w :w!<CR>
nor <silent> ;q :q!<CR>

" switch between
au BufEnter,BufNew *.c* nn <silent> ;l :e %<.h*<CR>
au BufEnter,BufNew *.h* nn <silent> ;l :e %<.c*<CR>

" Rename
vn r y:%s/<C-R>"//g<Left><Left>

" Trim whitespace
nnor <silent> ;t :%s/\s\+$//e<CR>

" Format
nor ;f gg=G``:w<CR>

" Ctags
map ;d <C-]>

" Find
nn ff :find<Space>
nn ss :b<Space>

" Fix spelling
nn ;s 1z=<CR>

" Terminal
nnor <silent> t :term<CR>

" Clear
nnor <silent> <Esc> :nohl<CR>

" Toggle line numbers
map <silent> <F1> :set nu!<CR> :set rnu!<CR>

" Status
se pt=<F2>

" Toggle spell checking
map <silent> <F3> :set spell!<CR>

" Split windows
nm <silent> ;h :sp<CR>
nm <silent> ;v :vsp<CR>

" Navigate panes
nn <C-h> <C-w>h
nn <C-j> <C-w>j
nn <C-k> <C-w>k
nn <C-l> <C-w>l

" Jump to matching pairs
nn <Tab> %

" Go to start or end
nn H ^
nn L g_

" Yank the line
nn Y y$

" Select
map sa ggVG
map si viB

" Move line
vn J :m '>+1<CR>gv=gv
vn K :m '<-2<CR>gv=gv

" Auto pairs
ino ( ()<Left>
ino [ []<Left>
ino { {}<Left>
ino " ""<Left>
ino ' ''<Left>

" abbr
ab dt <C-R>=strftime("%Y-%m-%d")<CR>

" Start at last edit position
au BufReadPost * if line("'\"") > 1 | exe "norm! g'\"" | endif

" Highlight trailing whitespace
mat Search '\s\+$'

syntax on

" Miscellaneous
se si             " Smart indent
se et             " Expand tabs to spaces
se sta            " Smart tab
se is             " Inner sentence
se ai             " Automatically indent new lines
se aw             " Automatically write files
se ar             " Automatically read on change
se ic             " Case insensitive search
se hls            " Highlight search results
se sm             " Highlight matching braces
se wmnu           " Better command-line completion
se wic            " Wild ignore case
se lbr            " Line break
se hid            " Hide buffers
se tf             " Faster scrolling
se sc             " Show typed keys
se noswf          " Disable creating swap files
se sb             " Split window below
se undofile       " Enable undo after exit
se cin            " C/C++ indentation
" se cc=80          " gutter within 80 stand
se sw =3          " Soft tab stop
se sts=3          " Tab width
se ts=3           " Tab to spaces
se ls=0           " Hide Status Line
se ttm=0          " Speed up ESC key response
se ut=0           " Faster updates
se pa=**          " Enable recursive finding
se wig=*.o,*.d    " Wild ignore
se tws=10x0       " Size used when opening the terminal
se fcs=vert:\▏    " Custom vim split line
se shm+=Fc        " Avoid most of the Hit Enter Messages
se enc=utf-8      " UTF-8 byte sequence
se tag=tags;/     " Look for a file named ctags
se cb=unnamed     " Yank to clipboard
se udir=$HOME/.vim/undo
se ruf=%30(%=%#LineNr#%.50F\ [%{strlen(&ft)?&ft:'none'}]\ %l:%c\ %p%%%) " Statusline

" Color
hi Normal ctermfg=NONE ctermbg=NONE cterm=NONE
hi Visual ctermfg=NONE ctermbg=236 cterm=NONE
hi StatusLine ctermfg=0 ctermbg=NONE cterm=NONE
hi StatusLineNC ctermfg=0 ctermbg=NONE cterm=underline
hi VertSplit ctermfg=0 ctermbg=NONE cterm=NONE
hi Special ctermfg=121 ctermbg=NONE cterm=NONE
hi LineNr ctermfg=0 ctermbg=NONE cterm=NONE
hi SpecialKey ctermfg=81 ctermbg=NONE cterm=NONE
hi ModeMsg ctermfg=0 ctermbg=NONE cterm=NONE
hi MoreMsg ctermfg=0 ctermbg=NONE cterm=bold
hi NonText ctermfg=0 ctermbg=NONE cterm=NONE
hi WarningMsg ctermfg=1 ctermbg=NONE cterm=bold
hi ErrorMsg ctermfg=1 ctermbg=NONE cterm=NONE
hi Error ctermfg=1 ctermbg=NONE cterm=NONE
hi SpellBad ctermfg=1 ctermbg=NONE cterm=NONE
hi SpellCap ctermfg=1 ctermbg=NONE cterm=NONE
hi Search ctermfg=1 ctermbg=236 cterm=NONE
hi Todo ctermfg=11 ctermbg=236 cterm=bold
hi SignColumn ctermfg=NONE ctermbg=NONE cterm=NONE
hi ColorColumn ctermfg=NONE ctermbg=234 cterm=NONE
hi Folded ctermfg=0 ctermbg=NONE cterm=NONE
hi FoldColumn ctermfg=0 ctermbg=NONE cterm=NONE
hi Title ctermfg=11 ctermbg=NONE cterm=bold
hi MatchParen ctermfg=1 ctermbg=236 cterm=NONE
hi WildMenu ctermfg=13 ctermbg=NONE cterm=bold
hi Comment ctermfg=0 ctermbg=NONE cterm=NONE
hi Conceal ctermfg=0 ctermbg=NONE cterm=NONE
hi String ctermfg=13 ctermbg=NONE cterm=NONE
hi Boolean ctermfg=13 ctermbg=NONE cterm=NONE
hi Character ctermfg=81 ctermbg=NONE cterm=NONE
hi Constant ctermfg=13 ctermbg=NONE cterm=NONE
hi Number ctermfg=13 ctermbg=NONE cterm=NONE
hi Directory ctermfg=4 ctermbg=NONE cterm=bold
hi Conditional ctermfg=11 ctermbg=NONE cterm=NONE
hi Operator ctermfg=11 ctermbg=NONE cterm=NONE
hi Float ctermfg=121 ctermbg=NONE cterm=NONE
hi Exception ctermfg=81 ctermbg=NONE cterm=NONE
hi Include ctermfg=81 ctermbg=NONE cterm=NONE
hi Label ctermfg=81 ctermbg=NONE cterm=NONE
hi Statement ctermfg=11 ctermbg=NONE cterm=NONE
hi PreCondit ctermfg=159 ctermbg=NONE cterm=NONE
hi PreProc ctermfg=81 ctermbg=NONE cterm=NONE
hi Macro ctermfg=159 ctermbg=NONE cterm=NONE
hi Repeat ctermfg=11 ctermbg=NONE cterm=NONE
hi StorageClass ctermfg=81 ctermbg=NONE cterm=NONE
hi Structure ctermfg=121 ctermbg=NONE cterm=NONE
hi Type ctermfg=121 ctermbg=NONE cterm=NONE
hi SpecialChar ctermfg=11 ctermbg=NONE cterm=NONE
hi Function ctermfg=121 ctermbg=NONE cterm=bold
hi Identifier ctermfg=121 ctermbg=NONE cterm=NONE
hi Define ctermfg=0 ctermbg=NONE cterm=NONE
hi Delimiter ctermfg=0 ctermbg=NONE cterm=NONE
