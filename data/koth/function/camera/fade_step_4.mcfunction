execute as @e[type=item_display,tag=camera] at @s run tp @s ~ ~50 ~

# Particles only
execute as @e[type=item_display,tag=camera] at @s run particle minecraft:portal ~ ~ ~ 0.6 0.8 0.6 2 60 force
execute as @e[type=item_display,tag=camera] at @s run particle minecraft:enchant ~ ~ ~ 0.6 0.6 0.6 1 30 force
execute as @e[type=item_display,tag=camera] at @s run particle minecraft:electric_spark ~ ~ ~ 0.4 0.5 0.4 0.1 10 force
