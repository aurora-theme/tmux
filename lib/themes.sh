#!/usr/bin/env bash

SELECTED_THEME="$(tmux show-option -gv @aurora)"

case $SELECTED_THEME in
"aurora")
  declare -A THEME=(
    ["background"]="#282c34"
    ["foreground"]="#d8dee9"
    ["highlight"]="#3e4451"
    ["active"]="#353b45"
    ["blue"]="#5e81ac"
    ["cyan"]="#88c0d0"
    ["green"]="#a3be8c"
    ["red"]="#bf616a"
    ["yellow"]="#ebcb8b"
  )
  ;;

# "onedark")
#   declare -A THEME=(
#     ["background"]="#282c34"
#     ["foreground"]="#c8ccd4"
#     ["highlight"]="#3e4451"
#     ["active"]="#353b45"
#     ["blue"]="#61afef"
#     ["cyan"]="#56b6c2"
#     ["green"]="#98c379"
#     ["red"]="#be5046"
#     ["yellow"]="#e5c07b"
#   )
#   ;;
#
# "onenord")
#   declare -A THEME=(
#     ["background"]="#282c34"
#     ["foreground"]="#c8ccd4"
#     ["highlight"]="#3e4451"
#     ["active"]="#353b45"
#     ["blue"]="#81A1C1"
#     ["cyan"]="#88C0D0"
#     ["green"]="#A3BE8C"
#     ["red"]="#D57780"
#     ["yellow"]="#EBCB8B"
#   )
#   ;;
#
# "nord-dark")
#   declare -A THEME=(
#     ["background"]="#2E3440"
#     ["foreground"]="#C8D0E0"
#     ["highlight"]="#4C566A"
#     ["active"]="#3B4252"
#     ["blue"]="#81A1C1"
#     ["cyan"]="#88C0D0"
#     ["green"]="#A3BE8C"
#     ["red"]="#D57780"
#     ["yellow"]="#EBCB8B"
#   )
#   ;;
#
# "nord-light")
#   declare -A THEME=(
#     ["background"]="#EFF0F2"
#     ["foreground"]="#4C566A"
#     ["highlight"]="#D8DEE9"
#     ["active"]="#2E3440"
#     ["blue"]="#3879C5"
#     ["cyan"]="#3EA1AD"
#     ["green"]="#48A53D"
#     ["red"]="#CB4F53"
#     ["yellow"]="#BA793E"
#   )
#   ;;

*)
  declare -A THEME=(
    ["background"]="#282c34"
    ["foreground"]="#d8dee9"
    ["highlight"]="#3e4451"
    ["active"]="#353b45"
    ["blue"]="#5e81ac"
    ["cyan"]="#88c0d0"
    ["green"]="#a3be8c"
    ["red"]="#bf616a"
    ["yellow"]="#ebcb8b"
  )
  ;;
esac

RESET="#[fg=${THEME[foreground]},bg=${THEME[background]},nobold,noitalics,nounderscore,nodim]"
