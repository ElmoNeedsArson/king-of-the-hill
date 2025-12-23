# Kill any existing cameras
kill @e[type=minecraft:item_display,tag=camera]

# Create scoreboard for camera tracking
scoreboard objectives add koth_camera dummy
scoreboard objectives add amount_of_rotations dummy

# Setup death penalty system
function koth:death-penalty/setup

# Setup color teams
function koth:teams/setup

forceload add -4 2
forceload add 2 1
forceload add 2 -3
forceload add -4 -3