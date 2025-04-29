
" install vim plug, instructions here https://github.com/junegunn/vim-plug?tab=readme-ov-file#installation
call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-bufferline'

call plug#end()

" AIRLINE AND BUFFERLINE OPTIONS
let g:airline_powerline_fonts = 1
" let g:airline_theme='gruvbox'
let g:bufferline_active_buffer_left = ''
let g:bufferline_active_buffer_right = ''
let g:bufferline_echo = 0
let g:bufferline_show_bufnr = 0


" IMPORTANT OPTIONS
set shell=c:\msys64\usr\bin\bash.exe
set shellcmdflag=-c
set shellxquote='
set showmode
set clipboard=unnamed
set encoding=utf-8
set number
set relativenumber
set tabstop=2 softtabstop=2 shiftwidth=2
set expandtab
set hidden
syntax enable
" set nobackup       		"no backup files
set nowritebackup  		"only in case you don't want a backup file while editing
set noswapfile
set guioptions-=m               " remove menubar (notice the -=)
set guioptions-=T               " remove toolbar (notice the -=)
set guioptions-=l
cd d:/dev/notes/
set ignorecase


" APPEARANCE
" Patched fonts for powerline at https://github.com/powerline/fonts. Use :set guifont=* and set guifont? to choose
"   from installed fonts
set guifont=DejaVu_Sans_Mono_for_Powerline:h14:cANSI
" Get color schemes at https://github.com/rafi/awesome-vim-colorschemes/tree/master?tab=readme-ov-file#color-schemes
:colo afterglow
" Airline themes at https://github.com/vim-airline/vim-airline-themes/tree/master/autoload/airline/themes
" ⚠ having airline themes set is on purpose, atomic makes the status short (N, I, C, etc.) and then jet sets the color
let g:airline_theme='atomic'
let g:airline_theme='jet'

set smartcase " use case sensitive only when there are actual UPPER case in the search. otherwise, case insensitive

" CURSOR & HOW IT BLINKS
set guicursor=n-v-c:block-Cursor
set guicursor+=i-ci-c:ver20-Cursor-blinkwait500-blinkon200-blinkoff200
set guicursor+=n-v:blinkwait500-blinkon300-blinkoff300

" WINDOW
winpos 400 120			 " position of window
set lines=40 columns=150 " size of the window
" au GUIEnter * simalt ~x " maximize

" TABS/SPACES
set tabstop=4 " show existing tab with 4 spaces width
set shiftwidth=4 " when indenting with '>', use 4 spaces width
set expandtab " On pressing tab, insert 4 spaces
set backspace=indent,eol,start

" MAPPINGS
imap jk <esc>
xnoremap p pgvy
nnoremap è /
nnoremap s F
vnoremap s F

" Explorer config
let g:netrw_winsize = 30
let g:netrw_banner = 0
let g:netrw_liststyle = 3
" let g:netrw_browse_split = 4
let g:netrw_altv = 1


let mapleader = "\<space>"

" open all files in pwd in buffers
nnoremap <Leader>cd :cd d:\dev\notes\
nnoremap <Leader>e :e<Space>
nnoremap <Leader>p :pwd<cr>

" launch netrw
nnoremap <Leader>x :Ex<CR>
nnoremap <c-x> :Ex<Space>d:/dev/notes/<cr>

" source vimrc to update new config
nnoremap <Leader>so :so ~/vimfiles/_vimrc<CR> <bar> :echo '_vimrc reloaded'<CR>

" open vimrc for edition
nnoremap <Leader>conf :e ~/vimfiles/_vimrc<CR>
" open default session file for edition
nnoremap <Leader>session :e d:/dev/notes/session.vim<CR>

" Buffers management
" next/previous buffer (inverted because yes)
nnoremap <M-p> :bn!<CR>
nnoremap <M-n> :bp!<CR>
nnoremap <Leader>k :ls<CR>
nnoremap <Leader>d :bd<cr>
nnoremap <Leader>b :ls<CR>:b<Space>
nnoremap <Leader>n :enew<cr>
nnoremap <leader>a <c-^>
nnoremap <leader>vs :vs<cr>
" create a quick list containing all the buffers
" [Obsolete] nnoremap <Leader>b1 :call setqflist(map(filter(range(1, bufnr('$')), 'buflisted(v:val)'), '{"bufnr": v:val}'))<CR> <bar> :copen<CR>


" execute macro named a
nnoremap <Leader>m @a

" toggle search highlighting mode on/off - using https://stackoverflow.com/a/7207964
nnoremap <c-h> :set hlsearch!<CR>

" toggle relative number
nnoremap <leader>r :set relativenumber!<CR>

"
" " navigation accross splits
nnoremap <s-m-j> <c-w>j
nnoremap <s-m-h> <c-w>h
nnoremap <s-m-k> <c-w>k
nnoremap <s-m-l> <c-w>l


" Append datetime to the end of the line
nnoremap <m-d> $A<C-R>=strftime(" - %Y-%m-%d %a %I:%M %p")<CR><Esc>
nnoremap <m-c> i✅

" Go to beginning of the line and remove everything
nnoremap <Leader>C _C

" Save session into d:/dev/notes/session.vim
nnoremap <c-s> :mksession! d:/dev/notes/session.vim<CR> <bar> :echo 'Saved session in session.vim'<CR>
nnoremap <c-l> :so d:/dev/notes/session.vim<CR> <bar> :echo 'Loaded session from session.vim'<CR>

" Smart search/replace shortcut
nnoremap <c-è> :set nohlsearch<cr> <bar> :%s///gc<left><left><left><left>
" hlsearch

" Move left and right in command mode
cnoremap <M-h> <Left>
cnoremap <M-l> <Right>
" Move up and down in command mode (commands history!)
cnoremap <M-n> <Down>
cnoremap <M-p> <Up>

" Restart syntax highlight
nnoremap <c-y> :syntax off<CR>:syntax enable<CR>

" Force syntax reload when entering a buffer and leaving insert mode
autocmd BufEnter,InsertLeave * :syntax sync fromstart

nnoremap <c-a> :AirlineTheme<space>

" quick menu open
noremap <leader>q :call quickmenu#toggle(0)<cr>
let g:quickmenu_options = "T"
let g:quickmenu_padding_left=0
let g:quickmenu_disable_nofile=0


" QUICK MENU SETUP
" first install quickMenu like explained here https://github.com/skywind3000/quickmenu.vim?tab=readme-ov-file#install
call g:quickmenu#reset()
call g:quickmenu#append('# TP', '')
call g:quickmenu#append('tp 4', ':e d:/dev/notes/tp/4.tdl', 'select item 2.1')
call g:quickmenu#append('tp 4 - done', ':e d:/dev/notes/tp/4-done.tdl', 'select item 2.1')
call g:quickmenu#append('tp 5', ':e d:/dev/notes/tp/5.tdl', 'select item 2.1')
call g:quickmenu#append('# VStack', '')
call g:quickmenu#append('vstack 3.1', ':e d:/dev/notes/vstack/current-v3.1.tdl', 'select item 2.1')
call g:quickmenu#append('vstack 3.1 - done', ':e d:/dev/notes/vstack/current-v3.1-done.tdl', 'select item 2.1')
call g:quickmenu#append('vstack 3.2', ':e d:/dev/notes/vstack/next-v3.2.tdl', 'select item 2.1')
