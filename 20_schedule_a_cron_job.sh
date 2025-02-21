#!/bin/bash

mensaje="Mm, ahem, this is a school announcement. It is now 10 p.m. As such, it is officially nighttime. Soon the doors to the dining hall will be locked, and entry at that point is strictly prohibited. Okay then...sweet dreams, everyone! Good night, sleep tight, don't let the bed bugs bite..."

echo "0 22 * * * echo \"$mensaje\" >> /home/rock/Desktop/bash_excercises/backup15test/mi_log.log" | crontab -

