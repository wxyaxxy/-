"�����ݼ���ǰ׺
let mapleader=";"
set encoding=utf-8
"�����ļ��������
filetype on
"������⵽�Ĳ�ͬ���ͼ��ض�Ӧ�Ĳ��
filetype plugin on
"���ÿ�ݼ���ѡ���ı����Ƶ�ϵͳ������
vnoremap <Leader>y "+y
"���ÿ�ݼ���ϵͳ���������ݸ��Ƶ�vim
nmap <Leader>p "+p
"���α����Ӵ���
nnoremap nw <C-W><C-W>
"�����ݼ��ڽ�Է�֮����ת
nmap <Leader>M %
"��ʾ�к�
set number
"�����﷨��������
syntax enable
"�﷨����
syntax on
"�����ñ��������Ч
autocmd BufWritePost $MYVIMRC source $MYVIMRC

"����ʵʱ��������
set incsearch
"����ʱ��Сд������
set ignorecase
"�رռ���ģʽ
set nocompatible
"vim����������ģʽ���ܲ�ȫ
set wildmenu
"VIM�Զ����룬Ҳ���ǰѵ�ǰ�еĶ����ʽӦ�õ���һ�� �Զ�����
set autoindent
"cindent���ر����C�����﷨�Զ�����
set cindent
"��������Ķ����ʽ�����ܵ�ѡ����뷽������������C���Ա�д������
set smartindent
"����tab��Ϊ4���ո�
set tabstop=4
"���õ���֮�佻��ʱʹ��4���ո�
set shiftwidth=4
"�����Զ�����
set ai!
"��vim���б༭ʱ�����������󣬻ᷢ��������������ȥ������
set vb t_vb=
"�����˸������
set backspace=2
"��ֹ�����˸
set gcr=a:block-blinkon0
"��ֹ��ʾ������
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
"��ֹ��ʾ�˵��͹�����
set guioptions-=m
set guioptions-=T
"������ʾ״̬��
set laststatus=2
"��ʾ��굱ǰλ��
set ruler
"������ʾ��ǰ��/��
set cursorline
set cursorcolumn
"������ʾ�������
set hlsearch
" vundle ��������
filetype off
set rtp+=$HOME/.vim/bundle/Vundle.vim
" vundle ����Ĳ���б����λ�� vundle#begin() �� vundle#end() ֮��
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/indexer.tar.gz'
Plugin 'vim-scripts/DfrankUtil'
Plugin 'vim-scripts/vimprj'
Plugin 'mileszs/ack.vim'
Plugin 'dyng/ctrlsf.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'Lokaltog/vim-powerline'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'scrooloose/nerdcommenter'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'Valloric/YouCompleteMes'
Plugin 'scrooloose/nerdtree'
Plugin 'fholgado/minibufexpl.vim'
" ����б����
call vundle#end()
filetype plugin indent on

"��ɫ����
set background=dark
colorscheme solarized
"colorscheme molokai
"colorscheme phd
"����״̬��������
let g:Powerline_colorscheme='solarized256'
"����������ֺ�
set guifont=Consolas:h12
"��ֹ����
set nowrap
" �� vim ������
let g:indent_guides_enable_on_vim_startup=1
" �ӵڶ��㿪ʼ���ӻ���ʾ����
let g:indent_guides_start_level=2
" ɫ����
let g:indent_guides_guide_size=1
" ��ݼ� i ��/���������ӻ�
nmap <silent> <Leader>i <Plug>IndentGuidesToggle
" �����������﷨���д����۵�
set foldmethod=indent
"set foldmethod=syntax
" ���� vim ʱ�ر��۵�����
set nofoldenable

