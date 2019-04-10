"=============================================================================
" banner.vim --- SpaceVim core#banner layer
" Copyright (c) 2016-2017 Wang Shidong & Contributors
" Author: Wang Shidong < wsdjeg at 163.com >
" URL: https://spacevim.org
" License: GPLv3
"=============================================================================

scriptencoding utf-8
function! SpaceVim#layers#core#banner#config() abort
  let g:_spacevim_welcome_banners = [
        \ [
        \ '',
        \ '',
        \ '        /######                                     /##    /##/##             ',
        \ '       /##__  ##                                   | ##   | #|__/             ',
        \ '      | ##  \__/ /######  /######  /####### /######| ##   | ##/##/######/#### ',
        \ '      |  ###### /##__  ##|____  ##/##_____//##__  #|  ## / ##| #| ##_  ##_  ##',
        \ '       \____  #| ##  \ ## /######| ##     | ########\  ## ##/| #| ## \ ## \ ##',
        \ '       /##  \ #| ##  | ##/##__  #| ##     | ##_____/ \  ###/ | #| ## | ## | ##',
        \ '      |  ######| #######|  ######|  ######|  #######  \  #/  | #| ## | ## | ##',
        \ '       \______/| ##____/ \_______/\_______/\_______/   \_/   |__|__/ |__/ |__/',
        \ '               | ##                                                           ',
        \ '               | ##                                                           ',
        \ '               |__/                                                           ',
        \ '                      version : ' . g:spacevim_version . '   by : spacevim.org',
        \ '',
        \ ],
        \ [
        \ '     ┏━━━┓',
        \ '     ┃┏━┓┃ Welcome to',
        \ '     ┃┗━━┓╋╋╋╋┏━━┓╋╋╋╋┏━━┓╋╋╋╋┏━━┓╋╋╋╋┏━━┓╋╋╋╋┏┓┏┓╋╋╋╋┏━┓╋╋╋╋┏┓┏┓',
        \ '     ┗━━┓┃┏━━┓┃┏┓┃┏━━┓┃┏┓┃┏━━┓┃┏━┛┏━━┓┃┃━┫┏━━┓┃┃┃┃┏━━┓┃ ┃┏━━┓┃┗┛┃',
        \ '     ┃┗━┛┃┗━━┛┃┗┛┃┗━━┛┃┏┓┃┗━━┛┃┗━┓┗━━┛┃┃━┫┗━━┛┃┗┛┃┗━━┛┃ ┃┗━━┛┃┃┃┃',
        \ '     ┗━━━┛╋╋╋╋┃┏━┛╋╋╋╋┗┛┗┛╋╋╋╋┗━━┛╋╋╋╋┗━━┛╋╋╋╋┗━━┛╋╋╋╋┗━┛╋╋╋╋┗┻┻┛',
        \ '     ╋╋╋╋╋╋╋╋╋┃┃',
        \ '     ╋╋╋╋╋╋╋╋╋┗┛',
        \ '                 version : ' . g:spacevim_version . '   by : spacevim.org',
        \ ],
        \ [
        \ '',
        \ '      .d8888b.                                888     888d8b             ', 
        \ '     d88P  Y88b                               888     888Y8P             ', 
        \ '     Y88b.                                    888     888                ', 
        \ '      "Y888b.  88888b.  8888b.  .d8888b .d88b.Y88b   d88P88888888b.d88b. ', 
        \ '         "Y88b.888 "88b    "88bd88P"   d8P  Y8bY88b d88P 888888 "888 "88b', 
        \ '           "888888  888.d888888888     88888888 Y88o88P  888888  888  888', 
        \ '     Y88b  d88P888 d88P888  888Y88b.   Y8b.      Y888P   888888  888  888', 
        \ '      "Y8888P" 88888P" "Y888888 "Y8888P "Y8888    Y8P    888888  888  888', 
        \ '               888                                                       ', 
        \ '               888                                                       ', 
        \ '               888     version : ' . g:spacevim_version . '   by : spacevim.org', 
        \ '',
        \ ],
        \ [
        \ '',
        \ '',
        \ '      ██████  ██▓███   ▄▄▄       ▄████▄  ▓█████ ██▒   █▓ ██▓ ███▄ ▄███▓      ', 
        \ '    ▒██    ▒ ▓██░  ██▒▒████▄    ▒██▀ ▀█  ▓█   ▀▓██░   █▒▓██▒▓██▒▀█▀ ██▒      ',
        \ '    ░ ▓██▄   ▓██░ ██▓▒▒██  ▀█▄  ▒▓█    ▄ ▒███   ▓██  █▒░▒██▒▓██    ▓██░      ',
        \ '      ▒   ██▒▒██▄█▓▒ ▒░██▄▄▄▄██ ▒▓▓▄ ▄██▒▒▓█  ▄  ▒██ █░░░██░▒██    ▒██       ',
        \ '    ▒██████▒▒▒██▒ ░  ░ ▓█   ▓██▒▒ ▓███▀ ░░▒████▒  ▒▀█░  ░██░▒██▒   ░██▒      ',
        \ '    ▒ ▒▓▒ ▒ ░▒▓▒░ ░  ░ ▒▒   ▓▒█░░ ░▒ ▒  ░░░ ▒░ ░  ░ ▐░  ░▓  ░ ▒░   ░  ░      ',
        \ '    ░ ░▒  ░ ░░▒ ░       ▒   ▒▒ ░  ░  ▒    ░ ░  ░  ░ ░░   ▒ ░░  ░      ░      ',
        \ '    ░  ░  ░  ░░         ░   ▒   ░           ░       ░░   ▒ ░░      ░         ',
        \ '          ░                 ░  ░░ ░         ░  ░     ░   ░         ░         ',
        \ '                                ░                   ░                        ',
        \ '                                                                             ', 
        \ '                     version : ' . g:spacevim_version . '   by : spacevim.org',
        \ '',
        \ ],
        \ [
        \ '',
        \ '',
        \ '       ▄████████    ▄███████▄    ▄████████  ▄████████    ▄████████  ▄█    █▄   ▄█    ▄▄▄▄███▄▄▄▄  ', 
        \ '      ███    ███   ███    ███   ███    ███ ███    ███   ███    ███ ███    ███ ███  ▄██▀▀▀███▀▀▀██▄', 
        \ '      ███    █▀    ███    ███   ███    ███ ███    █▀    ███    █▀  ███    ███ ███▌ ███   ███   ███', 
        \ '      ███          ███    ███   ███    ███ ███         ▄███▄▄▄     ███    ███ ███▌ ███   ███   ███', 
        \ '    ▀███████████ ▀█████████▀  ▀███████████ ███        ▀▀███▀▀▀     ███    ███ ███▌ ███   ███   ███', 
        \ '             ███   ███          ███    ███ ███    █▄    ███    █▄  ███    ███ ███  ███   ███   ███', 
        \ '       ▄█    ███   ███          ███    ███ ███    ███   ███    ███ ███    ███ ███  ███   ███   ███', 
        \ '     ▄████████▀   ▄████▀        ███    █▀  ████████▀    ██████████  ▀██████▀  █▀    ▀█   ███   █▀ ', 
        \ '                                                                                              ', 
        \ '                                                                                              ', 
        \ '                             version : ' . g:spacevim_version . '   by : spacevim.org',
        \ '',
        \ ],
        \ [
        \ '',
        \ '',
        \ '     ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄               ▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄       ▄▄ ',
        \ '    ▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌             ▐░▌▐░░░░░░░░░░░▌▐░░▌     ▐░░▌',
        \ '    ▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀▀▀  ▐░▌           ▐░▌  ▀▀▀▀█░█▀▀▀▀ ▐░▌░▌   ▐░▐░▌',
        \ '    ▐░▌          ▐░▌       ▐░▌▐░▌       ▐░▌▐░▌          ▐░▌            ▐░▌         ▐░▌       ▐░▌     ▐░▌▐░▌ ▐░▌▐░▌',
        \ '    ▐░█▄▄▄▄▄▄▄▄▄ ▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄█░▌▐░▌          ▐░█▄▄▄▄▄▄▄▄▄    ▐░▌       ▐░▌        ▐░▌     ▐░▌ ▐░▐░▌ ▐░▌',
        \ '    ▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌          ▐░░░░░░░░░░░▌    ▐░▌     ▐░▌         ▐░▌     ▐░▌  ▐░▌  ▐░▌',
        \ '     ▀▀▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀█░▌▐░▌          ▐░█▀▀▀▀▀▀▀▀▀      ▐░▌   ▐░▌          ▐░▌     ▐░▌   ▀   ▐░▌',
        \ '              ▐░▌▐░▌          ▐░▌       ▐░▌▐░▌          ▐░▌                ▐░▌ ▐░▌           ▐░▌     ▐░▌       ▐░▌',
        \ '     ▄▄▄▄▄▄▄▄▄█░▌▐░▌          ▐░▌       ▐░▌▐░█▄▄▄▄▄▄▄▄▄ ▐░█▄▄▄▄▄▄▄▄▄        ▐░▐░▌        ▄▄▄▄█░█▄▄▄▄ ▐░▌       ▐░▌',
        \ '    ▐░░░░░░░░░░░▌▐░▌          ▐░▌       ▐░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌        ▐░▌        ▐░░░░░░░░░░░▌▐░▌       ▐░▌',
        \ '     ▀▀▀▀▀▀▀▀▀▀▀  ▀            ▀         ▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀          ▀          ▀▀▀▀▀▀▀▀▀▀▀  ▀         ▀ ',
        \ '                                                                                                                  ',
        \ '                             version : ' . g:spacevim_version . '   by : spacevim.org',
        \ '', ],
        \ [
        \ '',
        \ '',
        \ '      .▄▄ ·  ▄▄▄· ▄▄▄·  ▄▄· ▄▄▄ . ▌ ▐·▪  • ▌ ▄ ·       ',
        \ '      ▐█ ▀. ▐█ ▄█▐█ ▀█ ▐█ ▌▪▀▄.▀·▪█·█▌██ ·██ ▐███▪     ',
        \ '      ▄▀▀▀█▄ ██▀·▄█▀▀█ ██ ▄▄▐▀▀▪▄▐█▐█•▐█·▐█ ▌▐▌▐█·     ',
        \ '      ▐█▄▪▐█▐█▪·•▐█ ▪▐▌▐███▌▐█▄▄▌ ███ ▐█▌██ ██▌▐█▌     ',
        \ '       ▀▀▀▀ .▀    ▀  ▀ ·▀▀▀  ▀▀▀ . ▀  ▀▀▀▀▀  █▪▀▀▀     ',
        \ '                                                       ',
        \ '         version : ' . g:spacevim_version . '   by : spacevim.org',
        \ '',
        \ ],
        \ [
        \ '',
        \ '',
        \ '     ▄▀▀▀▀▄  ▄▀▀▄▀▀▀▄  ▄▀▀█▄   ▄▀▄▄▄▄   ▄▀▀█▄▄▄▄  ▄▀▀▄ ▄▀▀▄  ▄▀▀█▀▄    ▄▀▀▄ ▄▀▄    ', 
        \ '    █ █   ▐ █   █   █ ▐ ▄▀ ▀▄ █ █    ▌ ▐  ▄▀   ▐ █   █    █ █   █  █  █  █ ▀  █    ', 
        \ '       ▀▄   ▐  █▀▀▀▀    █▄▄▄█ ▐ █        █▄▄▄▄▄  ▐  █    █  ▐   █  ▐  ▐  █    █    ', 
        \ '    ▀▄   █     █       ▄▀   █   █        █    ▌     █   ▄▀      █       █    █     ', 
        \ '     █▀▀▀    ▄▀       █   ▄▀   ▄▀▄▄▄▄▀  ▄▀▄▄▄▄       ▀▄▀     ▄▀▀▀▀▀▄  ▄▀   ▄▀      ', 
        \ '     ▐      █         ▐   ▐   █     ▐   █    ▐              █       █ █    █       ', 
        \ '            ▐                 ▐         ▐                   ▐       ▐ ▐    ▐       ', 
        \ '                                                                                   ',
        \ '                           version : ' . g:spacevim_version . '   by : spacevim.org',
        \ '',
        \ ],
        \ [
        \ '',
        \ '',
        \ '        ▄▄▄▄▄   █ ▄▄  ██   ▄█▄    ▄███▄      ▄   ▄█ █▀▄▀█     ', 
        \ '       █     ▀▄ █   █ █ █  █▀ ▀▄  █▀   ▀      █  ██ █ █ █     ', 
        \ '     ▄  ▀▀▀▀▄   █▀▀▀  █▄▄█ █   ▀  ██▄▄   █     █ ██ █ ▄ █     ', 
        \ '      ▀▄▄▄▄▀    █     █  █ █▄  ▄▀ █▄   ▄▀ █    █ ▐█ █   █     ', 
        \ '                 █       █ ▀███▀  ▀███▀    █  █   ▐    █      ', 
        \ '                  ▀     █                   █▐        ▀       ', 
        \ '                       ▀                    ▐                 ', 
        \ '                                                              ',
        \ '         version : ' . g:spacevim_version . '   by : spacevim.org',
        \ '',
        \ ],
        \ [
        \ '',
        \ '',
        \ '    #########         #########         #########         #########         ##################         ',
        \ "    ###(_)###  [`\'`\'] ##\\`.\'/##  \':v:`  ##/\\:/\\##  |:+:|  ##\':v:`##  \\`.\'/  ##[`\'`\']###\\`~\'/##  \\`.\'/  ",
        \ "    ###| |###   |::|  ##(o:o)##  (o:0)  #/(o:o)\\#  (o:o)  ##(o:0)##  (o:o)  ###|::|####(o o)##  (o:o)  ",
        \ "    ###|_|###   |::|  ###\\:/:\\#   (:)   ###(:)###   (:)   ###(:)###   \\:/:\\ ###|::|#####\\ / \\#   \\:/:\\ ",
        \ "    #########         ####\"####         #########         #########    \"    #############\"####    \"    ",
        \ '                                                                                                       ',
        \ '                                   version : ' . g:spacevim_version . '   by : spacevim.org            ',
        \ '',
        \ ],
        \ [
        \ '',
        \ '',
        \ '     ________                              ___    _______                ',
        \ '     __  ___/________ ______ _____________ __ |  / /___(_)_______ ___    ',
        \ '     _____ \ ___  __ \_  __ `/_  ___/_  _ \__ | / / __  / __  __ `__ \   ',
        \ '     ____/ / __  /_/ // /_/ / / /__  /  __/__ |/ /  _  /  _  / / / / /   ',
        \ '     /____/  _  .___/ \__,_/  \___/  \___/ _____/   /_/   /_/ /_/ /_/    ',
        \ '             /_/                                                         ',
        \ '                                                                         ',
        \ '            version : ' . g:spacevim_version . '   by : spacevim.org',
        \ '',
        \ ],
        \ [
        \ '',
        \ '',
        \ '     @@@@@@   @@@@@@@    @@@@@@    @@@@@@@  @@@@@@@@  @@@  @@@  @@@  @@@@@@@@@@    ', 
        \ '    @@@@@@@   @@@@@@@@  @@@@@@@@  @@@@@@@@  @@@@@@@@  @@@  @@@  @@@  @@@@@@@@@@@   ', 
        \ '    !@@       @@!  @@@  @@!  @@@  !@@       @@!       @@!  @@@  @@!  @@! @@! @@!   ', 
        \ '    !@!       !@!  @!@  !@!  @!@  !@!       !@!       !@!  @!@  !@!  !@! !@! !@!   ', 
        \ '    !!@@!!    @!@@!@!   @!@!@!@!  !@!       @!!!:!    @!@  !@!  !!@  @!! !!@ @!@   ', 
        \ '     !!@!!!   !!@!!!    !!!@!!!!  !!!       !!!!!:    !@!  !!!  !!!  !@!   ! !@!   ', 
        \ '         !:!  !!:       !!:  !!!  :!!       !!:       :!:  !!:  !!:  !!:     !!:   ', 
        \ '        !:!   :!:       :!:  !:!  :!:       :!:        ::!!:!   :!:  :!:     :!:   ', 
        \ '    :::: ::    ::       ::   :::   ::: :::   :: ::::    ::::     ::  :::     ::    ', 
        \ '    :: : :     :         :   : :   :: :: :  : :: ::      :      :     :      :     ', 
        \ '                                                                                   ',
        \ '                   version : ' . g:spacevim_version . '   by : spacevim.org',
        \ '',
        \ ],
        \ [
        \ '',
        \ '',
        \ '     ______                                                 ',
        \ '     \  ___)                                                ',
        \ '      \ \   ______  __  ____   __ ___  ____  _   _   _      ',
        \ '       > > (  __  )/  \/ /\ \ / // __)/ ___)| | | | | |     ',
        \ '      / /__ | || |( ()  <  \ v / > _)( (__  | | | |_| |     ',
        \ '     /_____)|_||_| \__/\_\  > <  \___)\__ \  \_)| ._,_|     ',
        \ '                           / ^ \        _) )    | |         ',
        \ '                          /_/ \_\      (__/     |_|         ',
        \ '                                                            ',
        \ '            version : ' . g:spacevim_version . '   by : spacevim.org',
        \ '',
        \ ],
        \ [
        \ '',
        \ '',
        \ '          ...                                                                                .                         ',
        \ '      .x888888hx    :                                                                       @88>                       ', 
        \ '     d88888888888hxx   .d``                                               ...     ..        %8P      ..    .     :     ', 
        \ '    8" ... `"*8888%`   @8Ne.   .u         u           .        .u      :~""888h.:^"888:      .     .888: x888  x888.   ', 
        \ '   !  "   ` .xnxx.     %8888:u@88N     us888u.   .udR88N    ud8888.   8X   `8888X  8888>   .@88u  ~`8888~"888X`?888f`  ', 
        \ '   X X   .H8888888%:    `888I  888. .@88 "8888" <888"888k :888"8888. X888n. 8888X  ?888>  ""888E`   X888  888X "888>   ', 
        \ '   X "hn8888888*"   >    888I  888I 9888  9888  9888 "Y"  d888 "88%" "88888 8888X   ?**h.   888E    X888  888X "888>   ', 
        \ '   X: `*88888%`     !    888I  888I 9888  9888  9888      8888.+"      `*88 8888~ x88x.     888E    X888  888X "888>   ', 
        \ '   "8h.. ``     ..x8>  uW888L  888" 9888  9888  9888      8888L       ..<"  88*`  88888X    888E    X888  888X "888>   ', 
        \ '    `88888888888888f  "*88888Nu88P  9888  9888  ?8888u../ "8888c. .+     ..XC.    `*8888k   888&   "*88%""*88" "888!`  ', 
        \ '     "%8888888888*"   ~ "88888F`    "888*""888"  "8888P"   "88888%     :888888H.    `%88>   R888"    `~    "    `"`    ', 
        \ '        ^"****""`        888 ^       ^Y"   ^Y"     "P"       "YP"     <  `"888888:    X"     ""                        ', 
        \ '                         *8E                                                %888888x.-`                                ', 
        \ '                         "8>                                                  ""**""                                   ', 
        \ '                          "                                                                                            ', 
        \ '                                                                                                                       ',
        \ '            version : ' . g:spacevim_version . '   by : spacevim.org',
        \ '',
        \ ],
        \ [
        \ '',
        \ '',
        \ '               .                           .,         ,;                                        ',
        \ '              ;Wt                         ,Wt       f#i            t                            ',
        \ '             f#EED.               ..     i#D.     .E#t             Ej            ..       :     ',
        \ '           .E#f E#K:             ;W,    f#f      i#W,   t      .DD.E#,          ,W,     .Et     ',
        \ '          iWW;  E##W;           j##,  .D#i      L#D.    EK:   ,WK. E#t         t##,    ,W#t     ',
        \ '         L##LffiE#E##t         G###, :KW,     :K#Wfff;  E#t  i#D   E#t        L###,   j###t     ',
        \ '        tLLG##L E#ti##f      :E####, t#f      i##WLLLLt E#t j#f    E#t      .E#j##,  G#fE#t     ',
        \ '          ,W#i  E#t ;##D.   ;W#DG##,  ;#G      .E#L     E#tL#i     E#t     ;WW; ##,:K#i E#t     ',
        \ '         j#E.   E#ELLE##K: j###DW##,   :KE.      f#E:   E#WW,      E#t    j#E.  ##f#W,  E#t     ',
        \ '       .D#j     E#L;;;;;;,G##i,,G##,    .DW:      ,WW;  E#K:       E#t  .D#L    ###K:   E#t     ',
        \ '      ,WK,      E#t     :K#K:   L##,      L#,      .D#; ED.        E#t :K#t     ##D.    E#t     ',
        \ '      EG.       E#t    ;##D.    L##,       jt        tt t          E#t ...      #G      ..      ',
        \ '      ,                ,,,      .,,                                ,;.          j               ',
        \ '                                                                                                ',
        \ '            version : ' . g:spacevim_version . '   by : spacevim.org',
        \ '',
        \ ],
        \ [
        \ '',
        \ '',
        \ '    .................................................................    ',
        \ '    .................................................................    ',
        \ '    ..%%%%...%%%%%....%%%%....%%%%...%%%%%%..%%..%%..%%%%%%..%%...%%.    ',
        \ '    .%%......%%..%%..%%..%%..%%..%%..%%......%%..%%....%%....%%%.%%%.    ',
        \ '    ..%%%%...%%%%%...%%%%%%..%%......%%%%....%%..%%....%%....%%.%.%%.    ',
        \ '    .....%%..%%......%%..%%..%%..%%..%%.......%%%%.....%%....%%...%%.    ',
        \ '    ..%%%%...%%......%%..%%...%%%%...%%%%%%....%%....%%%%%%..%%...%%.    ',
        \ '    .................................................................    ',
        \ '                                                                         ',
        \ '            version : ' . g:spacevim_version . '   by : spacevim.org',
        \ '',
        \ ],
        \ [
        \ '',
        \ '',
        \ '          _____                   __      ___                ',
        \ '         / ____|                  \ \    / (_)               ',
        \ '        | (___  _ __   __ _  ___ __\ \  / / _ _ __ ___       ',
        \ '         \___ \| \`_ \ / _` |/ __/ _ \ \/ / | | `_ ` _ \    ',
        \ '         ____) | |_) | (_| | (_|  __/\  /  | | | | | | |     ',
        \ '        |_____/| .__/ \__,_|\___\___| \/   |_|_| |_| |_|     ',
        \ '               | |                                           ',
        \ '               |_|                                           ',
        \ '',
        \ '                      version : ' . g:spacevim_version . '   by : spacevim.org',
        \ '',
        \ ],
        \ [
        \ '',
        \ '',
        \ '       #     # ### #     #    ###  #####     ######  #######  #####  #######   ',
        \ '       #     #  #  ##   ##     #  #     #    #     # #       #     #    #      ',
        \ '       #     #  #  # # # #     #  #          #     # #       #          #      ',
        \ '       #     #  #  #  #  #     #   #####     ######  #####    #####     #      ',
        \ '        #   #   #  #     #     #        #    #     # #             #    #      ',
        \ '         # #    #  #     #     #  #     #    #     # #       #     #    #      ',
        \ '          #    ### #     #    ###  #####     ######  #######  #####     #      ',
        \ '',
        \ '                      version : ' . g:spacevim_version . '   by : spacevim.org',
        \ '',
        \ ],
        \ [
        \ '',
        \ '',
        \ '     VVVVVVVV           VVVVVVVVIIIIIIIIIIMMMMMMMM               MMMMMMMM     ',
        \ '     V::::::V           V::::::VI::::::::IM:::::::M             M:::::::M     ',
        \ '     V::::::V           V::::::VI::::::::IM::::::::M           M::::::::M     ',
        \ '     V::::::V           V::::::VII::::::IIM:::::::::M         M:::::::::M     ',
        \ '      V:::::V           V:::::V   I::::I  M::::::::::M       M::::::::::M     ',
        \ '       V:::::V         V:::::V    I::::I  M:::::::::::M     M:::::::::::M     ',
        \ '        V:::::V       V:::::V     I::::I  M:::::::M::::M   M::::M:::::::M     ',
        \ '         V:::::V     V:::::V      I::::I  M::::::M M::::M M::::M M::::::M     ',
        \ '          V:::::V   V:::::V       I::::I  M::::::M  M::::M::::M  M::::::M     ',
        \ '           V:::::V V:::::V        I::::I  M::::::M   M:::::::M   M::::::M     ',
        \ '            V:::::V:::::V         I::::I  M::::::M    M:::::M    M::::::M     ',
        \ '             V:::::::::V          I::::I  M::::::M     MMMMM     M::::::M     ',
        \ '              V:::::::V         II::::::IIM::::::M               M::::::M     ',
        \ '               V:::::V          I::::::::IM::::::M               M::::::M     ',
        \ '                V:::V           I::::::::IM::::::M               M::::::M     ',
        \ '                 VVV            IIIIIIIIIIMMMMMMMM               MMMMMMMM     ',
        \ '',
        \ '                      version : ' . g:spacevim_version . '   by : spacevim.org',
        \ '',
        \ ],
        \ [
        \ '',
        \ '',
        \ '     _    _ _____ ______     _____    _       ______  _______    _    _______    ',
        \ '    | |  | (_____)  ___ \   (_____)  | |     (____  \(_______)  | |  (_______)   ',
        \ '    | |  | |  _  | | _ | |     _      \ \     ____)  )_____      \ \  _          ',
        \ '     \ \/ /  | | | || || |    | |      \ \   |  __  (|  ___)      \ \| |         ',
        \ '      \  /  _| |_| || || |   _| |_ _____) )  | |__)  ) |_____ _____) ) |_____    ',
        \ '       \/  (_____)_||_||_|  (_____|______/   |______/|_______|______/ \______)   ',
        \ '',
        \ '                      version : ' . g:spacevim_version . '   by : spacevim.org',
        \ '',
        \ ],
        \ [
        \ '',
        \ '',
        \ '    .##.....##.####.........########.##.....##.########.########..########...####    ',
        \ '    .##.....##..##.............##....##.....##.##.......##.....##.##.........####    ',
        \ '    .##.....##..##.............##....##.....##.##.......##.....##.##.........####    ',
        \ '    .#########..##...####......##....#########.######...########..######......##.    ',
        \ '    .##.....##..##...####......##....##.....##.##.......##...##...##.............    ',
        \ '    .##.....##..##....##.......##....##.....##.##.......##....##..##.........####    ',
        \ '    .##.....##.####..##........##....##.....##.########.##.....##.########...####    ',
        \ '',
        \ '                             version : ' . g:spacevim_version . '   by : spacevim.org',
        \ '',
        \ ],
        \ [
        \ '',
        \ '',
        \ '     __     __  __                      __  __  __                                  __       __  ________    ',
        \ '    /  |   /  |/  |                    /  |/  |/  |                                /  \     /  |/        |   ',
        \ '    $$ |   $$ |$$/  _____  ____        $$ |$$/ $$ |   __   ______    _______       $$  \   /$$ |$$$$$$$$/    ',
        \ '    $$ |   $$ |/  |/     \/    \       $$ |/  |$$ |  /  | /      \  /       |      $$$  \ /$$$ |$$ |__       ',
        \ '    $$  \ /$$/ $$ |$$$$$$ $$$$  |      $$ |$$ |$$ |_/$$/ /$$$$$$  |/$$$$$$$/       $$$$  /$$$$ |$$    |      ',
        \ '     $$  /$$/  $$ |$$ | $$ | $$ |      $$ |$$ |$$   $$<  $$    $$ |$$      \       $$ $$ $$/$$ |$$$$$/       ',
        \ '      $$ $$/   $$ |$$ | $$ | $$ |      $$ |$$ |$$$$$$  \ $$$$$$$$/  $$$$$$  |      $$ |$$$/ $$ |$$ |_____    ',
        \ '       $$$/    $$ |$$ | $$ | $$ |      $$ |$$ |$$ | $$  |$$       |/     $$/       $$ | $/  $$ |$$       |   ',
        \ '        $/     $$/ $$/  $$/  $$/       $$/ $$/ $$/   $$/  $$$$$$$/ $$$$$$$/        $$/      $$/ $$$$$$$$/    ',
        \ '',
        \ '                                   version : ' . g:spacevim_version . '   by : spacevim.org',
        \ '',
        \ ],
        \ [
        \ '',
        \ '',
        \ '       _____ __ __   ___   __    __      ___ ___    ___      __ __   ___   __ __  ____       __ __  ____  ___ ___    ',
        \ '      / ___/|  |  | /   \ |  |__|  |    |   |   |  /  _]    |  |  | /   \ |  |  ||    \     |  |  ||    ||   |   |   ',
        \ '     (   \_ |  |  ||     ||  |  |  |    | _   _ | /  [_     |  |  ||     ||  |  ||  D  )    |  |  | |  | | _   _ |   ',
        \ '      \__  ||  _  ||  O  ||  |  |  |    |  \_/  ||    _]    |  ~  ||  O  ||  |  ||    /     |  |  | |  | |  \_/  |   ',
        \ '      /  \ ||  |  ||     ||  `  `  |    |   |   ||   [_     |___, ||     ||  :  ||    \     |  :  | |  | |   |   |   ',
        \ '      \    ||  |  ||     | \      /     |   |   ||     |    |     ||     ||     ||  .  \     \   /  |  | |   |   |   ',
        \ '       \___||__|__| \___/   \_/\_/      |___|___||_____|    |____/  \___/  \__,_||__|\_|      \_/  |____||___|___|   ',
        \ '',
        \ '                                            version : ' . g:spacevim_version . '   by : spacevim.org',
        \ '',
        \ ],
        \ [
        \ '',
        \ '',
        \ '   ███████╗██╗  ██╗ ██████╗ ██╗    ██╗    ███╗   ███╗███████╗    ██╗   ██╗ ██████╗ ██╗   ██╗██████╗     ██╗   ██╗██╗███╗   ███╗  ',
        \ '   ██╔════╝██║  ██║██╔═══██╗██║    ██║    ████╗ ████║██╔════╝    ╚██╗ ██╔╝██╔═══██╗██║   ██║██╔══██╗    ██║   ██║██║████╗ ████║  ',
        \ '   ███████╗███████║██║   ██║██║ █╗ ██║    ██╔████╔██║█████╗       ╚████╔╝ ██║   ██║██║   ██║██████╔╝    ██║   ██║██║██╔████╔██║  ',
        \ '   ╚════██║██╔══██║██║   ██║██║███╗██║    ██║╚██╔╝██║██╔══╝        ╚██╔╝  ██║   ██║██║   ██║██╔══██╗    ╚██╗ ██╔╝██║██║╚██╔╝██║  ',
        \ '   ███████║██║  ██║╚██████╔╝╚███╔███╔╝    ██║ ╚═╝ ██║███████╗       ██║   ╚██████╔╝╚██████╔╝██║  ██║     ╚████╔╝ ██║██║ ╚═╝ ██║  ',
        \ '   ╚══════╝╚═╝  ╚═╝ ╚═════╝  ╚══╝╚══╝     ╚═╝     ╚═╝╚══════╝       ╚═╝    ╚═════╝  ╚═════╝ ╚═╝  ╚═╝      ╚═══╝  ╚═╝╚═╝     ╚═╝  ',
        \ '',
        \ '                                                  version : ' . g:spacevim_version . '   by : spacevim.org',
        \ '',
        \ ],
        \ [
        \ '',
        \ '',
        \ '   .       .--.--.    .    .--. --.--.---..---.  .    ..---.   ',
        \ '    \     /   |  |\  /|    |   )  |    |  |      |\  /||       ',
        \ '     \   /    |  | \/ | o  |--:   |    |  |---   | \/ ||---    ',
        \ '      \ /     |  |    |    |   )  |    |  |      |    ||       ',
        \ '       `    --`--`    ` o  `--` --`--  `  `---`  `    ``---`   ',
        \ '',
        \ '               version : ' . g:spacevim_version . '   by : spacevim.org',
        \ '',
        \ ],
        \ [
        \ '',
        \ '_______________________________________________________',
        \ '=========(_)===(_) (_______)==(_______|_______|_)(_)(_)',
        \ '=================| |===================================',
        \ '=========| |===| | | ||_|| |==|  ___)====| |==| || || |',
        \ '========= \ \=/ /| | |===| |==| |========| |==| || || |',
        \ '========== \___/=|_|_|===|_|==|_|========|_|===\_____/ ',
        \ '',
        \ '               version : ' . g:spacevim_version . '   by : spacevim.org',
        \ '',
        \ ],
        \ [
        \ '',
        \ 'MN0kkkkkkkkkkkkkkdl.dKWKkkkkkkkkkkkkkKVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIM',
        \ 'Wo;looooooooool,;;;;;;;;loooooooooooolVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIM',
        \ 'Nc;lk0KKKKKKOkl;..;;;:;.lkO0KKKKKK0Oc.VIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIM',
        \ 'M0o,:OKKKKK0l:.;;;;;;;,..oO00KKK0Oo;,dVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIM',
        \ 'MMWo:OKKKKK0l;.;;;;:;..ckK00KKKOd;,oKMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIM',
        \ 'MMWo:OKKKKK0l;.;:;;..ckKKKKK0Od;,oKMMMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIM',
        \ 'MMWl:OKKKKK0l;.;..cdkK0KKK0Od;.,lKWMMMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIM',
        \ 'MWO,;OKKKKK0l;..ckKKK0KKK0d;..,::cdKWMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIM',
        \ '0d,.:0KKKKKKxclkKK0KKKK0x:..,;;;;::cdKVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIM',
        \ '....;0KKKKK0kkK0KKKK0ko:..,;;;;;;;;;,,VIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIM',
        \ 'p.:.;0KKKKK000KKKKOkll;..;;;;;;;;;;.,dVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIM',
        \ 'WKo.;OKK0KKKKKKK0x;................:kXVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIM',
        \ 'MMWl:OKKKKK0KK0k:..:ll;..col.coo:;lxooVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIM',
        \ 'MMWo:OKKKKKK0kc;..l00o..:Ox:.d0kdodKxoVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIM',
        \ 'MMWo:OKKKK0kc;...:OXx;.,xk; .xkoxodOlkVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIM',
        \ 'MMWo:0KK0kl;....,d0Oc..lOc..:Ol:llko:OVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIM',
        \ 'MMMd,lolc,cdo,..........cdkkxkxxxdkxxXVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIM',
        \ 'MMMNkooooONMWKo,......;xXMMMMMMMMMMMMMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIM',
        \ 'MMMMMMMMMMMMMMWKo,..;dXMMMMMMMMMMMMMMMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIM',
        \ 'MMMMMMMMMMMMMMMMWO.dKMMMMMMMMMMMMMMMMMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIMVIM',
        \ '',
        \ '               version : ' . g:spacevim_version . '   by : spacevim.org',
        \ '',
        \ ],
        \ ]
endfunction

" vim:set et sw=2:
