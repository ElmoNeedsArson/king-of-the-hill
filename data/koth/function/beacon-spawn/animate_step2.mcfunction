# Animate layer 9 (drop from above) - staggered from corner
execute as @e[tag=anim_delay_0] run data merge entity @s {transformation:{translation:[-0.5f,0f,-0.5f],scale:[1f,1f,1f]}}
schedule function koth:beacon-spawn/layer9_impact_0 10t
schedule function koth:beacon-spawn/animate_step2_delay2 2t
