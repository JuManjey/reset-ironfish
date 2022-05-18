#!/bin/bash
. $HOME/.bashrc
. $HOME/.bash_profile
mkdir -p ~/ironfish_keys
ironfish accounts:export $IRONFISH_WALLET ~/ironfish_keys/$IRONFISH_WALLET.json
cat  ~/ironfish_keys/$IRONFISH_WALLET.json
systemctl stop ironfishd ironfishd-miner
ironfish reset
ironfish accounts:import ~/ironfish_keys/$IRONFISH_WALLET.json
systemctl restart ironfishd ironfishd-miner
ironfish config:get blockGraffiti
systemctl status ironfishd ironfishd-miner














