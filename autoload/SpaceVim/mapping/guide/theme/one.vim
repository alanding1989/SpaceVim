"=============================================================================
" one.vim --- one theme for SpaceVim
" Copyright (c) 2016-2017 Wang Shidong & Contributors
" Author: Wang Shidong < wsdjeg at 163.com >
" URL: https://spacevim.org
" License: GPLv3
"=============================================================================

function! SpaceVim#mapping#guide#theme#one#palette() abort
  let is_bright = SpaceVim#layers#colorscheme#get_variable()['bright_statusline']
  if is_bright
    " one dark, bright statusline
    return [
                \ ['#282C34', '#98C379', 114, 235],
                \ ['#ABB2BF', '#3E4452', 236, 144],
                \ ['#ABB2BF', '#3B4048', 238, 144],
                \ ['#5C6370', 59],
                \ ['#282c34', '#00af87', 235, 36],
                \ ['#282c34', '#ff8700', 235, 208],
                \ ['#282c34', '#af5f5f', 235, 131],
                \ ['#282828', '#689d6a', 235, 72],
                \ ['#282828', '#8f3f71', 235, 132],
                \ ]
  else
    " one, dark statusline
    return [
                \ ['#2c323c', '#98c379', 114, 16],
                \ ['#abb2bf', '#3b4048', 16, 145],
                \ ['#abb2bf', '#2c323c', 16, 145],
                \ ['#2c323c', 16],
                \ ['#2c323c', '#afd7d7', 114, 152],
                \ ['#2c323c', '#ff8787', 114, 210],
                \ ['#2c323c', '#d75f5f', 114, 167],
                \ ['#2c323c', '#689d6a', 114, 72],
                \ ['#2c323c', '#8f3f71', 114, 132],
                \ ]
  endif
endfunction
