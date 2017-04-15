#! /bin/bash

chain_dir=$HOME/.monax/chains/firstchain
chain_dir_this=$chain_dir/firstchain_full_000

monax chains make firstchain --account-types=Root:2,Full:1 --unsafe
monax chains start firstchain --init-dir $chain_dir_this
