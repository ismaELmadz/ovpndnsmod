#!/bin/bash

# === CONFIG ===
DNS_SERVER="124.6.181.25"   # Fixed DNS
NS="arjienx.kagerou.site"   # Your nameserver
PUBKEY="93cbf61c1fc56446dae86d509f438742de751d0bb305c37603f2690730f94554" # Your pubkey
PORT="8888"


# === START TUNNEL ===
echo "[*] Starting SlowDNS using DNS $DNS_SERVER ..."
dnstt-client -udp $DNS_SERVER:53 -pubkey $PUBKEY $NS 127.0.0.1:$PORT
