"=============================================================================
" powershell.vim --- SpaceVim lang#powershell layer
" Copyright (c) 2016-2017 Wang Shidong & Contributors
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

let s:SYS = SpaceVim#api#import('system')


function! SpaceVim#layers#lang#powershell#plugins() abort
  let plugins = []
  if s:SYS.isWindows && g:spacevim_autocomplete_method ==# 'coc'
    " syntax highlighting and indent
    call add(plugins, ['PProvost/vim-ps1'    , {'on_ft': 'ps1', 'for': 'ps1'}])
    call add(plugins, ['yatli/coc-powershell', {'build': 'call coc#powershell#install()',
          \ 'do': { -> coc#powershell#install()}}])
  endif
  return plugins
endfunction


function! SpaceVim#layers#lang#powershell#config() abort

  call SpaceVim#mapping#gd#add('ps1', function('s:go_to_def'))
  call SpaceVim#mapping#space#regesit_lang_mappings('ps1', function('s:language_specified_mappings'))
endfunction


function! s:language_specified_mappings() abort
  if SpaceVim#layers#lsp#check_filetype('ps1')
    nnoremap <silent><buffer> K :call SpaceVim#lsp#show_doc()<CR>

    call SpaceVim#mapping#space#langSPC('nnoremap', ['l', 'h'],
          \ 'call SpaceVim#lsp#show_doc()', 'show_document', 1)
    call SpaceVim#mapping#space#langSPC('nnoremap', ['l', 'e'],
          \ 'call SpaceVim#lsp#rename()', 'rename symbol', 1)
    call SpaceVim#mapping#space#langSPC('nnoremap', ['l', 'r'],
          \ 'call SpaceVim#lsp#references()', 'find references', 1)
  endif
endfunction


function! s:go_to_def() abort
  if !SpaceVim#layers#lsp#check_filetype('ps1')

  elseif g:spacevim_autocomplete_method ==# 'coc'
    call SpaceVim#lsp#go_to_def()
  endif
endfunction


function! SpaceVim#layers#lang#powershell#set_variable(var) abort

endfunction
