"=============================================================================
" scala.vim --- SpaceVim lang#scala layer
" Copyright (c) 2016-2017 Wang Shidong & Contributors
" Author: Wang Shidong < wsdjeg at 163.com >
" URL: https://spacevim.org
" License: GPLv3
"=============================================================================
scriptencoding utf-8


""
" @section lang#scala, layer-lang-scala
" @parentsection layers
" This layer is for Scala development.
"
" @subsection Mappings
" >
"   Import key bindings:
"
"   Mode      Key           Function
"   -------------------------------------------------------------
"   normal    <F4>          show candidates for importing of cursor symbol
"   insert    <F4>          show candidates for importing of cursor symbol
"   normal    SPC l i c     show candidates for importing of cursor symbol
"   normal    SPC l i q     prompt for a qualified import
"   normal    SPC l i o     organize imports of current file
"   normal    SPC l i s     sort imports of current file
"   insert    <c-;>i        prompt for a qualified import
"   insert    <c-;>o        organize imports of current file
"   insert    <c-;>s        sort imports of current file
"
"   Debug key bindings:
"
"   Mode      Key           Function
"   -------------------------------------------------------------
"   normal    SPC l d t     show debug stack trace of current frame
"   normal    SPC l d c     continue the execution
"   normal    SPC l d b     set a breakpoint for the current line
"   normal    SPC l d B     clear all breakpoints
"   normal    SPC l d l     launching debugger
"   normal    SPC l d i     step into next statement
"   normal    SPC l d o     step over next statement
"   normal    SPC l d O     step out of current function
"
"   Sbt key bindings:
"
"   Mode      Key           Function
"   -------------------------------------------------------------
"   normal    SPC l b c     sbt clean compile
"   normal    SPC l b r     sbt run
"   normal    SPC l b t     sbt test
"   normal    SPC l b p     sbt package
"   normal    SPC l b d     sbt show project dependencies tree
"   normal    SPC l b l     sbt reload project build definition
"   normal    SPC l b u     sbt update external dependencies
"   normal    SPC l b e     run sbt to generate .ensime config file
"
"   Execute key bindings:
"
"   Mode      Key           Function
"   -------------------------------------------------------------
"   normal    SPC l r       run main class
"
"   REPL key bindings:
"
"   Mode      Key           Function
"   -------------------------------------------------------------
"   normal    SPC l s i     start a scala inferior REPL process
"   normal    SPC l s b     send buffer and keep code buffer focused
"   normal    SPC l s l     send line and keep code buffer focused
"   normal    SPC l s s     send selection text and keep code buffer focused
"
"   Other key bindings:
"
"   Mode      Key           Function
"   -------------------------------------------------------------
"   normal    SPC l Q       bootstrap server when first-time-use
"   normal    SPC l h       show Documentation of cursor symbol
"   normal    SPC l n       inline local refactoring of cursor symbol
"   normal    SPC l e       rename cursor symbol
"   normal    SPC l g       find Definition of cursor symbol
"   normal    SPC l t       show Type of expression of cursor symbol
"   normal    SPC l p       show Hierarchical view of a package
"   normal    SPC l u       find Usages of cursor symbol
"
" <
" SpaceVim uses [`ensime-vim`](http://ensime.github.io/editors/vim/install/)
" to provide code completion, format, sort imports etc, if vim has python support.
" Also you can enable lsp layer to have a better experience.
"
"
" @subsection language server `metals-vim`
"
" Right now `metals-vim` works with `coc.nvim` to offer a richer user experience
" than other servers(LanguageClient-neovim or vim-lsp). Please make sure that
" `metals-vim` executable is in your `system $PATH`. Installation guide is here:
" [`metals-vim`](https://scalameta.org/metals/docs/editors/vim.html)
"
"
" @subsection Ensime-vim setup steps
"
" The following is quick install steps, if you want to see complete details,
" please see: [`ensime-vim`](http://ensime.github.io/editors/vim/install/)
"
" 1. Install vim`s plugin and its dependencies as following.
"
"      `pip install websocket-client sexpdata`,
"
"      `pip install pynvim` (neovim only).
"
" 2. Integration ENSIME with your build tools, here we use sbt.
"    add (sbt-ensime) as global plugin for sbt:
"    Put code `addSbtPlugin("org.ensime" % "sbt-ensime" % "2.6.1")` in file
"    '~/.sbt/plugins/plugins.sbt' (create if not exists).
"    Armed with your build tool plugin, generate the `.ensime` config file from
"    your project directory in command line, e.g. for sbt use `sbt ensimeConfig`,
"    or `./gradlew ensime` for Gradle. the first time will take several minutes.
"
" 3. The first time you use ensime-vim (per Scala version), it will `bootstrap` the
"    ENSIME server installation when opening a Scala file you will be prompted to
"    run |:EnInstall|. Do that and give it a minute or two to run.
"    After this, you should see reports in Vim's message area that ENSIME is coming
"    up, and the indexer and analyzer are ready.
"    Going forward, ensime-vim will automatically start the ENSIME server when you
"    edit Scala files in a project with an `.ensime` config present.
"
"
" @subsection Code formatting
"
" 1.  To make neoformat support scala file, you should install scalariform:
"     [`scalariform`](https://github.com/scala-ide/scalariform) or scalafmt:
"     [`scalafmt`](https://scalameta.org/scalafmt/docs/configuration.html)
"     and set layer option 'scala_formatter_path' to the path of scalariform.jar
"     or executable scalafmt.
"
" 2.  If you want to configure the format style, you should set layer option
"     `scala_formatter_scalariform_config_path` or
"     `scala_formatter_scalafmt_config_path` to the path of the config file.
"
" 3.  You can also set layer option `format_on_save=1` to enable auto format 
"     when you save buffer.
"


