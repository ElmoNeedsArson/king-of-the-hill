# Spawn particles to mask the transition
execute positioned 0 116 0 run particle minecraft:end_rod ~ ~2.5 ~ 5 2.5 5 0.1 200 force
execute positioned 0 116 0 run particle minecraft:firework ~ ~2.5 ~ 5 2.5 5 0.15 150 force
execute positioned 0 116 0 run particle minecraft:flash{color:[1.000,1.000,1.000,1.00]} ~ ~2.5 ~ 4 2 4 0 30 force
execute positioned 0 116 0 run particle minecraft:enchant ~ ~2.5 ~ 5 2.5 5 0.5 300 force

# Replace block displays with actual blocks
fill -5 116 -5 5 116 5 minecraft:bedrock
fill -4 117 -4 4 117 4 minecraft:diamond_block
fill -3 118 -3 3 118 3 minecraft:diamond_block
fill -2 119 -2 2 119 2 minecraft:diamond_block
fill -1 120 -1 1 120 1 minecraft:diamond_block
setblock 0 121 0 minecraft:beacon
kill @e[tag=bd]

# More particles after replacement
execute positioned 0 121 0 run particle minecraft:totem_of_undying ~ ~0.5 ~ 0.3 0.3 0.3 0.2 50 force
playsound minecraft:block.beacon.power_select master @a 0 121 0 20 1.5

