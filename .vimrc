" Evitar que, no MAC, em sessoes SSH, o vim entre no modo visual ao selecionar
set mouse=i

" Colocar indentação usando espaços
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" Quando dividir a tela, divida para a direita
set splitright

" Ligar autoindentação
set ai

" Numerar linhas
set number

" Comando para inserir novo slide
command Nslide r ~/.vim/newslide.txt

" Um simples destaque na linha no modo de inserção
autocmd InsertEnter,InsertLeave * set cul!

" Fechar {, [, (, ' e " automaticamente:
inoremap (<Space> ()<Left>
inoremap [<Space> []<Left>
inoremap {<Space> {}<Left>
inoremap '<Space> ''<Left>
inoremap "<Space> ""<Left>

" Alguns comandos de aba
nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tn  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tb  :tabprev<CR>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

" Permite o uso do registrador "* no gvim e no macvim sem precisar apertar as teclas correspondentes
" Na verdade, para o macvim este comando é necessário para que a área de transferência funcione corretamente
set clipboard=unnamed
" A mesma coisa para Linux abaixo (descomente para usar)
" set clipboard=unnamedplus

" Ativa a detecção de tipos de arquivo 
filetype plugin indent on

" Ativa a coloração do código 
syntax on

" Deixa eu apagar porra
set backspace=indent,eol,start

" Setar verificação ortográfica para alguns tipos de arquivo
autocmd FileType latex,tex,md,markdown setlocal spell spelllang=pt,en

" Inserir hífen e travessão automaticamente em alguns tipos de arquivo
autocmd FileType latex,tex,md,markdown inoremap <buffer> --<space> —<space>
autocmd FileType latex,tex,md,markdown inoremap <buffer> -- —

" Fechar tags HTML automaticamente em arquivos html e js (quanto aperta >/ ou
" ,/ no modo de inserção)
autocmd FileType html,js imap <silent> <C-c> ,/<C-X><C-O><C-X><Esc>F<i
autocmd FileType html,js imap <silent> <C-c> </<C-X><C-O><C-X><Esc>F<i

" Envolver texto selecionado no modo visual (quando se aperta v)
" entre aspas (atalho é \" quando no modo visual)
vnoremap <leader>" <esc>a"<esc>0i"<esc>
" Envolver texto selecionado no modo visual (quando se aperta v)
" entre colchetes (atalho é \[ quando no modo visual)
vnoremap <leader>[ <esc>a]<esc>0i[<esc>
" Envolver texto selecionado no modo visual (quando se aperta v)
" entre parenteses (atalho é \( quando no modo visual)
vnoremap <leader>( <esc>a)<esc>0i(<esc>
" Envolver texto selecionado no modo visual (quando se aperta v)
" entre chaves (atalho é \{ quando no modo visual)
vnoremap <leader>{ <esc>a}<esc>0i{<esc>
