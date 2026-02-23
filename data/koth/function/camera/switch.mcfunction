# Increment camera position counter
scoreboard players add #current koth_camera 1

# Teleport the single camera to the next position
execute if score #current koth_camera matches 1 as @e[type=item_display,tag=camera] at @s run tp @s 19.32 130 5.18 105.0 0.0
execute if score #current koth_camera matches 2 as @e[type=item_display,tag=camera] at @s run tp @s 17.32 130 10.0 120.0 0.0
execute if score #current koth_camera matches 3 as @e[type=item_display,tag=camera] at @s run tp @s 14.14 130 14.14 135.0 0.0
execute if score #current koth_camera matches 4 as @e[type=item_display,tag=camera] at @s run tp @s 10.0 130 17.32 150.0 0.0
execute if score #current koth_camera matches 5 as @e[type=item_display,tag=camera] at @s run tp @s 5.18 130 19.32 165.0 0.0
execute if score #current koth_camera matches 6 as @e[type=item_display,tag=camera] at @s run tp @s 0.0 130 20.0 180.0 0.0
execute if score #current koth_camera matches 7 as @e[type=item_display,tag=camera] at @s run tp @s -5.18 130 19.32 -165.0 0.0
execute if score #current koth_camera matches 8 as @e[type=item_display,tag=camera] at @s run tp @s -10.0 130 17.32 -150.0 0.0
execute if score #current koth_camera matches 9 as @e[type=item_display,tag=camera] at @s run tp @s -14.14 130 14.14 -135.0 0.0
execute if score #current koth_camera matches 10 as @e[type=item_display,tag=camera] at @s run tp @s -17.32 130 10.0 -120.0 0.0
execute if score #current koth_camera matches 11 as @e[type=item_display,tag=camera] at @s run tp @s -19.32 130 5.18 -105.0 0.0
execute if score #current koth_camera matches 12 as @e[type=item_display,tag=camera] at @s run tp @s -20.0 130 0.0 -90.0 0.0
execute if score #current koth_camera matches 13 as @e[type=item_display,tag=camera] at @s run tp @s -19.32 130 -5.18 -75.0 0.0
execute if score #current koth_camera matches 14 as @e[type=item_display,tag=camera] at @s run tp @s -17.32 130 -10.0 -60.0 0.0
execute if score #current koth_camera matches 15 as @e[type=item_display,tag=camera] at @s run tp @s -14.14 130 -14.14 -45.0 0.0
execute if score #current koth_camera matches 16 as @e[type=item_display,tag=camera] at @s run tp @s -10.0 130 -17.32 -30.0 0.0
execute if score #current koth_camera matches 17 as @e[type=item_display,tag=camera] at @s run tp @s -5.18 130 -19.32 -15.0 0.0
execute if score #current koth_camera matches 18 as @e[type=item_display,tag=camera] at @s run tp @s 0.0 130 -20.0 0.0 0.0
execute if score #current koth_camera matches 19 as @e[type=item_display,tag=camera] at @s run tp @s 5.18 130 -19.32 15.0 0.0
execute if score #current koth_camera matches 20 as @e[type=item_display,tag=camera] at @s run tp @s 10.0 130 -17.32 30.0 0.0
execute if score #current koth_camera matches 21 as @e[type=item_display,tag=camera] at @s run tp @s 14.14 130 -14.14 45.0 0.0
execute if score #current koth_camera matches 22 as @e[type=item_display,tag=camera] at @s run tp @s 17.32 130 -10.0 60.0 0.0
execute if score #current koth_camera matches 23 as @e[type=item_display,tag=camera] at @s run tp @s 19.32 130 -5.18 75.0 0.0
execute if score #current koth_camera matches 24 as @e[type=item_display,tag=camera] at @s run tp @s 20.0 130 0.0 90.0 0.0

# At position 24, increment rotation count and decide what to do next
execute if score #current koth_camera matches 24 run scoreboard players add #current amount_of_rotations 1

# Check if we need to continue or stop before resetting the counter
execute if score #current koth_camera matches 24 if score #current amount_of_rotations matches ..1 run scoreboard players set #current koth_camera 0
execute if score #current koth_camera matches 24 if score #current amount_of_rotations matches 2.. run schedule function koth:camera/cleanup 20t

# Continue the loop for positions 1-23, or 0 (which was just reset from 24)
execute if score #current koth_camera matches 0..23 run schedule function koth:camera/switch 20t