function koth:beacon-spawn/spawn_bedrock
summon block_display 0 101 0 {block_state:{Name:"minecraft:beacon"},transformation:{translation:[-0.5f,5f,-0.5f],scale:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},teleport_duration:10,interpolation_duration:10,Tags:["beacon_core","bd"]}
schedule function koth:beacon-spawn/animate_step1 1t
function koth:titles/schedule_all

# Epic background music/ambience with large range
playsound minecraft:music_disc.creator_music_box record @a 0 100 0 20 1
playsound minecraft:ambient.nether_wastes.loop ambient @a 0 100 0 20 0.8
playsound minecraft:block.beacon.ambient ambient @a 0 100 0 20 1