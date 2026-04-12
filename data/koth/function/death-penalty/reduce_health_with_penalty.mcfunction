# Subtract 200 (1 heart = 2 health, *100 for precision)
scoreboard players remove @s max_health 200

# Ensure minimum of 2000 (10 hearts * 2 * 100)
execute if score @s max_health matches ..1999 run scoreboard players set @s max_health 2000

# Apply new max health (divide by 100 to restore scale)
execute store result storage koth:temp health_value double 0.01 run scoreboard players get @s max_health
function koth:death-penalty/set_health with storage koth:temp

# Show title to player
title @s times 20 100 20
title @s subtitle {"text":"Max Health Reduced","color":"red"}
title @s title {"text":"💔","color":"dark_red"}

# Play cannon sound to all players
execute as @a at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 10 0.5
execute as @a at @s run playsound minecraft:entity.lightning_bolt.thunder master @s ~ ~ ~ 10 0.7
execute as @a at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 3 0.8