function! SpaceVim#layers#lang#scala#plugins() abort
  let plugins = [
        \ ['alanding1989/vim-scala', {'on_ft' : 'scala'}],
        \ ['derekwyatt/vim-sbt'    , {'merged': 0}],
        \ ]
  if has('python3') || has('python')
    call add(plugins, ['ensime/ensime-vim', {'on_ft': 'scala'}])
  endif
  return plugins
endfunction


function! SpaceVim#layers#lang#scala#config() abort
  let g:scala_use_default_keymappings = 0
  call SpaceVim#mapping#space#regesit_lang_mappings('scala', function('s:language_specified_mappings'))
  call SpaceVim#plugins#repl#reg('scala', 'scala')
  call SpaceVim#mapping#gd#add('scala', function('s:go_to_def'))
  call add(g:spacevim_project_rooter_patterns, 'build.sbt')
  augroup SpaceVim_lang_scala
    auto!
    if has('python3') || has('python')
      autocmd BufWritePost *.scala silent :EnTypeCheck
    endif
    if s:format_on_save
      autocmd BufWritePost *.scala  Neoformat
    endif
  augroup END


  if match(s:scala_formatter_path, 'scalariform') > -1
    let g:neoformat_enabled_scala  = ['scalariform']
    let g:neoformat_scala_scalariform = {
          \ 'exe'   : 'java',
          \ 'stdin' : 1,
          \ 'args': s:scala_formatter_scalariform_config_path !=# ''
          \     ? ['-jar', get(s:,'scala_formatter_path', ''), '-p='
          \     . s:scala_formatter_scalariform_config_path  , '--stdout', '%:p']
          \     : ['-jar', get(s:,'scala_formatter_path', ''), '--stdout', '%:p']
          \ }
  elseif match(s:scala_formatter_path, 'scalafmt') > -1
    let g:neoformat_enabled_scala     = ['scalafmt']
    let g:neoformat_scala_scalafmt = {
          \ 'exe'   : 'scalafmt',
          \ 'stdin' : 1,
          \ 'args'  : s:scala_formatter_scalafmt_config_path !=# ''
          \     ? ['-c ' . s:scala_formatter_scalafmt_config_path, '%:p']
          \     : ['%:p']
          \ }
  endif

  if 0
    " enable debug
    let g:neoformat_verbose = 1
    let g:neoformat_scala_scalafmt.stderr = 1
    let g:neoformat_scala_scalariform.stderr = 1
  endif
endfunction


