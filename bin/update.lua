local computer = require("computer")
local shell = require("shell")
local term = require("term")

u = io.open("/etc/update.cfg", "r")
 textu = u:read()
  u:close()

term.clear()
term.setCursor(1,1)
print("SecureOS will now update.")
	os.sleep(1)
	term.setCursor(1,2)
shell.execute("wget -f https://raw.githubusercontent.com/Shuudoushi/SecureOS/" .. textu .. "/boot/99_login.lua /boot/99_login.lua")
	os.sleep(1)
	term.setCursor(1,4)
shell.execute("wget -f https://raw.githubusercontent.com/Shuudoushi/SecureOS/" .. textu .. "/root/sudo.lua /root/sudo.lua")
	os.sleep(1)
	term.setCursor(1,6)
shell.execute("wget -f https://raw.githubusercontent.com/Shuudoushi/SecureOS/" .. textu .. "/bin/logout.lua /bin/logout.lua")
	os.sleep(1)
	term.setCursor(1,8)
shell.execute("wget -f https://raw.githubusercontent.com/Shuudoushi/SecureOS/" .. textu .. "/bin/usage.lua /bin/usage.lua")
	os.sleep(1)
	term.setCursor(1,10)
shell.execute("wget -f https://raw.githubusercontent.com/Shuudoushi/SecureOS/" .. textu .. "/root/.root.lua /root/.root.lua")
	os.sleep(1)
	term.setCursor(1,12)
shell.execute("wget -f https://raw.githubusercontent.com/Shuudoushi/SecureOS/" .. textu .. "/bin/update.lua /bin/update.lua")
	os.sleep(1)
	term.setCursor(1,14)
shell.execute("wget -f https://raw.githubusercontent.com/Shuudoushi/SecureOS/" .. textu .. "/lib/sha256.lua /lib/sha256.lua")
	os.sleep(1)
	term.setCursor(1,16)
shell.execute("wget -f https://raw.githubusercontent.com/Shuudoushi/SecureOS/" .. textu .. "/lib/auth.lua /lib/auth.lua")
	os.sleep(1)
	term.setCursor(1,18)
shell.execute("wget -f https://raw.githubusercontent.com/Shuudoushi/SecureOS/" .. textu .. "/bin/adduser.lua /bin/adduser.lua")
	os.sleep(1)
	term.setCursor(1,20)
shell.execute("wget -f https://raw.githubusercontent.com/Shuudoushi/SecureOS/" .. textu .. "/bin/deluser.lua /bin/deluser.lua")
	os.sleep(1)
	term.setCursor(1,22)
shell.execute("wget -f https://raw.githubusercontent.com/Shuudoushi/SecureOS/" .. textu .. "/bin/uninstall.lua /bin/uninstall.lua")
	os.sleep(1)
	term.setCursor(1,24)
shell.execute("wget -f https://raw.githubusercontent.com/Shuudoushi/SecureOS/" .. textu .. "/init.lua /init.lua")
term.clear()
term.setCursor(1,1)
print("Update complete. System restarting now.")
	os.sleep(2.5)
	computer.shutdown(true)