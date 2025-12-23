# Start ground-finding for all tagged players
execute as @a[tag=needs_ground] at @s run function koth:camera/find_ground

# After ground finding completes, trigger spawn effects for landed players
function koth:camera/spawn_effects

