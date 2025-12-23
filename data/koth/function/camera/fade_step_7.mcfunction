execute as @e[type=item_display,tag=camera] at @s run tp @s ~ ~50 ~

# Teleport prep title and particles at camera
title @a title {"text":"Warping","color":"white","bold":true}
title @a subtitle {"text":"rr rr rr rr rr rr rr rr","color":"aqua","obfuscated":true}
execute as @e[type=item_display,tag=camera] at @s run particle minecraft:portal ~ ~ ~ 1 1.2 1 4 100 force
execute as @e[type=item_display,tag=camera] at @s run particle minecraft:end_rod ~ ~ ~ 0.6 0.8 0.6 0.2 25 force
execute as @e[type=item_display,tag=camera] at @s run particle minecraft:electric_spark ~ ~ ~ 0.7 0.8 0.7 0.2 20 force
execute as @e[type=item_display,tag=camera] at @s run particle minecraft:flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0 0 0 0 2 force
playsound minecraft:block.trial_spawner.about_to_spawn_item master @a 20 460 0 20 0.8
