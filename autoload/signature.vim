if exists('plugin_loaded_nvimqt_signature') || &cp || version < 700
  finish
endif
let plugin_loaded_nvimqt_signature = 1

" signatures: [{label: fun_name, params: [], seperation_chars: [begin, end, seperator] }]
" active_signture: idx,
" active_param: idx
fun! signature#show(signatures, active_signture, active_param, sep)
  call rpcnotify(0, "Gui", "signature#show",
  \              a:signatures, a:active_signture, a:active_param, a:sep)
endf

fun! signature#hide()
  call rpcnotify(0, "Gui", "signature#hide")
endf

" { foreground: color, background: color,
"   active-sig-backround: color, active-param-foreground: color }
fun! signature#set_style(style)
  call rpcnotify(0, "Gui", "signature#set_style", a:style)
endf

autocmd InsertLeave * call signature#hide()
