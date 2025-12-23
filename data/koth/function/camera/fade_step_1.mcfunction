execute as @e[type=item_display,tag=camera] at @s run tp @s ~ ~50 ~

# Teleport prep title and particles at camera
title @a title {"text":"Preparing Teleport","color":"white","bold":true}
title @a subtitle {"text":"kk kk kk kk kk kk","color":"gray","obfuscated":true}
execute as @e[type=item_display,tag=camera] at @s run particle minecraft:portal ~ ~ ~ 0.3 0.5 0.3 1 30 force
execute as @e[type=item_display,tag=camera] at @s run particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0.5 20 force
