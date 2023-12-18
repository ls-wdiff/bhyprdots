#!/bin/bash

export PATH="${PATH}:${HOME}/.local/bin/"

DIR=$HOME/.config/.wallp/
PICS=($(ls ${DIR}))

RANDOMPICS=${PICS[ $RANDOM % ${#PICS[@]} ]}

if [[ $(pidof swww) ]]; then
  pkill swww
fi

swww img ${DIR}/${RANDOMPICS} --transition-type grow --transition-fps 60 --transition-duration 0.5 --transition-bezier 0.65,0,0.35,1 --transition-pos 0.794,0.972 --transition-step 1

sleep 1.25

wal -i ${DIR}/${RANDOMPICS} --cols16

. $HOME/.config/mako/update-colors.sh
