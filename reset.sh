#!/bin/bash

mkdir -p ~/ironfish_keys
yarn --cwd ~/ironfish/ironfish-cli/ start accounts:export $IRONFISH_WALLET ~/ironfish_keys/$IRONFISH_WALLET.json
cat  ~/ironfish_keys/$IRONFISH_WALLET.json
systemctl stop ironfishd ironfishd-miner
yarn --cwd ~/ironfish/ironfish-cli/ start reset
yarn --cwd ~/ironfish/ironfish-cli/ start accounts:import ~/ironfish_keys/$IRONFISH_WALLET.json
systemctl restart ironfishd ironfishd-miner
systemctl status ironfishd ironfishd-miner















