# Summon ONE camera that will move through all positions

summon item_display 20.0 73 0.0 {view_range:0f,teleport_duration:20,Tags:["camera","active_cam"],item:{id:"minecraft:stone"},Rotation:[90.0f,0.0f]}
tp @a @e[type=item_display,tag=active_cam,limit=1]
# Set all players to spectator mode
gamemode spectator @a

# Initialize counter to 0 and start the camera sequence
scoreboard players set #current koth_camera 0
scoreboard players set #current amount_of_rotations 0
function koth:camera/switch
function koth:beacon-spawn/spawn

# Spawn mannequins for all players around the beacon
function koth:camera/spawn_mannequins