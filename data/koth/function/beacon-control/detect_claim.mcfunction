# Find and check the highest block above beacon (scan from build limit down to barrier top)
# Remove any non-glass blocks, only stained glass is allowed

# Make it unable to block the beacon
fill 4 65 -4 1 66 4 air destroy
fill -1 65 4 -4 66 -4 air destroy
fill 0 65 -1 0 66 -4 air destroy
fill 0 65 1 0 66 4 air destroy
fill 4 67 4 -4 319 -4 air destroy

execute if block 0 66 0 minecraft:white_stained_glass run function koth:beacon-control/claim_white
execute if block 0 66 0 minecraft:orange_stained_glass run function koth:beacon-control/claim_orange
execute if block 0 66 0 minecraft:magenta_stained_glass run function koth:beacon-control/claim_magenta
execute if block 0 66 0 minecraft:light_blue_stained_glass run function koth:beacon-control/claim_light_blue
execute if block 0 66 0 minecraft:yellow_stained_glass run function koth:beacon-control/claim_yellow
execute if block 0 66 0 minecraft:lime_stained_glass run function koth:beacon-control/claim_lime
execute if block 0 66 0 minecraft:pink_stained_glass run function koth:beacon-control/claim_pink
execute if block 0 66 0 minecraft:gray_stained_glass run function koth:beacon-control/claim_gray
execute if block 0 66 0 minecraft:light_gray_stained_glass run function koth:beacon-control/claim_light_gray
execute if block 0 66 0 minecraft:cyan_stained_glass run function koth:beacon-control/claim_cyan
execute if block 0 66 0 minecraft:purple_stained_glass run function koth:beacon-control/claim_purple
execute if block 0 66 0 minecraft:blue_stained_glass run function koth:beacon-control/claim_blue
execute if block 0 66 0 minecraft:brown_stained_glass run function koth:beacon-control/claim_brown
execute if block 0 66 0 minecraft:green_stained_glass run function koth:beacon-control/claim_green
execute if block 0 66 0 minecraft:red_stained_glass run function koth:beacon-control/claim_red
execute if block 0 66 0 minecraft:black_stained_glass run function koth:beacon-control/claim_black
execute if block 0 66 0 minecraft:white_stained_glass run return 1
execute if block 0 66 0 minecraft:orange_stained_glass run return 1
execute if block 0 66 0 minecraft:magenta_stained_glass run return 1
execute if block 0 66 0 minecraft:light_blue_stained_glass run return 1
execute if block 0 66 0 minecraft:yellow_stained_glass run return 1
execute if block 0 66 0 minecraft:lime_stained_glass run return 1
execute if block 0 66 0 minecraft:pink_stained_glass run return 1
execute if block 0 66 0 minecraft:gray_stained_glass run return 1
execute if block 0 66 0 minecraft:light_gray_stained_glass run return 1
execute if block 0 66 0 minecraft:cyan_stained_glass run return 1
execute if block 0 66 0 minecraft:purple_stained_glass run return 1
execute if block 0 66 0 minecraft:blue_stained_glass run return 1
execute if block 0 66 0 minecraft:brown_stained_glass run return 1
execute if block 0 66 0 minecraft:green_stained_glass run return 1
execute if block 0 66 0 minecraft:red_stained_glass run return 1
execute if block 0 66 0 minecraft:black_stained_glass run return 1
# if none of the previous lines are true, meaning its not a glass block, replace the block with air
execute unless block 0 66 0 minecraft:air run setblock 0 66 0 air

# If no glass found, reset beacon color
execute unless score #beacon_color koth_camera matches 0 run scoreboard players set #beacon_color koth_camera 0
execute unless score #beacon_color koth_camera matches 1.. run function koth:teams/update_beacon_holder
