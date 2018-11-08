netsh interface ip set address name="Ethernet" static <static_ip 192.168.0.80> <netmask 255.255.255.255> <gateway 192.168.0.1>
netsh interface ip set dns name="Ethernet" source="static" address="1.1.1.1"
netsh interface ip add dns name="Ethernet" addr="2.2.2.2" index=2