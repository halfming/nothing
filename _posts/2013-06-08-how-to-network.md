---
layout: post
title: "网络设置"
date: 2013-06-08
description: ""
category: 网络
tags: [网络]
---
{% include JB/setup %}

		lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
		        inet 127.0.0.1  netmask 255.0.0.0
		        inet6 ::1  prefixlen 128  scopeid 0x10<host>
		        loop  txqueuelen 0  (Local Loopback)
		        RX packets 5762  bytes 6559565 (6.2 MiB)
		        RX errors 0  dropped 0  overruns 0  frame 0
		        TX packets 5762  bytes 6559565 (6.2 MiB)
		        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
		
		p3p1: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
		        inet 192.168.1.104  netmask 255.255.255.0  broadcast 192.168.1.255
		        inet6 fe80::5246:5dff:fe30:a676  prefixlen 64  scopeid 0x20<link>
		        ether 50:46:5d:30:a6:76  txqueuelen 1000  (Ethernet)
		        RX packets 988486  bytes 1366663592 (1.2 GiB)
		        RX errors 0  dropped 0  overruns 0  frame 0
		        TX packets 690151  bytes 59527831 (56.7 MiB)
		        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
		
		virbr0: flags=4099<UP,BROADCAST,MULTICAST>  mtu 1500
		        inet 192.168.122.1  netmask 255.255.255.0  broadcast 192.168.122.255
		        ether 52:54:00:c9:3f:8f  txqueuelen 0  (Ethernet)
		        RX packets 0  bytes 0 (0.0 B)
		        RX errors 0  dropped 0  overruns 0  frame 0
		        TX packets 0  bytes 0 (0.0 B)
		        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
		
		virbr2: flags=4099<UP,BROADCAST,MULTICAST>  mtu 1500
		        inet 192.168.100.1  netmask 255.255.255.0  broadcast 192.168.100.255
		        ether 52:54:00:46:6f:5c  txqueuelen 0  (Ethernet)
		        RX packets 0  bytes 0 (0.0 B)
		        RX errors 0  dropped 0  overruns 0  frame 0
		        TX packets 0  bytes 0 (0.0 B)
		        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
		
		virbr3: flags=4099<UP,BROADCAST,MULTICAST>  mtu 1500
		        inet 192.168.99.1  netmask 255.255.255.0  broadcast 192.168.99.255
		        ether 52:54:00:30:65:25  txqueuelen 0  (Ethernet)
		        RX packets 0  bytes 0 (0.0 B)
		        RX errors 0  dropped 0  overruns 0  frame 0
		        TX packets 0  bytes 0 (0.0 B)
		        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
		
		virbr4: flags=4099<UP,BROADCAST,MULTICAST>  mtu 1500
		        inet 192.168.88.1  netmask 255.255.255.0  broadcast 192.168.88.255
		        ether 52:54:00:e5:ff:60  txqueuelen 0  (Ethernet)
		        RX packets 0  bytes 0 (0.0 B)
		        RX errors 0  dropped 0  overruns 0  frame 0
		        TX packets 0  bytes 0 (0.0 B)
		        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
		
		wlan0: flags=4099<UP,BROADCAST,MULTICAST>  mtu 1500
		        ether dc:85:de:6b:4c:90  txqueuelen 1000  (Ethernet)
		        RX packets 0  bytes 0 (0.0 B)
		        RX errors 0  dropped 0  overruns 0  frame 0
		        TX packets 0  bytes 0 (0.0 B)
		        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
		
