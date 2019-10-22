"=============================================================================
" plantuml.vim --- lang#plantuml layer
" Copyright (c) 2016-2019 Wang Shidong & Contributors
" Author: Wang Shidong < wsdjeg at 163.com >
" URL: https://spacevim.org
" License: GPLv3
"=============================================================================

function! SpaceVim#layers#lang#plantuml#plugins() abort
  let plugins = []
  call add(plugins, ['aklt/plantuml-syntax', {'on_ft' : 'plantuml'}])
  call add(plugins, ['wsdjeg/vim-slumlord', {'on_ft' : 'plantuml'}])
  call add(plugins, ['weirongxu/plantuml-previewer.vim'])
  return plugins
endfunction

function! SpaceVim#layers#lang#plantuml#config() abort
  " call SpaceVim#mapping#space#regesit_lang_mappings('plantuml', function('s:language_specified_mappings'))

  augroup lang_plantuml
    autocmd!
    au FileType plantuml let g:plantuml_previewer#plantuml_jar_path = '/opt/lang-tools/java/plantuml.jar'
  augroup END
endfunction
function! s:language_specified_mappings() abort
  " call SpaceVim#mapping#space#langSPC('nnoremap', ['l','p'],
        " \ 'call SpaceVim#plugins#runner#open()',
        " \ 'preview uml file', 1)
  call SpaceVim#mapping#space#langSPC('nnoremap', ['l','p'],
        \ 'PlantumlOpen',
        \ 'preview uml file', 1)
  call SpaceVim#mapping#space#langSPC('nnoremap', ['l','c'],
        \ 'PlantumlStop',
        \ 'close uml preview file', 1)
  call SpaceVim#mapping#space#langSPC('nnoremap', ['l','s'],
        \ 'PlantumlSave',
        \ 'save uml file', 1)
endfunction
