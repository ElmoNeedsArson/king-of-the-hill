# Set all players with cameras to survival mode
gamemode survival @a[tag=has_player_cam]

# Remove player camera tag
tag @a remove has_player_cam

# Kill all player cameras
kill @e[type=item_display,tag=player_cam]
