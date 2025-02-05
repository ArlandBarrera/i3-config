#!/bin/sh

get_mic_default() {
    pactl info | awk '/Default Source:/ {print $3}'
}

is_mic_muted() {
    pactl get-source-mute "$(get_mic_default)" | awk '{print $2}'
}

#Muted microphone
#https://fontawesome.com/icons/microphone-slash?f=classic&s=solid

#Unmuted microphone
#https://fontawesome.com/icons/microphone?f=classic&s=solid

get_mic_status() {
    if [ "$(is_mic_muted)" = "yes" ]; then
        printf "%s\n" "MICX"
    else
        printf "%s\n" "MIC"
    fi
}

listen() {
    get_mic_status
    LANG=EN; pactl subscribe | while read -r event; do
        if printf "%s\n" "${event}" | grep -qE '(source|server)'; then
            get_mic_status
        fi
    done
}

toggle() {
    pactl set-source-mute @DEFAULT_SOURCE@ toggle
}

case "${1}" in
    --toggle)
        toggle
        ;;
    *)
        listen
        ;;
esac
