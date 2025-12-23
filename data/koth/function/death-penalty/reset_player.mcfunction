# Reset player's max health to default (20 = 10 hearts)
attribute @s minecraft:max_health base set 20

# Reset death counter
scoreboard players set @s deaths 0

# Reset stored health value
scoreboard players set @s max_health 2000

# Notify player
title @s times 10 40 10
title @s subtitle {"text":"Health Restored","color":"green"}
title @s title {"text":"❤","color":"red"}
