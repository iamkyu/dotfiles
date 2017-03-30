syntax enable 
filetype plugin on
filetype indent on

set history=1000
set mouse=a " 터미널에서도 마우스 포인팅이 가능하게 한다. (클릭을 통해 윈도우간 이동, 드래그 enable)
set number  " 라인 넘버 표시
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab

" 한 줄을 여러 줄로 표현할 경우 커서 이동을 직관적으로 수행할 수 있게 한다.
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
