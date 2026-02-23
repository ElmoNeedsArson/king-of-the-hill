# Cyan team claimed the beacon
execute unless score #beacon_color koth_camera matches 10 run title @a times 10 60 10
execute unless score #beacon_color koth_camera matches 10 run title @a subtitle {"text":"Cyan Team","color":"dark_aqua"}
execute unless score #beacon_color koth_camera matches 10 run title @a title {"text":"BEACON CLAIMED","color":"gold","bold":true}
execute unless score #beacon_color koth_camera matches 10 run playsound minecraft:block.beacon.activate master @a 0 121 0 20 1.2
scoreboard players set #beacon_color koth_camera 10
function koth:teams/update_beacon_holder
