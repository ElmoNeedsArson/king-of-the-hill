execute as @s[nbt={Dimension:"minecraft:overworld"}] in minecraft:overworld run function koth:death/overworld_respawn
execute as @s[nbt={Dimension:"minecraft:the_nether"}] in minecraft:the_nether run function koth:death/nether_respawn
execute as @s[nbt={Dimension:"minecraft:the_end"}] in minecraft:the_end run function koth:death/overworld_respawn

# Cleanup marker
kill @e[type=minecraft:marker,tag=koth_death_marker,sort=nearest,limit=1]

# Cleanup state
tag @s remove koth_needs_respawn

execute as @s run function koth:teams/basic_kit
# scoreboard players set @s koth_alive 1