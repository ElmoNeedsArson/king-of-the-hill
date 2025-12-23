execute as @e[tag=anim_delay_2] run data merge entity @s {transformation:{translation:[-0.5f,0f,-0.5f],scale:[1f,1f,1f]}}
schedule function koth:beacon-spawn/layer9_impact_2 10t
schedule function koth:beacon-spawn/animate_step2_delay4 2t
