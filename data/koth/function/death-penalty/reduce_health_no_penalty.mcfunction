# Player is already at minimum, no sound or title needed
# Just ensure health stays at minimum
scoreboard players set @s max_health 2000

# Apply health
execute store result storage koth:temp health_value double 0.01 run scoreboard players get @s max_health
function koth:death-penalty/set_health with storage koth:temp
