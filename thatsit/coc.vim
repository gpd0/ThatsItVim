" Key Maps

nnoremap gd <Plug>(coc-definition)
nnoremap gr <Plug>(coc-references)
nnoremap K :call CocActionAsync('doHover')<CR>
autocmd CursorHold * silent call CocActionAsync('highlight')
