function! CopyURL()
    let url = expand('<cfile>')
    if url =~ '^https\?://'
        let @+ = url
        echo "Copié : " . url
    else
        echo "Le curseur n'est pas sur une URL"
    endif
endfunction

nnoremap gu :call CopyURL()<CR>
      
