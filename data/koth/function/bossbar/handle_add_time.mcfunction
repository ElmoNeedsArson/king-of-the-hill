# Add EXACT amount from trigger
scoreboard players operation #countdown koth_timer += @a add_time

# Reset trigger
scoreboard players reset @a[scores={add_time=1..}] add_time