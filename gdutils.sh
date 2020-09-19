#!/usr/bin/env bash
#=============================================================
# https://github.com/roshanconnor123/gd-utils
# File Name: gdutils.sh
# Author: roshanconnor
# Description:running gdutils
# System Required: Debian/Ubuntu
#=============================================================

COLOR="\033["
NORMAL="${COLOR}0m"
YELLOW="${COLOR}1;33m"
RED="${COLOR}1;31m"
CYAN="${COLOR}1;36m"
BLUE="${COLOR}1;34m"
GREEN="${COLOR}1;32m"
PURPLE="${COLOR}1;35m"

# ★★★Copy from source to destination★★★
copy() {
  cd ~ && cd gd-utils
  echo "${RED}Remember to add your SAs as Viewer in source TD and as a Contributor in Destination TD${NORMAL}"
  echo "Provide Folder ID"
  read SRC
  echo "Provide Folder ID"
  read DST
  echo "${RED}~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~${NORMAL}"
  echo && echo "Copy mode selected
  
  ${PURPLE}A.Create a New Folder with the same name in the destination
  B.Donot create a new Folder in the destination${NORMAL}" && echo
  read -p " Choose A/B:" option
  
  case "$option" in
  A)
      node --max-old-space-size=512 copy $SRC $DST
	  ;;
  B)
      node --max-old-space-size=512 copy $SRC $DST -D
      ;;
  *)
      echo
      echo " ${RED}Choose the Correct Option${NORMAL}"
      ;;
  esac
}
# ★★★Calculate the size★★★
count() {
  cd ~ && cd gd-utils
  echo "${RED}Remember to add your SAs as Viewer (atleast) in source TD${NORMAL}"
  echo "Provide Folder ID"
  read SRC
  echo "${RED}~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~${NORMAL}"
  echo && echo "Size mode selected

  ${PURPLE}A.Normal Size Info
  B.Create a html file with tree like pattern
  C.Create a snap2html index${NORMAL}" && echo
  read -p "Choose A/B/C:" option
  
  case "$option" in
  A)
      node count $SRC 
	  ;;
  B)
      node count $SRC  -t tree -o /app/Tree.html
      echo " Check your Internal storage to find a file called Tree.html"
      ;;
  C) 
      node count $SRC  -t snap -o /app/Index.html
      echo "Check your Internal Storag to find a file called Index.html"
      ;;	  
  *)
      echo
      echo " ${RED}Choose the Correct Option${NORMAL}"
      ;;
  esac
}
# ★★★Dedupe The Folder★★★
dedupe() {
  cd ~ && cd gd-utils
  echo "${RED}Remember to add your SAs as Content manager (atleast) in source TD${NORMAL}\n"
  echo "Provide Folder ID\n"
  read SRC 
  node dedupe $SRC -S
}


# ★★★Running Gdutils★★★
echo && echo " ${BLUE}Gdutils${NORMAL} by ${RED}iwestlin${NORMAL} - English version by ${CYAN}Roshanconnor${NORMAL}

1.${GREEN}Copy Files to your Teamdrive${NORMAL}
➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖
2.${GREEN}Calculate Size${NORMAL}
➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖
3.${GREEN}Remove Duplicate Files${NORMAL}
➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖
4.${YELLOW}EXIT${NORMAL}" && echo
read -p " Choose any Number [1-4]:" option

case "$option" in
1)
    copy
	;;
2)
    count
    ;;
3)
    dedupe
    ;;
4)
    exit
    ;;
*)
    echo
    echo " ${RED}Choose Correct Number from the Options${NORMAL}"
    ;;
esac
