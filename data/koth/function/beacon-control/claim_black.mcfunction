# Black team claimed the beacon
execute unless score #beacon_color koth_camera matches 16 run title @a times 10 60 10
execute unless score #beacon_color koth_camera matches 16 run title @a subtitle {"text":"Black Team","color":"dark_gray"}
execute unless score #beacon_color koth_camera matches 16 run title @a title {"text":"BEACON CLAIMED","color":"gold","bold":true}
execute unless score #beacon_color koth_camera matches 16 run playsound minecraft:block.beacon.activate master @a 0 271 0 20 1.2
scoreboard players set #beacon_color koth_camera 16
function koth:teams/update_beacon_holder
