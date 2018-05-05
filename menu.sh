#!/bin/bash
#Links to all the other parts of the Shell Edition
PS3='What do you want to read?: '
options=("Shetland Pony" "Dartmoor Pony" "Highland Pony" "Connemara Pony" "General Facts" "Quiz" "About Us" "Acknowledgements" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "General Facts")
            bash gen.sh
            ;;
        "Shetland Pony")
            bash shet.sh
            ;;
        "Dartmoor Pony")
            bash dart.sh
            ;;
        "Highland Pony")
            bash high.sh
            ;;
        "Connemara Pony")
            bash conn.sh
            ;;
        "General Facts")
            bash GenMenu.sh
            ;;
        "Quiz")
            bash quiz.sh
            ;;
        "About us")
            bash about.sh
            ;;
        "Acknowledgements")
            bash ack.sh
            ;;
        "Quit")
        echo "Thanks for visiting!"; exit
        ;;
        *) echo Please choose a number between 1 and 9;;
    esac
done