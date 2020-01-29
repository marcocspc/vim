" Quando dividir a tela, divida para a direita
set splitright

" Ligar autoindentação
set ai

" Numerar linhas
set number

" Comando para inserir novo slide
command Nslide r ~/.vim/newslide.txt

" Um simples destaque na linha no modo de inserção
:autocmd InsertEnter,InsertLeave * set cul!

" Fechar {, [, (, ' e " automaticamente:
inoremap (<Space> ()<Left>
inoremap [<Space> []<Left>
inoremap {<Space> {}<Left>
inoremap '<Space> ''<Left>
inoremap "<Space> ""<Left>

" Alguns comandos de aba
nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>