function! s:language_specified_mappings() abort
  " ensime-vim {{{
  if exists(':EnTypeCheck')
    " this is dynamicly call and generate variable
    " `g:_spacevim_mappings_space.l, b:spacevim_lang_spcified_mappings`
    " after entering vim, so check `exists(':EnTypeCheck')` is ok.
    nnoremap <silent><buffer> <F4>     :EnSuggestImport<CR>
    inoremap <silent><buffer> <F4>     <Esc>:EnSuggestImport<CR>
    inoremap <silent><buffer> <C-;>i   <Esc>:EnAddImport<CR>
    inoremap <silent><buffer> <C-;>o   <Esc>:EnOrganizeImports<CR>
    if !SpaceVim#layers#lsp#check_filetype('scala')
      nnoremap <silent><buffer> K      :EnDocBrowse<CR>
    endif

    call SpaceVim#mapping#space#langSPC('nnoremap', ['l','Q'],
          \ 'EnInstall',
          \ 'bootstrap server when first-time-use', 1)
    call SpaceVim#mapping#space#langSPC('nnoremap', ['l','h'],
          \ 'EnDocBrowse',
          \ 'show Documentation of cursor symbol', 1)
    call SpaceVim#mapping#space#langSPC('nnoremap', ['l','e'],
          \ 'EnRename',
          \ 'Rename cursor symbol', 1)
    call SpaceVim#mapping#space#langSPC('nnoremap', ['l','n'],
          \ 'EnInline',
          \ 'Inline local refactoring of cursor symbol', 1)
    call SpaceVim#mapping#space#langSPC('nnoremap', ['l','g'],
          \ 'EnDeclarationSplit v',
          \ 'find Definition of cursor symbol', 1)
    xnoremap <silent><buffer> <Space>lt :EnType selection<CR>
    call SpaceVim#mapping#space#langSPC('nnoremap', ['l','t'],
          \ 'EnType',
          \ 'show Type of expression of cursor symbol', 1)
    call SpaceVim#mapping#space#langSPC('nnoremap', ['l','p'],
          \ 'EnShowPackage',
          \ 'show Hierarchical view of a package', 1)
    call SpaceVim#mapping#space#langSPC('nnoremap', ['l','u'],
          \ 'EnUsages',
          \ 'find Usages of cursor symbol', 1)

    " debug {{{
    let g:_spacevim_mappings_space.l.d = {'name' : '+Debug'}
    call SpaceVim#mapping#space#langSPC('nnoremap', ['l','d','t'],
          \ 'EnDebugBacktrace',
          \ 'show debug stack trace of current frame', 1)
    call SpaceVim#mapping#space#langSPC('nnoremap', ['l','d','c'],
          \ 'EnDebugContinue',
          \ 'continue the execution', 1)
    call SpaceVim#mapping#space#langSPC('nnoremap', ['l','d','b'],
          \ 'EnDebugSetBreak',
          \ 'set a breakpoint for the current line', 1)
    call SpaceVim#mapping#space#langSPC('nnoremap', ['l','d','B'],
          \ 'EnDebugClearBreaks',
          \ 'clear all breakpoints', 1)
    call SpaceVim#mapping#space#langSPC('nnoremap', ['l','d','l'],
          \ 'EnDebugStart',
          \ 'launching debugger', 1)
    call SpaceVim#mapping#space#langSPC('nnoremap', ['l','d','i'],
          \ 'EnDebugStep',
          \ 'step into next statement', 1)
    nnoremap <buffer><F7>    :EnDebugStep<CR>
    call SpaceVim#mapping#space#langSPC('nnoremap', ['l','d','o'],
          \ 'EnDebugNext',
          \ 'step over next statement', 1)
    nnoremap <buffer><F8>    :EnDebugNext<CR>
    call SpaceVim#mapping#space#langSPC('nnoremap', ['l','d','O'],
          \ 'EnDebugNext',
          \ 'step out of current function', 1)
    "}}}

    " import {{{
    let g:_spacevim_mappings_space.l.i = {'name' : '+Import'}
    call SpaceVim#mapping#space#langSPC('nnoremap', ['l','i','i'],
          \ 'EnSuggestImport',
          \ 'Show candidates for importing of cursor symbol', 1)
    call SpaceVim#mapping#space#langSPC('nnoremap', ['l','i','q'],
          \ 'EnAddImport',
          \ 'Prompt for a qualified import', 1)
    call SpaceVim#mapping#space#langSPC('nnoremap', ['l','i','o'],
          \ 'EnOrganizeImports',
          \ 'Organize imports of current file', 1) " }}}
  endif
  " }}}

  " import `vim-scala`
  let g:_spacevim_mappings_space.l.i =
        \ get(g:_spacevim_mappings_space.l, 'i', {'name' : '+Import'})
  inoremap <silent><buffer> <C-;>s   <Esc>:SortScalaImports<CR>
  call SpaceVim#mapping#space#langSPC('nnoremap', ['l', 'i', 's'],
        \ 'SortScalaImports', 'sort imports', 1)

  if SpaceVim#layers#lsp#check_filetype('scala') && executable('metals-vim')
    nnoremap <silent><buffer> K :call SpaceVim#lsp#show_doc()<CR>
    call SpaceVim#mapping#space#langSPC('nnoremap', ['l', 'd'],
          \ 'call SpaceVim#lsp#show_doc()', 'show Document', 1)
    call SpaceVim#mapping#space#langSPC('nnoremap', ['l', 'e'],
          \ 'call SpaceVim#lsp#rename()()', 'rename Symbol', 1)
    call SpaceVim#mapping#space#langSPC('nnoremap', ['l', 'g'],
          \ 'call SpaceVim#lsp#go_to_def()', 'goto Definition', 1)
    call SpaceVim#mapping#space#langSPC('nnoremap', ['l', 'u'],
          \ 'call SpaceVim#lsp#references()', 'find References', 1)
  endif

  " Execute
  call SpaceVim#mapping#space#langSPC('nnoremap', ['l','r'], 'call call('
        \ . string(function('s:execCMD')) . ', ["sbt run"])',
        \ 'Run main class', 1)
  nnoremap <buffer><F10>  :call <sid>execCMD('sbt run')<CR>

  " Sbt
  let g:_spacevim_mappings_space.l.b = {'name' : '+Sbt'}
  if exists(':EnTypeCheck')
    call SpaceVim#mapping#space#langSPC('nnoremap', ['l','b', 'e'], 'call call('
          \ . string(function('s:execCMD')) . ', ["sbt ensimeConfig"])',
          \ 'Run sbt to generate .ensime file', 1)
  endif

  call SpaceVim#mapping#space#langSPC('nnoremap', ['l','b', 'c'], 'call call('
        \ . string(function('s:execCMD')) . ', ["sbt ~compile"])',
        \ 'Run sbt continuous compile', 1)
  call SpaceVim#mapping#space#langSPC('nnoremap', ['l','b', 'C'], 'call call('
        \ . string(function('s:execCMD')) . ', ["sbt clean compile"])',
        \ 'Run sbt clean compile', 1)
  call SpaceVim#mapping#space#langSPC('nnoremap', ['l','b', 't'], 'call call('
        \ . string(function('s:execCMD')) . ', ["sbt test"])',
        \ 'Run sbt test', 1)
  call SpaceVim#mapping#space#langSPC('nnoremap', ['l','b', 'p'], 'call call('
        \ . string(function('s:execCMD')) . ', ["sbt package"])',
        \ 'Run sbt to package jar', 1)
  call SpaceVim#mapping#space#langSPC('nnoremap', ['l','b', 'd'], 'call call('
        \ . string(function('s:execCMD')) . ', ["sbt inspect tree compile:sources"])',
        \ 'Run sbt to show project dependencies tree', 1)
  call SpaceVim#mapping#space#langSPC('nnoremap', ['l','b', 'l'], 'call call('
        \ . string(function('s:execCMD')) . ', ["sbt reload"])',
        \ 'Run sbt to reload build definition', 1)
  call SpaceVim#mapping#space#langSPC('nnoremap', ['l','b', 'u'], 'call call('
        \ . string(function('s:execCMD')) . ', ["sbt update"])',
        \ 'Run sbt to update external dependencies', 1)

  " REPL
  let g:_spacevim_mappings_space.l.s = {'name' : '+Send'}
  call SpaceVim#mapping#space#langSPC('nmap', ['l','s', 'i'],
        \ 'call SpaceVim#plugins#repl#start("scala")',
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


let s:format_on_save                          = 0
let s:formatter_scalariform_path              = ''
let s:scala_formatter_scalariform_config_path = ''
let s:scala_formatter_scalafmt_config_path    = ''
function! SpaceVim#layers#lang#scala#set_variable(var) abort
  let s:format_on_save = get(a:var, 'format_on_save', 0)

  let s:scala_formatter_path = get(a:var, 'scala_formatter_path', '')

  let s:scala_formatter_scalariform_config_path =
        \ expand(get(a:var, 'scala_formatter_scalariform_config_path', ''))

  let s:scala_formatter_scalafmt_config_path    =
        \ expand(get(a:var, 'scala_formatter_scalafmt_config_path', ''))
endfunction


function! s:go_to_def() abort
  if SpaceVim#layers#lsp#check_filetype('scala') && executable('metals-vim')
    call SpaceVim#lsp#go_to_def()
  else
    EnDeclarationSplit v
  endif
endfunction

function! s:execCMD(cmd) abort
  try
    call unite#start([['output/shellcmd', a:cmd]], {'log': 1, 'wrap': 1,'start_insert':0})
  catch
    exec '!'.a:cmd
  endtry
endfunction

" vim:set et sw=2 cc=80:
