# Create bossbar for countdown (2 hours = 7200 seconds)
bossbar add koth:countdown "King of the Hill"
bossbar set koth:countdown color red
bossbar set koth:countdown style notched_10
bossbar set koth:countdown max 7200
bossbar set koth:countdown value 7200
bossbar set koth:countdown players @a

# Scoreboard for countdown tracking
scoreboard objectives add koth_timer dummy
scoreboard objectives add koth_display dummy "King of the Hill"
# scoreboard objectives setdisplay sidebar koth_display
scoreboard players set #countdown koth_timer 7200
scoreboard players set #tick_counter koth_timer 0
scoreboard players set #game_ended koth_timer 0
scoreboard players set #60 koth_camera 60
scoreboard players set #3600 koth_camera 3600