" ============================================================================
" VIM-PLUG :PlugInstall<CR>
" More Plugin : http://vimawesome.com gx
" ============================================================================

call plug#begin('~/.vim/plugged')
    Plug 'scrooloose/nerdtree'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'matchit.zip'
    Plug 'vim-airline/vim-airline'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-fugitive'          " git 명령어 wrapper
    Plug 'airblade/vim-gitgutter'      " 편집기에서 마지막 커밋과 변경 비교
    Plug 'johngrib/FlatColor-johngrib' " color theme
    Plug 'godlygeek/tabular'           " text filtering and alignment
    Plug 'johngrib/vim-game-code-break'
call plug#end()

" ============================================================================
" BASIC SETTINGS
" ============================================================================

syntax enable 
filetype plugin indent on " 파일종류에  따른 플러그인/들여쓰기/하이라이팅

set history=1000
set showcmd " 화면 우측 하단에 입력중인 커맨드를 나타냄
set mouse=a " 터미널에서도 마우스 포인팅이 가능 (클릭을 통해 윈도우간 이동, 드래그 enable)
set number  " 라인 넘버 표시
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab " 자동 들여쓰기 관련 설정
set background=dark "
set laststatus=2 " 화면 하단에 상태바 표시
set ruler " 화면 우측 하단에 커서 위치를(줄,칸) 나타냄
set visualbell " 키를 잘못 눌렀을 때 경고음 대신 화면을 깜빡임
set incsearch " 검색할 텍스트를 입력하는 동안 바로 검색 수행
set hlsearch " 검색결과를 구문 강조
set clipboard=unnamed "운영체제 클립보드를 기본 레지스터에 매핑하기

set wildmenu wildignorecase " 커맨드 자동 완성 후보 목록 나타냄
set wildmode=full
" set termguicolors
colorscheme flatcolor-johngrib

" ============================================================================
" MAPPINGS
" ============================================================================

" 한 줄을 여러 줄로(auto-wrap)  표현할 경우 커서 이동을 직관적으로 수행
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" <Ctrl-t> | tabular
vnoremap <C-t> :Tabularize /

" <F10> | NERD Tree
nnoremap <F10> :NERDTreeToggle<cr>

" <Ctrl-l> | redraws the screen and removes any search highlighting
nnoremap <silent> <C-l> :nohl<CR><C-l>

if has("gui_running")
    colorscheme flatcolor-johngrib
    highlight Normal guifg=white guibg=black
endif
