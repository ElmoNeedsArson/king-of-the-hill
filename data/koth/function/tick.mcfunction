# Make all spectator players view the active camera (during main animation)
execute as @a[gamemode=spectator,tag=!has_player_cam] at @s run spectate @e[type=item_display,tag=active_cam,limit=1]

# Make players with individual cameras spectate their own camera
execute as @a[tag=has_player_cam] at @s run spectate @e[type=item_display,tag=player_cam,limit=1,sort=nearest]

# Check for player deaths and apply penalty
function koth:death-penalty/check_deaths

# Detect beacon claims by glass color
function koth:beacon-control/detect_claim

# Update bossbar countdown (decrease by 1 every second)
scoreboard players add #tick_counter koth_timer 1
execute if score #tick_counter koth_timer matches 20.. run function koth:bossbar/countdown

# Clears Totems from all players
clear @a minecraft:totem_of_undying
