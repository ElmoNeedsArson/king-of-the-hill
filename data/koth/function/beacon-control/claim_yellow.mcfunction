# Yellow team claimed the beacon
execute unless score #beacon_color koth_camera matches 5 run title @a times 10 60 10
execute unless score #beacon_color koth_camera matches 5 run title @a subtitle {"text":"Yellow Team","color":"yellow"}
execute unless score #beacon_color koth_camera matches 5 run title @a title {"text":"BEACON CLAIMED","color":"gold","bold":true}
execute unless score #beacon_color koth_camera matches 5 run playsound minecraft:block.beacon.activate master @a 0 271 0 20 1.2
scoreboard players set #beacon_color koth_camera 5
function koth:teams/update_beacon_holder
