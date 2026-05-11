# Determine winner by longest beacon control time.
# Ties are resolved after the first pass so the current holder wins if tied for first.
scoreboard players set #winner_color koth_timer 0
scoreboard players set #winning_time koth_control_time 0

execute if score White_Team koth_control_time > #winning_time koth_control_time run scoreboard players set #winner_color koth_timer 1
execute if score White_Team koth_control_time > #winning_time koth_control_time run scoreboard players operation #winning_time koth_control_time = White_Team koth_control_time
execute if score Orange_Team koth_control_time > #winning_time koth_control_time run scoreboard players set #winner_color koth_timer 2
execute if score Orange_Team koth_control_time > #winning_time koth_control_time run scoreboard players operation #winning_time koth_control_time = Orange_Team koth_control_time
execute if score Magenta_Team koth_control_time > #winning_time koth_control_time run scoreboard players set #winner_color koth_timer 3
execute if score Magenta_Team koth_control_time > #winning_time koth_control_time run scoreboard players operation #winning_time koth_control_time = Magenta_Team koth_control_time
execute if score Light_Blue_Team koth_control_time > #winning_time koth_control_time run scoreboard players set #winner_color koth_timer 4
execute if score Light_Blue_Team koth_control_time > #winning_time koth_control_time run scoreboard players operation #winning_time koth_control_time = Light_Blue_Team koth_control_time
execute if score Yellow_Team koth_control_time > #winning_time koth_control_time run scoreboard players set #winner_color koth_timer 5
execute if score Yellow_Team koth_control_time > #winning_time koth_control_time run scoreboard players operation #winning_time koth_control_time = Yellow_Team koth_control_time
execute if score Lime_Team koth_control_time > #winning_time koth_control_time run scoreboard players set #winner_color koth_timer 6
execute if score Lime_Team koth_control_time > #winning_time koth_control_time run scoreboard players operation #winning_time koth_control_time = Lime_Team koth_control_time
execute if score Pink_Team koth_control_time > #winning_time koth_control_time run scoreboard players set #winner_color koth_timer 7
execute if score Pink_Team koth_control_time > #winning_time koth_control_time run scoreboard players operation #winning_time koth_control_time = Pink_Team koth_control_time
execute if score Gray_Team koth_control_time > #winning_time koth_control_time run scoreboard players set #winner_color koth_timer 8
execute if score Gray_Team koth_control_time > #winning_time koth_control_time run scoreboard players operation #winning_time koth_control_time = Gray_Team koth_control_time
execute if score Light_Gray_Team koth_control_time > #winning_time koth_control_time run scoreboard players set #winner_color koth_timer 9
execute if score Light_Gray_Team koth_control_time > #winning_time koth_control_time run scoreboard players operation #winning_time koth_control_time = Light_Gray_Team koth_control_time
execute if score Cyan_Team koth_control_time > #winning_time koth_control_time run scoreboard players set #winner_color koth_timer 10
execute if score Cyan_Team koth_control_time > #winning_time koth_control_time run scoreboard players operation #winning_time koth_control_time = Cyan_Team koth_control_time
execute if score Purple_Team koth_control_time > #winning_time koth_control_time run scoreboard players set #winner_color koth_timer 11
execute if score Purple_Team koth_control_time > #winning_time koth_control_time run scoreboard players operation #winning_time koth_control_time = Purple_Team koth_control_time
execute if score Blue_Team koth_control_time > #winning_time koth_control_time run scoreboard players set #winner_color koth_timer 12
execute if score Blue_Team koth_control_time > #winning_time koth_control_time run scoreboard players operation #winning_time koth_control_time = Blue_Team koth_control_time
execute if score Brown_Team koth_control_time > #winning_time koth_control_time run scoreboard players set #winner_color koth_timer 13
execute if score Brown_Team koth_control_time > #winning_time koth_control_time run scoreboard players operation #winning_time koth_control_time = Brown_Team koth_control_time
execute if score Green_Team koth_control_time > #winning_time koth_control_time run scoreboard players set #winner_color koth_timer 14
execute if score Green_Team koth_control_time > #winning_time koth_control_time run scoreboard players operation #winning_time koth_control_time = Green_Team koth_control_time
execute if score Red_Team koth_control_time > #winning_time koth_control_time run scoreboard players set #winner_color koth_timer 15
execute if score Red_Team koth_control_time > #winning_time koth_control_time run scoreboard players operation #winning_time koth_control_time = Red_Team koth_control_time
execute if score Black_Team koth_control_time > #winning_time koth_control_time run scoreboard players set #winner_color koth_timer 16
execute if score Black_Team koth_control_time > #winning_time koth_control_time run scoreboard players operation #winning_time koth_control_time = Black_Team koth_control_time

