# Animate beacon core (drop from above)
execute as @e[tag=beacon_core] run data merge entity @s {transformation:{translation:[-0.5f,0f,-0.5f],scale:[1f,1f,1f]}}
playsound minecraft:block.amethyst_block.fall master @a 0 59 0 20 1

# Schedule impact particles and finalization after beacon lands
schedule function koth:beacon-spawn/beacon_impact 10t
schedule function koth:beacon-spawn/finalize 30t
