# Time's up! Determine winner
bossbar set koth:countdown name "Time's Up!"

# Mark game as ended to prevent repeated announcements
scoreboard players set #game_ended koth_timer 1

# Announce winning team based on longest beacon control time
function koth:bossbar/calculate_winner

execute if score #winner_color koth_timer matches 1 run title @a times 20 100 20
execute if score #winner_color koth_timer matches 1 run title @a subtitle {"text":"White Team","color":"white"}
execute if score #winner_color koth_timer matches 1 run title @a title {"text":"VICTORY!","color":"gold","bold":true}

execute if score #winner_color koth_timer matches 2 run title @a times 20 100 20
execute if score #winner_color koth_timer matches 2 run title @a subtitle {"text":"Orange Team","color":"gold"}
execute if score #winner_color koth_timer matches 2 run title @a title {"text":"VICTORY!","color":"gold","bold":true}

execute if score #winner_color koth_timer matches 3 run title @a times 20 100 20
execute if score #winner_color koth_timer matches 3 run title @a subtitle {"text":"Magenta Team","color":"light_purple"}
execute if score #winner_color koth_timer matches 3 run title @a title {"text":"VICTORY!","color":"gold","bold":true}

execute if score #winner_color koth_timer matches 4 run title @a times 20 100 20
execute if score #winner_color koth_timer matches 4 run title @a subtitle {"text":"Light Blue Team","color":"aqua"}
execute if score #winner_color koth_timer matches 4 run title @a title {"text":"VICTORY!","color":"gold","bold":true}

execute if score #winner_color koth_timer matches 5 run title @a times 20 100 20
execute if score #winner_color koth_timer matches 5 run title @a subtitle {"text":"Yellow Team","color":"yellow"}
execute if score #winner_color koth_timer matches 5 run title @a title {"text":"VICTORY!","color":"gold","bold":true}

execute if score #winner_color koth_timer matches 6 run title @a times 20 100 20
execute if score #winner_color koth_timer matches 6 run title @a subtitle {"text":"Lime Team","color":"green"}
execute if score #winner_color koth_timer matches 6 run title @a title {"text":"VICTORY!","color":"gold","bold":true}

execute if score #winner_color koth_timer matches 7 run title @a times 20 100 20
execute if score #winner_color koth_timer matches 7 run title @a subtitle {"text":"Pink Team","color":"light_purple"}
execute if score #winner_color koth_timer matches 7 run title @a title {"text":"VICTORY!","color":"gold","bold":true}

execute if score #winner_color koth_timer matches 8 run title @a times 20 100 20
execute if score #winner_color koth_timer matches 8 run title @a subtitle {"text":"Gray Team","color":"dark_gray"}
execute if score #winner_color koth_timer matches 8 run title @a title {"text":"VICTORY!","color":"gold","bold":true}

execute if score #winner_color koth_timer matches 9 run title @a times 20 100 20
execute if score #winner_color koth_timer matches 9 run title @a subtitle {"text":"Light Gray Team","color":"gray"}
execute if score #winner_color koth_timer matches 9 run title @a title {"text":"VICTORY!","color":"gold","bold":true}

execute if score #winner_color koth_timer matches 10 run title @a times 20 100 20
execute if score #winner_color koth_timer matches 10 run title @a subtitle {"text":"Cyan Team","color":"dark_aqua"}
execute if score #winner_color koth_timer matches 10 run title @a title {"text":"VICTORY!","color":"gold","bold":true}

execute if score #winner_color koth_timer matches 11 run title @a times 20 100 20
execute if score #winner_color koth_timer matches 11 run title @a subtitle {"text":"Purple Team","color":"dark_purple"}
execute if score #winner_color koth_timer matches 11 run title @a title {"text":"VICTORY!","color":"gold","bold":true}

execute if score #winner_color koth_timer matches 12 run title @a times 20 100 20
execute if score #winner_color koth_timer matches 12 run title @a subtitle {"text":"Blue Team","color":"blue"}
execute if score #winner_color koth_timer matches 12 run title @a title {"text":"VICTORY!","color":"gold","bold":true}

execute if score #winner_color koth_timer matches 13 run title @a times 20 100 20
execute if score #winner_color koth_timer matches 13 run title @a subtitle {"text":"Brown Team","color":"gold"}
execute if score #winner_color koth_timer matches 13 run title @a title {"text":"VICTORY!","color":"gold","bold":true}

execute if score #winner_color koth_timer matches 14 run title @a times 20 100 20
execute if score #winner_color koth_timer matches 14 run title @a subtitle {"text":"Green Team","color":"dark_green"}
execute if score #winner_color koth_timer matches 14 run title @a title {"text":"VICTORY!","color":"gold","bold":true}

execute if score #winner_color koth_timer matches 15 run title @a times 20 100 20
execute if score #winner_color koth_timer matches 15 run title @a subtitle {"text":"Red Team","color":"red"}
execute if score #winner_color koth_timer matches 15 run title @a title {"text":"VICTORY!","color":"gold","bold":true}

execute if score #winner_color koth_timer matches 16 run title @a times 20 100 20
execute if score #winner_color koth_timer matches 16 run title @a subtitle {"text":"Black Team","color":"dark_gray"}
execute if score #winner_color koth_timer matches 16 run title @a title {"text":"VICTORY!","color":"gold","bold":true}

# If no team ever controlled the beacon
execute if score #winner_color koth_timer matches 0 run title @a times 20 100 20
execute if score #winner_color koth_timer matches 0 run title @a title {"text":"NO WINNER","color":"red","bold":true}
execute if score #winner_color koth_timer matches 0 run title @a subtitle {"text":"No team controlled the beacon"}

# Play victory sound
playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 10 1
playsound minecraft:entity.ender_dragon.death master @a ~ ~ ~ 5 2

# Set all players to adventure mode
gamemode adventure @a
