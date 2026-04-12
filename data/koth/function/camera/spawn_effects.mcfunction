# Dramatic spawn effects only for players who just landed
execute as @a[tag=just_landed] at @s run particle minecraft:dragon_breath ~ ~1 ~ 0.5 1 0.5 0.1 100 force
execute as @a[tag=just_landed] at @s run particle minecraft:end_rod ~ ~1 ~ 0.3 1 0.3 0.15 50 force
execute as @a[tag=just_landed] at @s run particle minecraft:flash{color:[1.000,1.000,1.000,1.00]} ~ ~1 ~ 0 0 0 0 5 force
execute as @a[tag=just_landed] at @s run particle minecraft:firework ~ ~1 ~ 0.5 1 0.5 0.2 75 force

# Dramatic sound effects
execute as @a[tag=just_landed] at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 1 1.5 1
execute as @a[tag=just_landed] at @s run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 1 0.8 1
execute as @a[tag=just_landed] at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 0.5 1.8 1

# Reset player's max health to default (40 = 20 hearts) and heal to full
execute as @a[tag=just_landed] run attribute @s minecraft:max_health base set 40
execute as @a[tag=just_landed] run effect give @s instant_health 1 10 true

# Update stored health value
execute as @a[tag=just_landed] run scoreboard players set @s max_health 4000

# Remove tag after effects
tag @a remove just_landed