# Animate bedrock base layer (drop from above)
execute as @e[tag=bd_base] run data merge entity @s {transformation:{translation:[-0.5f,0f,-0.5f],scale:[1f,1f,1f]}}
playsound minecraft:entity.wither.spawn master @a 0 96 0 20 0.8

# Schedule impact particles after blocks land (10t = interpolation_duration)
schedule function koth:beacon-spawn/bedrock_impact 10t

# Spawn layer 9 and schedule its animation
schedule function koth:beacon-spawn/spawn_layer_9 40t
schedule function koth:beacon-spawn/animate_step2 41t

# Add ambient sound layers
playsound minecraft:ambient.cave ambient @a 0 100 0 20 0.7
playsound minecraft:block.portal.ambient ambient @a 0 100 0 20 1.2

