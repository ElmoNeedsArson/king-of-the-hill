# Reset player index counter and color index
scoreboard players set #player_index koth_camera 0
scoreboard players set #color_index koth_camera 0

# Assign positions and colors to all players
execute as @a run function koth:camera/assign_spawn_position

# After teleporting, wait for chunks to load then find ground
schedule function koth:camera/start_ground_finding 20t