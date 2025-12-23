# Store current max health (multiply by 100 to preserve decimals)
execute store result score @s max_health run attribute @s minecraft:max_health base get 100

# Check if player is above minimum (5 hearts = 1000)
execute if score @s max_health matches 1001.. run function koth:death-penalty/reduce_health

# Reset death counter regardless
scoreboard players set @s deaths 0
