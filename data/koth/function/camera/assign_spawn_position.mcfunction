# Assign each player a unique index and calculate their spawn position
scoreboard players operation @s koth_camera = #player_index koth_camera
scoreboard players add #player_index koth_camera 1

# Assign color to this player
function koth:teams/assign_color

# Teleport based on player index (distributed evenly around 7000 block radius circle)
execute if score @s koth_camera matches 0 run tp @s 7000 310 0
execute if score @s koth_camera matches 1 run tp @s 0 310 7000
execute if score @s koth_camera matches 2 run tp @s -7000 310 0
execute if score @s koth_camera matches 3 run tp @s 0 310 -7000

execute if score @s koth_camera matches 4 run tp @s 4950 310 4950
execute if score @s koth_camera matches 5 run tp @s -4950 310 4950
execute if score @s koth_camera matches 6 run tp @s -4950 310 -4950
execute if score @s koth_camera matches 7 run tp @s 4950 310 -4950
# Tag player for ground-finding (to be scheduled after chunks load)
tag @s add needs_ground