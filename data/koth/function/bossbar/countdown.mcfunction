# Decrease countdown by 1 second
scoreboard players remove #countdown koth_timer 1
scoreboard players set #tick_counter koth_timer 0

# Update sidebar display
scoreboard players operation Time koth_display = #countdown koth_timer

# Update bossbar value
execute store result bossbar koth:countdown value run scoreboard players get #countdown koth_timer

# Calculate hours, minutes, seconds for display
scoreboard players operation #hours koth_timer = #countdown koth_timer
scoreboard players operation #hours koth_timer /= #3600 koth_camera
scoreboard players operation #remaining koth_timer = #countdown koth_timer
scoreboard players operation #remaining koth_timer %= #3600 koth_camera
scoreboard players operation #minutes koth_timer = #remaining koth_timer
scoreboard players operation #minutes koth_timer /= #60 koth_camera
scoreboard players operation #seconds koth_timer = #remaining koth_timer
scoreboard players operation #seconds koth_timer %= #60 koth_camera

# Update bossbar name with time remaining
# Note: This is simplified - full formatting would need macros or more complex logic
bossbar set koth:countdown name ["King of the Hill - ",{"score":{"name":"#hours","objective":"koth_timer"}},{"text":"h "},{"score":{"name":"#minutes","objective":"koth_timer"}},{"text":"m "},{"score":{"name":"#seconds","objective":"koth_timer"}},{"text":"s"}]

# Check if time ran out
execute if score #countdown koth_timer matches ..0 if score #game_ended koth_timer matches 0 run function koth:bossbar/time_up
