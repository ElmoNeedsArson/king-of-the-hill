# Make all spectator players view the active camera (during main animation)
execute as @a[gamemode=spectator] at @s run spectate @e[type=item_display,tag=active_cam,limit=1]

# Make players with individual cameras spectate their own camera
execute as @a[tag=has_player_cam,gamemode=spectator] at @s run spectate @e[type=item_display,tag=player_cam,limit=1,sort=nearest]

# Check for player deaths and apply penalty
function koth:death-penalty/check_deaths

# Detect beacon claims by glass color
function koth:beacon-control/detect_claim

# Update bossbar countdown (decrease by 1 every second)
scoreboard players add #tick_counter koth_timer 1
execute if score #tick_counter koth_timer matches 20.. run function koth:bossbar/countdown

# Clears Totems from all players
clear @a minecraft:totem_of_undying

scoreboard objectives add glass trigger
scoreboard players enable @a glass 

scoreboard objectives add add_time trigger
scoreboard players enable @a add_time
execute as @a[scores={add_time=1..}] run function koth:bossbar/handle_add_time

# Trigger to start, should only be runable once
scoreboard objectives add start trigger
scoreboard objectives add started dummy
scoreboard players enable @a start
execute as @a[scores={start=1..}] if score global started matches 0 run function koth:start_koth
execute as @a[scores={start=1..}] if score global started matches 0 run scoreboard players set global started 1
scoreboard players reset @a[scores={start=1..}] start

execute as @a[team=team_white,scores={glass=1..}] run give @s minecraft:white_stained_glass 1
execute as @a[team=team_orange,scores={glass=1..}] run give @s minecraft:orange_stained_glass 1
execute as @a[team=team_magenta,scores={glass=1..}] run give @s minecraft:magenta_stained_glass 1
execute as @a[team=team_light_blue,scores={glass=1..}] run give @s minecraft:light_blue_stained_glass 1
execute as @a[team=team_yellow,scores={glass=1..}] run give @s minecraft:yellow_stained_glass 1
execute as @a[team=team_lime,scores={glass=1..}] run give @s minecraft:lime_stained_glass 1
execute as @a[team=team_pink,scores={glass=1..}] run give @s minecraft:pink_stained_glass 1
execute as @a[team=team_gray,scores={glass=1..}] run give @s minecraft:gray_stained_glass 1
execute as @a[team=team_light_gray,scores={glass=1..}] run give @s minecraft:light_gray_stained_glass 1
execute as @a[team=team_cyan,scores={glass=1..}] run give @s minecraft:cyan_stained_glass 1
execute as @a[team=team_purple,scores={glass=1..}] run give @s minecraft:purple_stained_glass 1
execute as @a[team=team_blue,scores={glass=1..}] run give @s minecraft:blue_stained_glass 1
execute as @a[team=team_brown,scores={glass=1..}] run give @s minecraft:brown_stained_glass 1
execute as @a[team=team_green,scores={glass=1..}] run give @s minecraft:green_stained_glass 1
execute as @a[team=team_red,scores={glass=1..}] run give @s minecraft:red_stained_glass 1
execute as @a[team=team_black,scores={glass=1..}] run give @s minecraft:black_stained_glass 1

scoreboard players reset @a[scores={glass=1..}] glass

# Spawn protection: per-tick outward force (active while seal is on)
# at @s sets Y to player's feet; [x=0,z=0,distance=..40] is then a horizontal cylinder check
# facing 0 ~ 0 = face toward spawn center; ^ ^ ^-0.5 = step backward = push outward
execute if score global started matches 1 if score #warned_20min koth_timer matches 0 as @a at @s if entity @s[x=0,z=0,distance=..40,gamemode=survival] facing 0 ~ 0 run tp @s ^ ^ ^-0.5

# Spawn protection: eject players and show boundary while seal is active
# execute if score #warned_20min koth_timer matches 0 run function koth:spawn_protection/tick

# Death detection
scoreboard players reset @a death
execute as @a[tag=koth_needs_respawn] unless entity @s[nbt={Health:0f}] run function koth:death/on_respawn