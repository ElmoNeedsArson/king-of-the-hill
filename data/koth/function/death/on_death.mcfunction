# say death!

advancement revoke @s only koth:death
# summon zombie ~ ~ ~ {PersistenceRequired:true,CanPickUpLoot:true}

summon minecraft:marker ~ ~ ~ {Tags:["koth_death_marker"]}

data modify entity @e[type=minecraft:marker,tag=koth_death_marker,sort=nearest,limit=1] OwnerUUID set from entity @s UUID

tag @s add koth_needs_respawn