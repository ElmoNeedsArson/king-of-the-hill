# Assign each player a unique index and calculate their spawn position
scoreboard players operation @s koth_camera = #player_index koth_camera
scoreboard players add #player_index koth_camera 1

# Assign color to this player
function koth:teams/assign_color

# Teleport based on player index (distributed evenly around 10000 block radius circle)
execute if score @s koth_camera matches 0 run tp @s 10000 320 0
execute if score @s koth_camera matches 1 run tp @s -10000 320 0
execute if score @s koth_camera matches 2 run tp @s 0 320 10000
execute if score @s koth_camera matches 3 run tp @s 0 320 -10000
execute if score @s koth_camera matches 4 run tp @s -5000 320 -8660

# Tag player for ground-finding (to be scheduled after chunks load)
tag @s add needs_ground