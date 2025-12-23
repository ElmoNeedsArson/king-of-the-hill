# Assign each player a unique index and calculate their spawn position
scoreboard players operation @s koth_camera = #player_index koth_camera
scoreboard players add #player_index koth_camera 1

# Assign color to this player
function koth:teams/assign_color

# Teleport based on player index (distributed evenly around 10000 block radius circle)
execute if score @s koth_camera matches 0 run tp @s 10000 200 0
execute if score @s koth_camera matches 1 run tp @s 8660 200 5000
execute if score @s koth_camera matches 2 run tp @s 5000 200 8660
execute if score @s koth_camera matches 3 run tp @s 0 200 10000
execute if score @s koth_camera matches 4 run tp @s -5000 200 8660
execute if score @s koth_camera matches 5 run tp @s -8660 200 5000
execute if score @s koth_camera matches 6 run tp @s -10000 200 0
execute if score @s koth_camera matches 7 run tp @s -8660 200 -5000
execute if score @s koth_camera matches 8 run tp @s -5000 200 -8660
execute if score @s koth_camera matches 9 run tp @s 0 200 -10000
execute if score @s koth_camera matches 10 run tp @s 5000 200 -8660
execute if score @s koth_camera matches 11 run tp @s 8660 200 -5000
execute if score @s koth_camera matches 12 run tp @s 9659 200 2588
execute if score @s koth_camera matches 13 run tp @s 7071 200 7071
execute if score @s koth_camera matches 14 run tp @s 2588 200 9659
execute if score @s koth_camera matches 15 run tp @s -2588 200 9659
execute if score @s koth_camera matches 16 run tp @s -7071 200 7071
execute if score @s koth_camera matches 17 run tp @s -9659 200 2588
execute if score @s koth_camera matches 18 run tp @s -9659 200 -2588
execute if score @s koth_camera matches 19 run tp @s -7071 200 -7071

# Tag player for ground-finding (to be scheduled after chunks load)
tag @s add needs_ground