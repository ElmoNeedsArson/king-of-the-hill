say I just respawned!

# Spread player near THEIR marker
execute as @s at @e[type=minecraft:marker, tag=koth_death_marker, sort=nearest, limit=1] run spreadplayers ~ ~ 5 20 false @s

# Cleanup marker
kill @e[type=minecraft:marker,tag=koth_death_marker,sort=nearest,limit=1]

# Cleanup state
tag @s remove koth_needs_respawn
# scoreboard players set @s koth_alive 1
