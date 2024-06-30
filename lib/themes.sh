#!/usr/bin/env bash

SELECTED_THEME="$(tmux show-option -gv @nord-tmux_theme)"

case $SELECTED_THEME in
"dark")
  declare -A THEME=(
    ["background"]="#2E3440"
    ["foreground"]="#C8D0E0"
    ["highlight"]="#4C566A"
    ["active"]="#3B4252",
    ["blue"]="#81A1C1"
    ["cyan"]="#88C0D0"
    ["green"]="#A3BE8C"
    ["red"]="#D57780"
    ["yellow"]="#EBCB8B"
  )
  ;;

"light")
  declare -A THEME=(
    ["background"]="#EFF0F2"
    ["foreground"]="#4C566A"
    ["highlight"]="#D8DEE9"
    ["active"]="#2E3440",
    ["blue"]="#3879C5"
    ["cyan"]="#3EA1AD"
    ["green"]="#48A53D"
    ["red"]="#CB4F53"
    ["yellow"]="#BA793E"
  )
  ;;

*)
  declare -A THEME=(
    ["background"]="#2E3440"
    ["foreground"]="#C8D0E0"
    ["highlight"]="#4C566A"
    ["active"]="#3B4252",
    ["blue"]="#81A1C1"
    ["cyan"]="#88C0D0"
    ["green"]="#A3BE8C"
    ["red"]="#D57780"
    ["yellow"]="#EBCB8B"
  )
  ;;
esac

RESET="#[fg=${THEME[foreground]},bg=${THEME[background]},nobold,noitalics,nounderscore,nodim]"
