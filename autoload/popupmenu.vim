
function popupmenu#set_style(kind_config)
  call rpcnotify(0, 'Gui', 'popupmenu#set_style', a:kind_config)
endfunction

function popupmenu#set_kind_config(kind_config)
  call rpcnotify(0, 'Gui', 'popupmenu#set_kind_config', a:kind_config)
endfunction

