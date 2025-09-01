#!/bin/bash

# === CONFIG ===
DNS_SERVER="124.6.181.26"   # Fixed DNS
NS="ns.xfxoj.tranz.shop"   # Your nameserver
PUBKEY="33d0e4ee5525230a3a87ce7d0086b8f02c0002df57489bc7e7e6185f47da9160" # Your pubkey
PORT="8888"


# === START TUNNEL ===
echo "[*] Starting SlowDNS using DNS $DNS_SERVER ..."
#dnstt-client -udp $DNS_SERVER:53 -pubkey $PUBKEY $NS 127.0.0.1:$PORT
./dns -udp $DNS_SERVER:53 -pubkey $PUBKEY $NS 127.0.0.1:$PORT
