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
"   mode            key             function
" <

let s:SYS = SpaceVim#api#import('system')


function! SpaceVim#layers#lang#powershell#plugins() abort
  let plugins = []
  if s:SYS.isWindows && g:spacevim_autocomplete_method ==# 'coc'
    call add(plugins, ['PProvost/vim-ps1', {'on_ft': 'ps1', 'for': 'ps1'}])
    call add(plugins, ['yatli/coc-powershell', {'build': 'call coc#powershell#install()',
          \ 'do': { -> coc#powershell#install()}}])
  endif
  return plugins
endfunction


function! SpaceVim#layers#lang#powershell#config() abort
  return

  call SpaceVim#mapping#gd#add('ipynb', function('s:go_to_def'))
  call SpaceVim#mapping#space#regesit_lang_mappings('ipynb', function('s:language_specified_mappings'))
endfunction


function! s:language_specified_mappings() abort
  let g:_spacevim_mappings_space.l.j = {'name' : '+Jupyter Notebook'}
  imap <silent><buffer> <c-o> <esc>:VimpyterInsertPythonBlock<CR>i
  call SpaceVim#mapping#space#langSPC('nmap', ['l','j','u'],
        \ 'vimpyter#updateNotebook()',
        \ 'update Notebook'        , 1)
  call SpaceVim#mapping#space#langSPC('nmap', ['l','j','j'],
        \ 'VimpyterInsertPythonBlock',
        \ 'insert python code block', 1)
  call SpaceVim#mapping#space#langSPC('nmap', ['l','j','s'],
        \ 'VimpyterStartJupyter',
        \ 'start Jupyter Notebook' , 1)
  call SpaceVim#mapping#space#langSPC('nmap', ['l','j','n'],
        \ 'VimpyterStartNteract',
        \ 'start Nteract Notebook' , 1)
  call SpaceVim#mapping#space#langSPC('nmap', ['l','j','v'],
        \ 'vimpyter#createView()',
        \ 'create view of Notebook', 1)

  let g:_spacevim_mappings_space.l.i = {'name' : '+Imports'}
  call SpaceVim#mapping#space#langSPC('nmap', ['l','i','s'],
        \ 'Neoformat isort',
        \ 'sort Imports', 1)
  call SpaceVim#mapping#space#langSPC('nmap', ['l','i','r'],
        \ 'Neoformat autoflake',
        \ 'remove unused imports', 1)

  let g:_spacevim_mappings_space.l.g = {'name' : '+Generate'}
  call SpaceVim#mapping#space#langSPC('nnoremap', ['l', 'g'],
        \ 'Pydocstring',
        \ 'generate Docstring', 1)

  let g:_spacevim_mappings_space.l.s = {'name' : '+Send'}
  call SpaceVim#mapping#space#langSPC('nmap', ['l','s', 'i'],
        \ 'call SpaceVim#plugins#repl#start("python")',
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

  if SpaceVim#layers#lsp#check_filetype('ipynb')
    nnoremap <silent><buffer> K :call SpaceVim#lsp#show_doc()<CR>
    call SpaceVim#mapping#space#langSPC('nnoremap', ['l', 'd'],
          \ 'call SpaceVim#lsp#show_doc()', 'show Document', 1)
    call SpaceVim#mapping#space#langSPC('nnoremap', ['l', 'e'],
          \ 'call SpaceVim#lsp#rename()', 'rename Symbol', 1)
    call SpaceVim#mapping#space#langSPC('nnoremap', ['l', 'r'],
          \ 'call SpaceVim#lsp#references()', 'find References', 1)
  else
    nnoremap <silent><buffer> K :call jedi#show_documentation()<CR>
    call SpaceVim#mapping#space#langSPC('nnoremap', ['l', 'd'],
          \ 'call jedi#show_documentation()', 'show Document', 1)
    call SpaceVim#mapping#space#langSPC('nnoremap', ['l', 'e'],
          \ 'call jedi#rename()', 'rename Symbol', 1)
    call SpaceVim#mapping#space#langSPC('nnoremap', ['l', 'r'],
          \ 'call jedi#usages()', 'find References', 1)
  endif

endfunction


function! s:go_to_def() abort
  if !SpaceVim#layers#lsp#check_filetype('')

  else
    call SpaceVim#lsp#go_to_def()
  endif
endfunction

function! SpaceVim#layers#lang#powershell#set_variable(var) abort

endfunction
