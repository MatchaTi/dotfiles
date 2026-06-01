#!/bin/sh

notified_low=0
notified_charged=0

while true; do
    status=$(cat /sys/class/power_supply/BAT0/status)
    capacity=$(cat /sys/class/power_supply/BAT0/capacity)
    
    # Reset notifikasi jika status baterai berubah dari batas
    if [ "$capacity" -gt 10 ]; then
        notified_low=0
    fi
    if [ "$capacity" -lt 70 ] || [ "$status" != "Charging" ]; then
        notified_charged=0
    fi

    if [ "$capacity" -le 10 ] && [ "$status" = "Discharging" ] && [ "$notified_low" -eq 0 ]; then
        GTK_THEME=Adwaita:dark yad --warning --title="バッテリー低下" --text="バッテリー残量は $capacity% です。\nすぐに充電してください！" --button="確認:0" --center --on-top &
        notified_low=1
    fi

    if [ "$capacity" -ge 70 ] && [ "$status" = "Charging" ] && [ "$notified_charged" -eq 0 ]; then
        GTK_THEME=Adwaita:dark yad --info --title="充電完了" --text="バッテリーが $capacity% に達しました。\n充電器を外すことができます。" --button="確認:0" --center --on-top &
        notified_charged=1
    fi
    
    case "$status" in
        "Charging")
            status_jp=" 充電中"
            ;;
        "Discharging")
            status_jp="放電中"
            ;;
        "Full")
            status_jp="満充電"
            ;;
        "Not charging")
            status_jp="非充電"
            ;;
        *)
            status_jp="$status"
            ;;
    esac

    day_num=$(date +%u)
    case "$day_num" in
        1) day_jp="月" ;;
        2) day_jp="火" ;;
        3) day_jp="水" ;;
        4) day_jp="木" ;;
        5) day_jp="金" ;;
        6) day_jp="土" ;;
        7) day_jp="日" ;;
        *) day_jp="" ;;
    esac

    hour=$(date +%H)
    if [ "$hour" -lt 12 ]; then
        ampm_jp="午前"
    else
        ampm_jp="午後"
    fi
    date_time=$(date +"%Y年%m月%d日(${day_jp}) ${ampm_jp}%I:%M:%S")
    
    echo "がんばって ● $status_jp $capacity% ● $date_time"
    sleep 1
done
