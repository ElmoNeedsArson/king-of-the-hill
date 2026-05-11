# Kill any existing cameras
kill @e[type=minecraft:item_display,tag=camera]

weather clear
time set day
clear @a
# gamerule keep_inventory true 
gamerule reduced_debug_info true
gamerule doInsomnia false

# Create scoreboard for camera tracking
scoreboard objectives add koth_camera dummy
scoreboard objectives add amount_of_rotations dummy

# Create control-time leaderboard without resetting existing scores
scoreboard objectives add koth_control_time dummy "Beacon Control"
scoreboard objectives add koth_control_time_player dummy "Beacon Control (Players)"
scoreboard objectives setdisplay sidebar koth_control_time
execute as @a run scoreboard players set @s koth_control_time_player 0

# Setup death penalty system
function koth:death-penalty/setup

# Setup color teams
function koth:teams/setup

forceload add -4 2
forceload add 2 1
forceload add 2 -3
forceload add -4 -3

#TODO adding a player midgame
#TODO expand reset function to actually work - it does ig?

scoreboard objectives add death deathCount
scoreboard objectives add respawn custom:time_since_death
