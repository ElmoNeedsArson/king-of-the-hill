execute as @e[tag=layer5,tag=anim_delay_8] run data merge entity @s {transformation:{translation:[-0.5f,0f,-0.5f],scale:[1f,1f,1f]}}
schedule function koth:beacon-spawn/layer5_impact_8 10t
schedule function koth:beacon-spawn/spawn_layer_3 28t
schedule function koth:beacon-spawn/animate_step5 29t
