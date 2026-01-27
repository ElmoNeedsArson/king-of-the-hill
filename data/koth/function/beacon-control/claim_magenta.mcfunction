# Magenta team claimed the beacon
execute unless score #beacon_color koth_camera matches 3 run title @a times 10 60 10
execute unless score #beacon_color koth_camera matches 3 run title @a subtitle {"text":"Magenta Team","color":"light_purple"}
execute unless score #beacon_color koth_camera matches 3 run title @a title {"text":"BEACON CLAIMED","color":"gold","bold":true}
execute unless score #beacon_color koth_camera matches 3 run playsound minecraft:block.beacon.activate master @a 0 71 0 20 1.2
scoreboard players set #beacon_color koth_camera 3
function koth:teams/update_beacon_holder
