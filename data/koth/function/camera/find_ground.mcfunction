# Keep descending through air
execute at @s if block ~ ~-1 ~ #minecraft:air run tp @s ~ ~-1 ~
execute at @s if block ~ ~-1 ~ #minecraft:air positioned ~ ~-1 ~ run function koth:camera/find_ground

# If we found water below, replace it with glazed terracotta and land
execute at @s if block ~ ~-1 ~ minecraft:water run setblock ~ ~-1 ~ minecraft:light_blue_glazed_terracotta
execute at @s if block ~ ~-1 ~ minecraft:light_blue_glazed_terracotta run tag @s remove needs_ground
execute at @s if block ~ ~-1 ~ minecraft:light_blue_glazed_terracotta run tag @s add just_landed
execute at @s if block ~ ~-1 ~ minecraft:light_blue_glazed_terracotta run spawnpoint @s ~ ~ ~
execute at @s if block ~ ~-1 ~ minecraft:light_blue_glazed_terracotta run function koth:camera/spawn_player_camera

# If we found lava below, replace it with glazed terracotta and land
execute at @s if block ~ ~-1 ~ minecraft:lava run setblock ~ ~-1 ~ minecraft:light_blue_glazed_terracotta
execute at @s if block ~ ~-1 ~ minecraft:light_blue_glazed_terracotta run tag @s remove needs_ground
execute at @s if block ~ ~-1 ~ minecraft:light_blue_glazed_terracotta run tag @s add just_landed
execute at @s if block ~ ~-1 ~ minecraft:light_blue_glazed_terracotta run spawnpoint @s ~ ~ ~
execute at @s if block ~ ~-1 ~ minecraft:light_blue_glazed_terracotta run function koth:camera/spawn_player_camera

# If we found solid ground (not air), place blue terracotta and land on it
execute at @s unless block ~ ~-1 ~ #minecraft:air unless block ~ ~-1 ~ minecraft:light_blue_glazed_terracotta run setblock ~ ~-1 ~ minecraft:light_blue_glazed_terracotta
execute at @s if block ~ ~-1 ~ minecraft:light_blue_glazed_terracotta run tag @s remove needs_ground
execute at @s if block ~ ~-1 ~ minecraft:light_blue_glazed_terracotta run tag @s add just_landed
execute at @s if block ~ ~-1 ~ minecraft:light_blue_glazed_terracotta run spawnpoint @s ~ ~ ~
execute at @s if block ~ ~-1 ~ minecraft:light_blue_glazed_terracotta run function koth:camera/spawn_player_camera