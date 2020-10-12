#!/bin/bash
#landscape (left)

xrandr -o left
xinput set-prop "11" --type=float "Coordinate Transformation Matrix" 0 -1 1 1 0 0 0 0 1