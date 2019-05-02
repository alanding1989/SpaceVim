"=============================================================================
" github.vim --- github layer file for SpaceVim
" Copyright (c) 2018 Shidong Wang & Contributors
" Author: Shidong Wang < wsdjeg at 163.com >
" URL: https://spacevim.org
" License: GPLv3
"=============================================================================

""
" @section github, layer-github
" @parentsection layers
" This layer provides GitHub integration for SpaceVim
"
" @subsection Mappings
" >
"   Mode      Key           Function
"   -------------------------------------------------------------
"   normal    SPC g h i     show issues
"   normal    SPC g h a     show activities
"   normal    SPC g h d     show dashboard
"   normal    SPC g h f     show current file in browser
"   normal    SPC g h I     show issues in browser
"   normal    SPC g h p     show PRs in browser
" <

function! SpaceVim#layers#github#plugins() abort
  return [
        \ ['jaxbot/github-issues.vim', { 'on_cmd' : 'Gissues' }],
        \ ['junegunn/vim-github-dashboard', {
        \ 'on_cmd': ['GHA', 'GHD', 'GHActivity', 'GHDashboard'],
        \ }],
        \ ['tyru/open-browser-github.vim',  {
        \ 'depends': 'open-browser.vim',
        \ 'on_cmd': ['OpenGithubFile', 'OpenGithubIssue', 'OpenGithubPullReq'],
        \ }],
        \ ['wsdjeg/GitHub-api.vim', {'merged' : 0}],
        \ ['lambdalisue/vim-gista', {'merged' : 0}],
        \ ]
endfunction

function! SpaceVim#layers#github#config() abort
  " TODO Remove duplicated line exists in git layer
  let g:_spacevim_mappings_space.g = get(g:_spacevim_mappings_space, 'g',  {
        \ 'name' : '+VersionControl/git',
        \ })
  let g:_spacevim_mappings_space.g.i = { 'name': '+GitHub' }
  let g:_spacevim_mappings_space.g.g = { 'name': '+Gist' }

  " @todo remove the username
  " autoload to set default username
  call SpaceVim#mapping#space#def('nnoremap', ['g', 'g', 'l'], 'Gista list',
        \ 'list gist', 1)
  call SpaceVim#mapping#space#def('nnoremap', ['g', 'g', 'p'], 'Gista post',
        \ 'post selection or current file', 1, 1)

  "" jaxbot/github-issues.vim {{{
  " Disable completion by github-issues.vim. Because github-complete.vim
  " provides more powerful completion.
  let g:github_issues_no_omni = 1

  call SpaceVim#mapping#space#def('nnoremap', ['g', 'i', 'i'], 'Gissues',
        \ 'show issues', 1)
  "" }}}

  "" junegunn/vim-github-dashboard {{{
  let g:github_dashboard = {
        \ 'username': g:spacevim_github_username,
        \ }

  call SpaceVim#mapping#space#def('nnoremap', ['g', 'i', 'a'], 'GHActivity',
        \ 'show activities', 1)
  call SpaceVim#mapping#space#def('nnoremap', ['g', 'i', 'd'], 'GHDashboard',
        \ 'show dashboard', 1)
  "" }}}

  "" tyru/open-browser-github.vim {{{
  call SpaceVim#mapping#space#def('nnoremap', ['g', 'i', 'f'], 'OpenGithubFile',
        \ 'show current file in browser', 1)
  call SpaceVim#mapping#space#def('nnoremap', ['g', 'i', 'I'],
        \ 'OpenGithubIssue', 'show issues in browser', 1)
  call SpaceVim#mapping#space#def('nnoremap', ['g', 'i', 'p'],
        \ 'OpenGithubPullReq', 'show PRs in browser', 1)
  "" }}}
endfunction
