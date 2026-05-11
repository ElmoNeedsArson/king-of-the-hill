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
scoreboard objectives add koth_control_time dummy "Beacon Control"
scoreboard objectives add koth_control_time_player dummy "Beacon Control (Players)"
# scoreboard objectives setdisplay sidebar koth_display
scoreboard objectives setdisplay sidebar koth_control_time
scoreboard players reset @a koth_control_time_player
execute as @a run scoreboard players set @s koth_control_time_player 0
scoreboard players set #countdown koth_timer 7200
scoreboard players set #tick_counter koth_timer 0
scoreboard players set #game_ended koth_timer 0
scoreboard players set #warned_20min koth_timer 0
scoreboard players set #winner_color koth_timer 0
scoreboard players set #winning_time koth_control_time 0
scoreboard players set #60 koth_camera 60
scoreboard players set #3600 koth_camera 3600