execute if score #winning_time koth_control_time matches 1.. if score #beacon_color koth_camera matches 1 if score White_Team koth_control_time = #winning_time koth_control_time run scoreboard players set #winner_color koth_timer 1
execute if score #winning_time koth_control_time matches 1.. if score #beacon_color koth_camera matches 2 if score Orange_Team koth_control_time = #winning_time koth_control_time run scoreboard players set #winner_color koth_timer 2
execute if score #winning_time koth_control_time matches 1.. if score #beacon_color koth_camera matches 3 if score Magenta_Team koth_control_time = #winning_time koth_control_time run scoreboard players set #winner_color koth_timer 3
execute if score #winning_time koth_control_time matches 1.. if score #beacon_color koth_camera matches 4 if score Light_Blue_Team koth_control_time = #winning_time koth_control_time run scoreboard players set #winner_color koth_timer 4
execute if score #winning_time koth_control_time matches 1.. if score #beacon_color koth_camera matches 5 if score Yellow_Team koth_control_time = #winning_time koth_control_time run scoreboard players set #winner_color koth_timer 5
execute if score #winning_time koth_control_time matches 1.. if score #beacon_color koth_camera matches 6 if score Lime_Team koth_control_time = #winning_time koth_control_time run scoreboard players set #winner_color koth_timer 6
execute if score #winning_time koth_control_time matches 1.. if score #beacon_color koth_camera matches 7 if score Pink_Team koth_control_time = #winning_time koth_control_time run scoreboard players set #winner_color koth_timer 7
execute if score #winning_time koth_control_time matches 1.. if score #beacon_color koth_camera matches 8 if score Gray_Team koth_control_time = #winning_time koth_control_time run scoreboard players set #winner_color koth_timer 8
execute if score #winning_time koth_control_time matches 1.. if score #beacon_color koth_camera matches 9 if score Light_Gray_Team koth_control_time = #winning_time koth_control_time run scoreboard players set #winner_color koth_timer 9
execute if score #winning_time koth_control_time matches 1.. if score #beacon_color koth_camera matches 10 if score Cyan_Team koth_control_time = #winning_time koth_control_time run scoreboard players set #winner_color koth_timer 10
execute if score #winning_time koth_control_time matches 1.. if score #beacon_color koth_camera matches 11 if score Purple_Team koth_control_time = #winning_time koth_control_time run scoreboard players set #winner_color koth_timer 11
execute if score #winning_time koth_control_time matches 1.. if score #beacon_color koth_camera matches 12 if score Blue_Team koth_control_time = #winning_time koth_control_time run scoreboard players set #winner_color koth_timer 12
execute if score #winning_time koth_control_time matches 1.. if score #beacon_color koth_camera matches 13 if score Brown_Team koth_control_time = #winning_time koth_control_time run scoreboard players set #winner_color koth_timer 13
execute if score #winning_time koth_control_time matches 1.. if score #beacon_color koth_camera matches 14 if score Green_Team koth_control_time = #winning_time koth_control_time run scoreboard players set #winner_color koth_timer 14
execute if score #winning_time koth_control_time matches 1.. if score #beacon_color koth_camera matches 15 if score Red_Team koth_control_time = #winning_time koth_control_time run scoreboard players set #winner_color koth_timer 15
execute if score #winning_time koth_control_time matches 1.. if score #beacon_color koth_camera matches 16 if score Black_Team koth_control_time = #winning_time koth_control_time run scoreboard players set #winner_color koth_timer 16
