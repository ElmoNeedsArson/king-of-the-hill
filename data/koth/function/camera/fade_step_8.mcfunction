execute as @e[type=item_display,tag=camera] at @s run tp @s ~ ~50 ~

# Final warp title and massive particle effect at camera
title @a title {"text":"TELEPORTING","color":"aqua","bold":true}
title @a subtitle {"text":"tt tt tt tt tt tt tt tt tt tt","color":"white","obfuscated":true}
execute as @e[type=item_display,tag=camera] at @s run particle minecraft:portal ~ ~ ~ 1.5 1.5 1.5 5 150 force
execute as @e[type=item_display,tag=camera] at @s run particle minecraft:flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0 0 0 0 3 force
execute as @e[type=item_display,tag=camera] at @s run particle minecraft:explosion ~ ~ ~ 0.5 0.5 0.5 0 3 force

stopsound @a music
stopsound @a ambient
