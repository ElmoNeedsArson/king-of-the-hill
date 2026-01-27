# Spawn individual camera at player's position looking up
execute at @s run summon item_display ~ ~1.62 ~ {view_range:0f,teleport_duration:20,Tags:["player_cam"],item:{id:"minecraft:stone"},Rotation:[0f,-90f]}

# Tag player to track they have a camera
tag @s add has_player_cam

# Keep player in spectator mode for the camera transition
gamemode spectator @s

# Schedule the camera rotation and cleanup
schedule function koth:camera/rotate_player_camera 20t
schedule function koth:camera/cleanup_player_cameras 60t
