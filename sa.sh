#!/usr/bin/env bash
#=============================================================
# https://github.com/roshanconnor123/gd-utils
# File Name: sa.sh
# Author: roshanconnor
# Description:Downloading service accounts
# System Required: Debian/Ubuntu
#=============================================================

cecho() {
        local code="\033["
        case "$1" in
                black  | bk) color="${code}0;30m";;
                red    |  r) color="${code}1;31m";;
                green  |  g) color="${code}1;32m";;
                yellow |  y) color="${code}1;33m";;
                blue   |  b) color="${code}1;34m";;
                purple |  p) color="${code}1;35m";;
                cyan   |  c) color="${code}1;36m";;
                gray   | gr) color="${code}0;37m";;
                *) local text="$1"
        esac
        [ -z "$text" ] && local text="$color$2${code}0m"
        echo -e "$text"
}

# ★★★Downloading Service accounts★★★
  echo && cecho r "Downloading the service accounts from your private repo"
  echo "Provide github username"
  read username
  echo "Provide github password"
  read Password
  echo "Provide ServiceAccounts Repo Name"
  read repo
  cd ~
  git clone https://"$username":"$Password"@github.com/"$username"/"$repo"
  cp "$repo"/*.json gd-utils/sa/
  cecho b "Service accounts are added to Gdutils"
  exit
 
