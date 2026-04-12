# Check if player is above minimum before reduction (only then can they lose a heart)
execute if score @s max_health matches 2001.. run function koth:death-penalty/reduce_health_with_penalty
execute if score @s max_health matches ..2000 run function koth:death-penalty/reduce_health_no_penalty