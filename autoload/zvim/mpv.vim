if executable('mpv')
  let s:cmd = ['mpv', '--vid=no']
elseif executable('cvlc')
  let s:cmd = ['cvlc', '-Irc --quiet']
elseif executable('mplayer')
  let s:cmd = ['mplayer', '-quiet -playlist']
else
  echoerr 'Unite-radio player hasnt found. See :help unite-radio'
endif

let s:playId = 0
fu! s:handler(id, data, event) abort
  if a:event ==# 'exit'
    echom 'job ' . a:id . ' exit with code:' . string(a:data)
    let s:playId = 0
  endif
endf
function! zvim#mpv#stop() abort
  if s:playId != 0
    call jobstop(s:playId)
    let s:playId = 0
  endif
  delcommand MStop
endfunction
function! zvim#mpv#play(file,...) abort
  if has('nvim')
    if s:playId != 0
      call jobstop(s:playId)
      let s:playId = 0
    endif
    let s:playId =  jobstart([s:cmd[0], s:cmd[1], a:file],{
          \ 'on_stdout': function('s:handler'),
          \ 'on_stderr': function('s:handler'),
          \ 'on_exit': function('s:handler'),
          \ })
  else
    if type(s:playId) == 8 && job_status(s:playId) ==# 'run'
      call job_stop(s:playId)
      let s:playId =0
    endif
    let s:playId = job_start([s:cmd[0], s:cmd[1], a:file])
  endif
  command! MStop call zvim#mpv#stop()
endfunction
