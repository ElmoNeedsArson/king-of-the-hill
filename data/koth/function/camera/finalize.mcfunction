# Clean up camera entity and mannequins
kill @e[type=minecraft:item_display,tag=camera]
kill @e[type=minecraft:mannequin,tag=player_mannequin]
# fill 10 95 10 -10 95 -10 minecraft:air replace minecraft:barrier
# fill 10 95 10 -10 95 -10 minecraft:air replace minecraft:barrier

# Protect beacon with barrier box around the pyramid (11x11 bedrock base)
# Four walls around the perimeter
# fill -5 60 -5 -5 65 5 minecraft:barrier
# fill 5 60 -5 5 65 5 minecraft:barrier
# fill -5 60 -5 5 65 -5 minecraft:barrier
# fill -5 60 5 5 65 5 minecraft:barrier
# # Top cover
# fill -5 65 -5 5 65 5 minecraft:barrier

function koth:camera/barrier_protect_beacon

# Teleport players to random positions around 10000 block radius circle
function koth:camera/random_teleport

# Final title
title @a title {"text":"Good Luck","color":"gold","bold":true}
title @a subtitle {"text":"May the best team win","color":"yellow"}