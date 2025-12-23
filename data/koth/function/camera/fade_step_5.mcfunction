execute as @e[type=item_display,tag=camera] at @s run tp @s ~ ~50 ~

# Teleport prep title and particles at camera
title @a title {"text":"Initializing Countdown","color":"white","bold":true}
title @a subtitle {"text":"mm mm mm mm mm mm","color":"gray","obfuscated":true}
execute as @e[type=item_display,tag=camera] at @s run particle minecraft:portal ~ ~ ~ 0.7 0.9 0.7 2.5 70 force
execute as @e[type=item_display,tag=camera] at @s run particle minecraft:end_rod ~ ~ ~ 0.4 0.6 0.4 0.15 20 force
execute as @e[type=item_display,tag=camera] at @s run particle minecraft:electric_spark ~ ~ ~ 0.5 0.6 0.5 0.15 15 force
