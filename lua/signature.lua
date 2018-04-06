local nvl = require('nvl')

local signature = {}

--- Show signature window.
-- @tparam {{label=string,params={string,...}}
-- @tparam number active_sig
-- @tparam number active_param
-- @tparam {start=string,stop=string,sep=string} sep
function signature.show(signatures, active_sig, active_param, sep)
  local broadcast_rpc = nvl.rpc{}
  broadcast_rpc.notify('Gui', 'signature#show',
    signatures, active_sig, active_param, sep)
end

--- Hide signature window.
function signature.hide()
  local broadcast_rpc = nvl.rpc{}
  broadcast_rpc.notify('Gui', 'signature#hide')
end

--- Set style for signature window.
-- @tparam {fg=string,bg=string,active_sig_bg=string,active_param_fg=string}
--  style
function signature.set_style(style)
  local broadcast_rpc = nvl.rpc{}
  broadcast_rpc.notify('Gui', 'signature#set_style', style)
end

return signature
