#!/bin/bash

external_monitor=$(xrandr | awk '/\ connected .*+/{print $1}' | tail -n 1)
if [[ $external_monitor == 'eDP1' ]]
then
  exit 0
fi

if [[ $1 == 'off' ]]
then
  xrandr --output $external_monitor --off
  exit 0
fi

if [[ $1 == 'above' ]]
then
  xrandr --output $external_monitor --preferred --above eDP-1-1
  exit 0
fi

if [[ $1 == 'below' ]]
then
  xrandr --output $external_monitor --preferred --below eDP-1-1
  exit 0
fi

if [[ $1 == 'right of' ]]
then
  xrandr --output $external_monitor --preferred --right-of eDP-1-1
  exit 0
fi

if [[ $1 == 'left of' ]]
then
  xrandr --output $external_monitor --preferred --left-of eDP-1-1
  exit 0
fi

if [[ $1 == 'same' ]]
then
  xrandr --output $external_monitor --same-as eDP-1-1
  exit 0
fi
~        
