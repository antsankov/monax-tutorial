#! /bin/bash

addr=$(cat $chain_dir/addresses.csv | grep firstchain_full_000 | cut -d ',' -f 1) && echo $addr
sleep 2
monax pkgs do --chain firstchain --address $addr

cp $HOME/.monax/chains/firstchain/accounts.json .
npm install
