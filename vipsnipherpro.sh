#!/bin/bash

# === CONFIG ===
DNS_SERVER="124.6.181.160"   # Fixed DNS
NS="vip2.kagerou.site"   # Your nameserver
PUBKEY="22e8953a37cb3195cdd31fa05a0f6a2630b9520049088b35122152ffa52ccf62" # Your pubkey
PORT="8888"


# === START TUNNEL ===
echo "[*] Starting SlowDNS using DNS $DNS_SERVER ..."
#dnstt-client -udp $DNS_SERVER:53 -pubkey $PUBKEY $NS 127.0.0.1:$PORT
./dns -udp $DNS_SERVER:53 -pubkey $PUBKEY $NS 127.0.0.1:$PORT
