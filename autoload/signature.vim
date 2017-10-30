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

autocmd InsertLeave * call signature#hide()
