# Spread player near THEIR marker
execute as @s at @e[type=minecraft:marker, tag=koth_death_marker, sort=nearest, limit=1] run function cavespread:spread