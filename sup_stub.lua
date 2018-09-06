-- code that stubs the mud_supervisor 
-- for testing purposes only
-- to connect with the domain socket
-- First: lua mud_listener.lua
--   then lua sup_stub.lua

socket = require"socket"
socket.unix = require"socket.unix"
c = assert(socket.unix())
local skt_path = "mud_controller_skt"
assert(c:connect(skt_path))
print('skt connected: ', skt_path)

while 1 do
   print('Type data to send_')
   local yy = io.read()
   assert(c:send(yy .. '\n' ))
   print('Waiting reply... \n')
   data, err = c:receive()
   print("got back: \n", data .. "\n")
end
