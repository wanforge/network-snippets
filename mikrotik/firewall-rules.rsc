# RouterOS Hardened Firewall Rules
/ip firewall filter
add action=accept chain=input comment="accept established,related,untracked" connection-state=established,related,untracked
add action=drop chain=input comment="drop invalid" connection-state=invalid
add action=accept chain=input comment="accept ICMP" protocol=icmp
add action=accept chain=input comment="accept loopback" in-interface=lo
add action=drop chain=input comment="drop all not coming from LAN" in-interface-list=!LAN
