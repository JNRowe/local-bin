#! /bin/sh

# Lazy?  Forgetful?  Love tea?  inject the lazy forgetfulness from here.

source $(dirname $(readlink -f ${0}))/tool_settings.sh

brew() {
    dzen_text <<< "Brewing tea - Sit back and relax"
    sleep ${1}m
    dzen_text <<< "Tea ready - Go and get it"
}

case "${1}" in
red)
    brew 5 ;;
green)
    brew 4 ;;
ginger)
    brew 3.5 ;;
*)
    for i in {1..3}; do echo -e '\007'; sleep 0.25s; done &
    dzen_text <<< "tea.sh - ^fg(#ff0000)Unknown tea type"
    exit 1
esac
