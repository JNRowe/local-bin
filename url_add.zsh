#! /bin/zsh
# I keep a list of pages I want to read/files I want to fetch *at some point* in
# ~/urls and ~/downloads respectively, this script just adds another entry to
# it.
[ -z "$1" ] && url=$(xsel) || url=$1
[ -z "${url}" ] && exit 1
ftype=${${0:t}%_*}s
echo "${url}" >> ~/${ftype}
notify-send -u low -t 2000 -i emblem-web "Added to ${ftype}" "${url}"
