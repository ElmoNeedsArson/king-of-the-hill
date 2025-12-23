# Check if any player has died and apply penalty
execute as @a[scores={deaths=1..}] run function koth:death-penalty/apply_penalty
