execute as @e[tag=bd_base] at @s run particle minecraft:cloud ~ ~1.5 ~ 0.3 0.1 0.3 0.02 10
execute as @e[tag=bd_base] at @s run particle minecraft:explosion ~ ~0.5 ~ 0 0 0 0 1
playsound minecraft:entity.generic.explode master @a 0 59 0 20 0.7
playsound minecraft:block.anvil.land master @a 0 59 0 20 0.5
