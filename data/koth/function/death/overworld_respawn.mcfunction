# Teleport to death location first — guarantees player never snaps to spawnpoint if spread fails
execute as @s at @e[type=minecraft:marker,tag=koth_death_marker,sort=nearest,limit=1] run tp @s ~ ~ ~

# If death was within 100 blocks of 0,0 (spawn area): use 60 block radius to push them away
execute as @s at @e[type=minecraft:marker,tag=koth_death_marker,sort=nearest,limit=1] if entity @e[type=minecraft:marker,tag=koth_death_marker,x=-100,y=-64,z=-100,dx=200,dy=384,dz=200,limit=1] run spreadplayers ~ ~ 5 60 false @s
# Otherwise: spread within 50 blocks of death location (increased range to handle ocean/coastal deaths)
execute as @s at @e[type=minecraft:marker,tag=koth_death_marker,sort=nearest,limit=1] unless entity @e[type=minecraft:marker,tag=koth_death_marker,x=-100,y=-64,z=-100,dx=200,dy=384,dz=200,limit=1] run spreadplayers ~ ~ 5 20 false @s