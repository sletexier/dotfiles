" Copie l url sous le curseur avec gu
function! CopyURL()
    let url = expand('<cfile>')
    if url =~ '^https\?://'
        let @+ = url
        echo "Copié : " . url
    else
        echo "Le curseur n'est pas sur une URL"
    endif
endfunction


" Affichage
"set number
"set relativenumber
syntax on

" Recherche
set ignorecase
set smartcase
set hlsearch
set incsearch

" Indentation
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent

" Confort
set ruler
set showmatch
set wildmenu

" Encodage
set encoding=utf-8

" Repertoire courant
set autochdir


" permet de compiler le fichier courant avec :make
set makeprg=javac\ %

nnoremap <F5> :!clear && javac % && java %:r<CR>
nnoremap gu :call CopyURL()<CR>


" zz pour recentrer le cursor
" g; pour mettre le cursor au dernier chgmt
