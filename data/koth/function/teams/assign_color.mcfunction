# Assign a color to the player based on color_index (0-15)
# Each color is only used once

execute if score #color_index koth_camera matches 0 run team join team_white @s
execute if score #color_index koth_camera matches 0 run give @s minecraft:white_stained_glass 1
execute if score #color_index koth_camera matches 0 as @s run function koth:teams/basic_kit

execute if score #color_index koth_camera matches 1 run team join team_orange @s
execute if score #color_index koth_camera matches 1 run give @s minecraft:orange_stained_glass 1
execute if score #color_index koth_camera matches 1 as @s run function koth:teams/basic_kit

execute if score #color_index koth_camera matches 2 run team join team_magenta @s
execute if score #color_index koth_camera matches 2 run give @s minecraft:magenta_stained_glass 1
execute if score #color_index koth_camera matches 2 as @s run function koth:teams/basic_kit

execute if score #color_index koth_camera matches 3 run team join team_light_blue @s
execute if score #color_index koth_camera matches 3 run give @s minecraft:light_blue_stained_glass 1
execute if score #color_index koth_camera matches 3 as @s run function koth:teams/basic_kit

execute if score #color_index koth_camera matches 4 run team join team_yellow @s
execute if score #color_index koth_camera matches 4 run give @s minecraft:yellow_stained_glass 1
execute if score #color_index koth_camera matches 4 as @s run function koth:teams/basic_kit

execute if score #color_index koth_camera matches 5 run team join team_lime @s
execute if score #color_index koth_camera matches 5 run give @s minecraft:lime_stained_glass 1
execute if score #color_index koth_camera matches 5 as @s run function koth:teams/basic_kit

execute if score #color_index koth_camera matches 6 run team join team_pink @s
execute if score #color_index koth_camera matches 6 run give @s minecraft:pink_stained_glass 1
execute if score #color_index koth_camera matches 6 as @s run function koth:teams/basic_kit

execute if score #color_index koth_camera matches 7 run team join team_gray @s
execute if score #color_index koth_camera matches 7 run give @s minecraft:gray_stained_glass 1
execute if score #color_index koth_camera matches 7 as @s run function koth:teams/basic_kit

execute if score #color_index koth_camera matches 8 run team join team_light_gray @s
execute if score #color_index koth_camera matches 8 run give @s minecraft:light_gray_stained_glass 1
execute if score #color_index koth_camera matches 8 as @s run function koth:teams/basic_kit

execute if score #color_index koth_camera matches 9 run team join team_cyan @s
execute if score #color_index koth_camera matches 9 run give @s minecraft:cyan_stained_glass 1
execute if score #color_index koth_camera matches 9 as @s run function koth:teams/basic_kit

execute if score #color_index koth_camera matches 10 run team join team_purple @s
execute if score #color_index koth_camera matches 10 run give @s minecraft:purple_stained_glass 1
execute if score #color_index koth_camera matches 10 as @s run function koth:teams/basic_kit

execute if score #color_index koth_camera matches 11 run team join team_blue @s
execute if score #color_index koth_camera matches 11 run give @s minecraft:blue_stained_glass 1
execute if score #color_index koth_camera matches 11 as @s run function koth:teams/basic_kit

execute if score #color_index koth_camera matches 12 run team join team_brown @s
execute if score #color_index koth_camera matches 12 run give @s minecraft:brown_stained_glass 1
execute if score #color_index koth_camera matches 12 as @s run function koth:teams/basic_kit

execute if score #color_index koth_camera matches 13 run team join team_green @s
execute if score #color_index koth_camera matches 13 run give @s minecraft:green_stained_glass 1
execute if score #color_index koth_camera matches 13 as @s run function koth:teams/basic_kit

execute if score #color_index koth_camera matches 14 run team join team_red @s
execute if score #color_index koth_camera matches 14 run give @s minecraft:red_stained_glass 1
execute if score #color_index koth_camera matches 14 as @s run function koth:teams/basic_kit

execute if score #color_index koth_camera matches 15 run team join team_black @s
execute if score #color_index koth_camera matches 15 run give @s minecraft:black_stained_glass 1
execute if score #color_index koth_camera matches 15 as @s run function koth:teams/basic_kit

# Increment color index for next player
scoreboard players add #color_index koth_camera 1
