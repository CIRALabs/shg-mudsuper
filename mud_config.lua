local mudconfig  = { _version = "0.1.0" }

--src zone when it's a FROM device police - dest zone when it's TO device
mudconfig.iotszone = "iots"

--dest zone when it's a FROM device police - src zone when it's TO device
mudconfig.wanzone = "wan"

--unix socket path to listen to 
mudconfig.sktpath = "/srv/lxc/mud-supervisor/rootfs/home/mud/mud_controller_skt"

--resolvers table to be used by digger
mudconfig.resolvers = {"127.0.0.1"}

--dig timeout 
mudconfig.resolvtimeout = 2

--log file path
mudconfig.outfile = "/var/log/mud_controller.log"

--Disable cache
mudconfig.disable_dns_cache = true

--Period for name-to-ip monitoring, in sec
mudconfig.monitoring_period = 60

--path for the state file of monitored names
mudconfig.statepath = "mud_controller_state.json"

return mudconfig

