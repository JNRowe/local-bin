FOREGROUND='#cccccc'
BACKGROUND='#222222'

_gen_font_string() {
    echo "-*-ubuntu-*-r-*-*-${1:-16}-*-*-*-*-*-*-*"
}

FONT=$(_gen_font_string)
SMALL_FONT=$(_gen_font_string 14)
TIMEOUT=3
