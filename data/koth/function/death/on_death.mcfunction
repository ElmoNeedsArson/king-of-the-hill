# say death!

advancement revoke @s only koth:death
# summon zombie ~ ~ ~ {PersistenceRequired:true,CanPickUpLoot:true}

# Kill any stale marker from a previous death before creating a new one
kill @e[type=minecraft:marker,tag=koth_death_marker]

summon minecraft:marker ~ ~ ~ {Tags:["koth_death_marker"]}

data modify entity @e[type=minecraft:marker,tag=koth_death_marker,sort=nearest,limit=1] OwnerUUID set from entity @s UUID

# Force-load this chunk so the marker stays findable when player respawns far away
forceload add ~ ~

tag @s add koth_needs_respawn

kill @e[  type=minecraft:item,  nbt={Item:{components:{"minecraft:custom_data":{koth_kill_on_drop:1b}}}}]