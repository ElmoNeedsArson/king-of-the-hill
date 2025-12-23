execute as @e[tag=layer3,tag=anim_delay_4] run data merge entity @s {transformation:{translation:[-0.5f,0f,-0.5f],scale:[1f,1f,1f]}}
schedule function koth:beacon-spawn/layer3_impact_4 10t
schedule function koth:beacon-spawn/animate_step6 28t
