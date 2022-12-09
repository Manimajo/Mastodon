#!/bin/bash

scripts_dir=/

scripts=( Mastodon_001.sh Mastodon_002.sh Mastodon_003.sh Mastodon_004.sh Mastodon_005.sh )

for script in "${scripts[@]}"; do
  bash "$scripts_dir/$script"
done
