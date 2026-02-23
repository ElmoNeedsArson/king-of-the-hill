# Light Blue team claimed the beacon
execute unless score #beacon_color koth_camera matches 4 run title @a times 10 60 10
execute unless score #beacon_color koth_camera matches 4 run title @a subtitle {"text":"Light Blue Team","color":"aqua"}
execute unless score #beacon_color koth_camera matches 4 run title @a title {"text":"BEACON CLAIMED","color":"gold","bold":true}
execute unless score #beacon_color koth_camera matches 4 run playsound minecraft:block.beacon.activate master @a 0 121 0 20 1.2
scoreboard players set #beacon_color koth_camera 4
function koth:teams/update_beacon_holder
