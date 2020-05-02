#!/bin/sh
for reloaduser in $(loginctl --no-legend list-users | awk '{print $2;}')
do
    sudo -u $reloaduser systemctl --user daemon-reload
done
