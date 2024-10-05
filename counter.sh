#!/usr/bin/env bash

counter=0

clear_screen() {
    printf "\033c"
}

draw_screen() {
    clear_screen
    echo "Simple Bash TUI Counter"
    echo "----------------------"
    echo "Counter: $counter"
    echo ""
    echo "Controls:"
    echo "  [+] Increment"
    echo "  [-] Decrement"
    echo "  [q] Quit"
    echo ""
    echo -n "Enter your choice: "
}

while true; do
    draw_screen
    read -n 1 -s input
    case $input in
        +)
            ((counter++))
            ;;
        -)
            ((counter--))
            ;;
        q)
            clear_screen
            echo "Thanks for using the counter. Goodbye!"
            exit 0
            ;;
    esac
done