" ���� tagbar �Ӵ��ڵ�λ�ó��������༭������� 
let tagbar_left=1 
" ������ʾ�����ر�ǩ�б��Ӵ��ڵĿ�ݼ����ټǣ�identifier list by tag
nnoremap <Leader>ilt :TagbarToggle<CR> 
" ���ñ�ǩ�Ӵ��ڵĿ�� 
let tagbar_width=32 
" tagbar �Ӵ����в���ʾ���������Ϣ 
let g:tagbar_compact=1
" ���� ctags ����Щ�����ʶ�����ɱ�ǩ
let g:tagbar_type_cpp = {
    \ 'kinds' : [
         \ 'c:classes:0:1',
         \ 'd:macros:0:1',
         \ 'e:enumerators:0:0', 
         \ 'f:functions:0:1',
         \ 'g:enumeration:0:1',
         \ 'l:local:0:1',
         \ 'm:members:0:1',
         \ 'n:namespaces:0:1',
         \ 'p:functions_prototypes:0:1',
         \ 's:structs:0:1',
         \ 't:typedefs:0:1',
         \ 'u:unions:0:1',
         \ 'v:global:0:1',
         \ 'x:external:0:1'
     \ ],
     \ 'sro'        : '::',
     \ 'kind2scope' : {
         \ 'g' : 'enum',
         \ 'n' : 'namespace',
         \ 'c' : 'class',
         \ 's' : 'struct',
         \ 'u' : 'union'
     \ },
     \ 'scope2kind' : {
         \ 'enum'      : 'g',
         \ 'namespace' : 'n',
         \ 'class'     : 'c',
         \ 'struct'    : 's',
         \ 'union'     : 'u'
     \ }
\ }

" ���ò�� indexer ���� ctags �Ĳ���
" Ĭ�� --c++-kinds=+p+l����������Ϊ --c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v
" Ĭ�� --fields=+iaS ������ YCM Ҫ�����Ϊ --fields=+iaSl
let g:indexer_ctagsCommandLineOptions="--c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v --fields=+iaSl --extra=+q"

nnoremap <leader>jc :YcmCompleter GoToDeclaration<CR>
" ֻ���� #include ���Ѵ򿪵��ļ�
nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>

nnoremap <Leader>sp :CtrlSF<CR>

" UltiSnips �� tab ���� YCM ��ͻ�������趨
let g:UltiSnipsSnippetDirectories=["mysnippets"] 
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
let g:UltiSnipsJumpBackwardTrigger="<leader><s-tab>"

let g:NERDTreeNodeDelimiter = 'x'
" ʹ�� NERDTree ����鿴�����ļ������ÿ�ݼ����ټǣ�file list
" ����NERDTree�Ӵ��ڿ��
let NERDTreeWinSize=32
" ����NERDTree�Ӵ���λ��
let NERDTreeWinPos="right"
" ��ʾ�����ļ�
let NERDTreeShowHidden=1
" NERDTree �Ӵ����в���ʾ���������Ϣ
let NERDTreeMinimalUI=1
" ɾ���ļ�ʱ�Զ�ɾ���ļ���Ӧ buffer
let NERDTreeAutoDeleteBuffer=1
"vim������ʱ���Զ����ļ����˵�
autocmd vimenter * NERDTree
"let NERDChristmasTree=0
"let NERDTreeChDirMode=2
"let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
"let NERDTreeShowBookmarks=1
autocmd vimenter * if !argc() | NERDTree | endif " Automatically open a NERDTree if no files where specified
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif " Close vim if the only window left open is a NERDTree
nmap <F5> :NERDTreeToggle<cr>
"�����Զ���ȫ
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {<CR>}<ESC>O
inoremap < <><ESC>i

" YCM ��ȫ�˵���ɫ
" ���� YCM ��ǩ����
let g:ycm_collect_identifiers_from_tags_files=1
" �˵�
highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
" ѡ����
highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900
" ��ȫ������ע����ͬ����Ч
let g:ycm_complete_in_comments=1
" ���� vim ���� .ycm_extra_conf.py �ļ���������ʾ
let g:ycm_confirm_extra_conf=0
" ���� YCM ��ǩ��ȫ����
let g:ycm_collect_identifiers_from_tags_files=1
" ���� C++ ��׼��tags
set tags+=/data/misc/software/misc./vim/stdcpp.tags
" YCM ���� OmniCppComplete ��ȫ���棬�������ݼ�
inoremap <leader>; <C-x><C-o>
" ��ȫ���ݲ��Էָ��Ӵ�����ʽ���֣�ֻ��ʾ��ȫ�б�
set completeopt-=preview
" �ӵ�һ�������ַ��Ϳ�ʼ����ƥ����
let g:ycm_min_num_of_chars_for_completion=1
" ��ֹ����ƥ���ÿ�ζ���������ƥ����
let g:ycm_cache_omnifunc=0
" �﷨�ؼ��ֲ�ȫ			
let g:ycm_seed_identifiers_with_syntax=1
