#!/bin/bash
# Download latest node and install.
fgclink=`curl -s https://api.github.com/repos/FantasyGold/FantasyGold-Core/releases/latest | grep browser_download_url | grep linux64 | cut -d '"' -f 4`
mkdir -p /tmp/FantasyGold
cd /tmp/FantasyGold
curl -Lo FantasyGold.tar.gz $fgclink
tar -xzf FantasyGold.tar.gz
sudo mv ./bin/* /usr/local/bin
cd
rm -rf /tmp/FantasyGold
mkdir ~/.FantasyGold

# Setup configuration for node.
rpcuser=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 13 ; echo '')
rpcpassword=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 32 ; echo '')
cat >~/.FantasyGold/FantasyGold.conf <<EOL
rpcuser=$rpcuser
rpcpassword=$rpcpassword
daemon=1
txindex=1
EOL

# Start node.
FantasyGoldd
