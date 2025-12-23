# Update team prefixes to show which team controls the beacon
# First, clear all team suffixes
team modify team_white suffix ""
team modify team_orange suffix ""
team modify team_magenta suffix ""
team modify team_light_blue suffix ""
team modify team_yellow suffix ""
team modify team_lime suffix ""
team modify team_pink suffix ""
team modify team_gray suffix ""
team modify team_light_gray suffix ""
team modify team_cyan suffix ""
team modify team_purple suffix ""
team modify team_blue suffix ""
team modify team_brown suffix ""
team modify team_green suffix ""
team modify team_red suffix ""
team modify team_black suffix ""

# Add suffix to the team that controls the beacon
execute if score #beacon_color koth_camera matches 1 run team modify team_white suffix {"text":" ⚑","color":"gold","bold":true}
execute if score #beacon_color koth_camera matches 2 run team modify team_orange suffix {"text":" ⚑","color":"gold","bold":true}
execute if score #beacon_color koth_camera matches 3 run team modify team_magenta suffix {"text":" ⚑","color":"gold","bold":true}
execute if score #beacon_color koth_camera matches 4 run team modify team_light_blue suffix {"text":" ⚑","color":"gold","bold":true}
execute if score #beacon_color koth_camera matches 5 run team modify team_yellow suffix {"text":" ⚑","color":"gold","bold":true}
execute if score #beacon_color koth_camera matches 6 run team modify team_lime suffix {"text":" ⚑","color":"gold","bold":true}
execute if score #beacon_color koth_camera matches 7 run team modify team_pink suffix {"text":" ⚑","color":"gold","bold":true}
execute if score #beacon_color koth_camera matches 8 run team modify team_gray suffix {"text":" ⚑","color":"gold","bold":true}
execute if score #beacon_color koth_camera matches 9 run team modify team_light_gray suffix {"text":" ⚑","color":"gold","bold":true}
execute if score #beacon_color koth_camera matches 10 run team modify team_cyan suffix {"text":" ⚑","color":"gold","bold":true}
execute if score #beacon_color koth_camera matches 11 run team modify team_purple suffix {"text":" ⚑","color":"gold","bold":true}
execute if score #beacon_color koth_camera matches 12 run team modify team_blue suffix {"text":" ⚑","color":"gold","bold":true}
execute if score #beacon_color koth_camera matches 13 run team modify team_brown suffix {"text":" ⚑","color":"gold","bold":true}
execute if score #beacon_color koth_camera matches 14 run team modify team_green suffix {"text":" ⚑","color":"gold","bold":true}
execute if score #beacon_color koth_camera matches 15 run team modify team_red suffix {"text":" ⚑","color":"gold","bold":true}
execute if score #beacon_color koth_camera matches 16 run team modify team_black suffix {"text":" ⚑","color":"gold","bold":true}
