execute as @e[tag=beacon_core] at @s run particle minecraft:end_rod ~ ~1.5 ~ 0.2 0.1 0.2 0.05 15
execute as @e[tag=beacon_core] at @s run particle minecraft:explosion ~ ~0.5 ~ 0 0 0 0 1
# execute as @e[tag=beacon_core] at @s run particle minecraft:flash ~ ~0.5 ~ 0 0 0 0 1
playsound minecraft:block.beacon.activate master @a 0 116 0 20 1
playsound minecraft:block.end_portal.spawn master @a 0 116 0 20 1.2
