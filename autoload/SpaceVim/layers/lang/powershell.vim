"=============================================================================
" powershell.vim --- SpaceVim lang#powershell layer
" Copyright (c) 2016-2019 Wang Shidong & Contributors
" Author: Wang Shidong < wsdjeg at 163.com >
" URL: https://spacevim.org
" License: GPLv3
"=============================================================================
scriptencoding utf-8


""
" @section lang#powershell, layer-lang-powershell
" @parentsection layers
" To make this layer work well, you should install Windows PowerShell.
" @subsection mappings
" >
"   mode        key         function
"   -------------------------------------------------------------
"   normal      SPC l h     show Documentation of cursor symbol
"   normal      SPC l e     rename cursor symbol
"   normal      SPC l r     find reference of cursor symbol
" <


function! SpaceVim#layers#lang#powershell#plugins() abort
  let plugins = []
  " syntax highlighting and indent
  call add(plugins, ['wsdjeg/vim-powershell', {'merged' : 0}])
  return plugins
endfunction


function! SpaceVim#layers#lang#powershell#config() abort
  call SpaceVim#plugins#repl#reg('powershell', 'powershell')
  call SpaceVim#plugins#runner#reg_runner('powershell', 'powershell %s')
  call SpaceVim#mapping#space#regesit_lang_mappings('powershell', function('s:language_specified_mappings'))

  call SpaceVim#mapping#gd#add('powershell', function('s:go_to_def'))
endfunction


function! s:go_to_def() abort
  if !SpaceVim#layers#lsp#check_filetype('ps1')
    exec 'normal! gd'
  elseif g:spacevim_autocomplete_method ==# 'coc'
    call SpaceVim#lsp#go_to_def()
  endif
endfunction


function! SpaceVim#layers#lang#powershell#set_variable(var) abort

endfunction

function! s:language_specified_mappings() abort
  if g:spacevim_autocomplete_method ==# 'coc'
    nnoremap <silent><buffer> K :call SpaceVim#lsp#show_doc()<CR>

    call SpaceVim#mapping#space#langSPC('nnoremap', ['l', 'h'],
          \ 'call SpaceVim#lsp#show_doc()', 'show_document', 1)
    call SpaceVim#mapping#space#langSPC('nnoremap', ['l', 'e'],
          \ 'call SpaceVim#lsp#rename()', 'rename symbol', 1)
    call SpaceVim#mapping#space#langSPC('nnoremap', ['l', 'u'],
          \ 'call SpaceVim#lsp#references()', 'find references', 1)
  endif

  call SpaceVim#mapping#space#langSPC('nmap', ['l','r'], 'call SpaceVim#plugins#runner#open()', 'execute current file', 1)

  let g:_spacevim_mappings_space.l.s = {'name' : '+Send'}
  call SpaceVim#mapping#space#langSPC('nmap', ['l','s', 'i'],
        \ 'call SpaceVim#plugins#repl#start("powershell")',
        \ 'start REPL process', 1)
  call SpaceVim#mapping#space#langSPC('nmap', ['l','s', 'l'],
        \ 'call SpaceVim#plugins#repl#send("line")',
        \ 'send line and keep code buffer focused', 1)
  call SpaceVim#mapping#space#langSPC('nmap', ['l','s', 'b'],
        \ 'call SpaceVim#plugins#repl#send("buffer")',
        \ 'send buffer and keep code buffer focused', 1)
  call SpaceVim#mapping#space#langSPC('nmap', ['l','s', 's'],
        \ 'call SpaceVim#plugins#repl#send("selection")',
        \ 'send selection and keep code buffer focused', 1)
endfunction
