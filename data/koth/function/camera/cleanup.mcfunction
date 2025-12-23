# Fade out music and ambience
stopsound @a music
stopsound @a ambient

# Use camera to smoothly look up at the sky
execute as @e[type=item_display,tag=camera] at @s run tp @s ~ ~ ~ ~ -90

# Distance-based audio fade - move camera upward in steps
function koth:camera/fade_step_1
schedule function koth:camera/fade_step_2 40t
schedule function koth:camera/fade_step_3 80t
schedule function koth:camera/fade_step_4 120t
schedule function koth:camera/fade_step_5 160t
schedule function koth:camera/fade_step_6 200t
schedule function koth:camera/fade_step_7 240t
#schedule function koth:camera/fade_step_8 280t

# Schedule finalize after the fade completes
schedule function koth:camera/finalize 280t