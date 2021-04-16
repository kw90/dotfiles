#!/bin/bash

INTERVAL=10
INTERFACES="enp6s0"

declare -A bytes

while true; do
    down=0
    up=0

    for interface in $INTERFACES; do
        bytes["now_rx_$interface"]=$(cat /sys/class/net/$interface/statistics/rx_bytes)
        bytes["now_tx_$interface"]=$(cat /sys/class/net/$interface/statistics/tx_bytes)
        echo "$bytes"

        now_rx_if=${bytes[now_rx_"$interface"]}
        past_rx_if=${bytes[past_rx_"$interface"]}
        bytes_down_diff=$(( now_rx_if - past_rx_if ))
        bytes_down=$(( bytes_down_diff / INTERVAL ))

        now_tx_if=${bytes[now_tx_$interface]}
        past_tx_if=${bytes[past_tx_$interface]}
        bytes_up_diff=$(( now_tx_if - past_tx_if ))
        bytes_up=$(( bytes_up_diff / INTERVAL ))

        down=$(( down + bytes_down ))
        up=$(( up + bytes_up ))

        past_rx_if=now_rx_if
        past_tx_if=now_tx_if
    done

    # echo "↑ $(print_bytes down) / ↓ $(print_bytes up)"
    echo "↑ $(bytes_down) / ↓ $(bytes_up)"

    sleep $INTERVAL
done
