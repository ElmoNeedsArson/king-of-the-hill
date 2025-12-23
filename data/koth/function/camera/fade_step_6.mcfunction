execute as @e[type=item_display,tag=camera] at @s run tp @s ~ ~50 ~

# Particles only
execute as @e[type=item_display,tag=camera] at @s run particle minecraft:portal ~ ~ ~ 0.8 1 0.8 3 80 force
execute as @e[type=item_display,tag=camera] at @s run particle minecraft:witch ~ ~ ~ 0.5 0.7 0.5 0.1 15 force
execute as @e[type=item_display,tag=camera] at @s run particle minecraft:flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0 0 0 0 1 force
