#! /bin/bash

chain_dir=$HOME/.monax/chains/firstchain
chain_dir_this=$chain_dir/firstchain_full_000
addr=$(cat $chain_dir/addresses.csv | grep firstchain_full_000 | cut -d ',' -f 1) && echo $addr

cp $chain_dir/accounts.json .
monax pkgs do --chain firstchain --address $addr
