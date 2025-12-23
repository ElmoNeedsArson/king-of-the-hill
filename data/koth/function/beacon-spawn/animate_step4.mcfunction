# Animate layer 5 - staggered from corner
execute as @e[tag=layer5,tag=anim_delay_0] run data merge entity @s {transformation:{translation:[-0.5f,0f,-0.5f],scale:[1f,1f,1f]}}
schedule function koth:beacon-spawn/layer5_impact_0 10t
schedule function koth:beacon-spawn/animate_step4_delay2 2t
