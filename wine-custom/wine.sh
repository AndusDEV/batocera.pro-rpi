#!/bin/bash

# Define the options
OPTIONS=("1" "Wine and Proton" "2" "Wine-TKG-Staging")

# Use dialog to display the menu
CHOICE=$(dialog --clear --backtitle "Wine Installation" \
                --title "Select a Version..." \
                --menu "Choose a Wine version to install:" \
                15 50 4 \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

# Clear the dialog artifacts
clear

# Run the appropriate script based on the user's choice
case $CHOICE in
    1)
        echo "You chose Wine Vanilla and Proton."
        curl -L https://github.com/uureel/batocera.pro/raw/main/wine-custom/vanilla.sh | bash
        ;;
    2)
        echo "You chose Wine-tkg staging."
        curl -L https://github.com/uureel/batocera.pro/raw/main/wine-custom/tkg.sh | bash
        ;;
    *)
        echo "Invalid choice or no choice made. Exiting."
        ;;
esac
