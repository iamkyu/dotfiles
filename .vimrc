" ============================================================================
" VIM-PLUG :PlugInstall<CR>
" More Plugin : http://vimawesome.com gx
" ============================================================================

call plug#begin('~/.vim/plugged')
    Plug 'scrooloose/nerdtree'
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

" ============================================================================
" MAPPINGS
" ============================================================================

" 한 줄을 여러 줄로(auto-wrap)  표현할 경우 커서 이동을 직관적으로 수행
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" <F10> | NERD Tree
nnoremap <F10> :NERDTreeToggle<cr>

" <Ctrl-l> | redraws the screen and removes any search highlighting
nnoremap <silent> <C-l> :nohl<CR><C-l>