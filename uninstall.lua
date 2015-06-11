local shell = require("shell")
local computer = require("computer")

shell.execute("rm /autorun.lua")
shell.execute("rm /lib/sha256.lua")
shell.execute("rm /lib/auth.lua")
shell.execute("rm /bin/logout.lua")
shell.execute("rm /bin/usage.lua")
shell.execute("rm /bin/update.lua")
shell.execute("rm /etc/passwd")
shell.execute("rm /usr/home/")
shell.execute("rm /root/")

computer.shutdown(true)