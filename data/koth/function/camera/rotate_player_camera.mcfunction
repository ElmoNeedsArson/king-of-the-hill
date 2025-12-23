# Rotate all player cameras from looking up (-90) to looking forward (0)
execute as @e[type=item_display,tag=player_cam] at @s run tp @s ~ ~ ~ ~ 0
function koth:bossbar/countdown_setup