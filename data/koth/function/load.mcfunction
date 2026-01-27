# Kill any existing cameras
kill @e[type=minecraft:item_display,tag=camera]

weather clear
time set day
clear @a
gamerule keep_inventory true 
gamerule reduced_debug_info true

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

#TODO fix bug that spectating start animation doesnt work when player is far away

scoreboard objectives add death deathCount
scoreboard objectives add respawn custom:time_since_death
