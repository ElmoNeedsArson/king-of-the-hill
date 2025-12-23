execute as @e[type=item_display,tag=camera] at @s run tp @s ~ ~50 ~

# Teleport prep title and particles at camera
title @a title {"text":"Calibrating Coordinates","color":"white","bold":true}
title @a subtitle {"text":"xx xx xx xx xx xx","color":"gray","obfuscated":true}
execute as @e[type=item_display,tag=camera] at @s run particle minecraft:portal ~ ~ ~ 0.5 0.7 0.5 1.5 50 force
execute as @e[type=item_display,tag=camera] at @s run particle minecraft:witch ~ ~ ~ 0.3 0.5 0.3 0.05 10 force
