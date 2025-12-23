execute as @e[tag=layer7,tag=anim_delay_4] run data merge entity @s {transformation:{translation:[-0.5f,0f,-0.5f],scale:[1f,1f,1f]}}
schedule function koth:beacon-spawn/layer7_impact_4 10t
schedule function koth:beacon-spawn/animate_step3_delay6 2t
