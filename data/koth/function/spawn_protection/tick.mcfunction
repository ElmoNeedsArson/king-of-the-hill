# Called every second while spawn is sealed (warned_20min == 0)

# Warn players inside the zone via actionbar
# at @s sets Y to player feet; [x=0,z=0,distance=..40] is a horizontal cylinder check
execute as @a at @s if entity @s[x=0,z=0,distance=..40] \
    run title @s actionbar {"text":"Spawn is sealed — opens at 20 minutes remaining!","color":"red","bold":true}

# Draw particle wall (rings stacked every 2 blocks, y=50 to y=200)
# ring.mcfunction uses the caller's position, so each positioned call draws one ring
execute positioned 0 50 0 run function koth:spawn_protection/ring
execute positioned 0 52 0 run function koth:spawn_protection/ring
execute positioned 0 54 0 run function koth:spawn_protection/ring
execute positioned 0 56 0 run function koth:spawn_protection/ring
execute positioned 0 58 0 run function koth:spawn_protection/ring
execute positioned 0 60 0 run function koth:spawn_protection/ring
execute positioned 0 62 0 run function koth:spawn_protection/ring
execute positioned 0 64 0 run function koth:spawn_protection/ring
execute positioned 0 66 0 run function koth:spawn_protection/ring
execute positioned 0 68 0 run function koth:spawn_protection/ring
execute positioned 0 70 0 run function koth:spawn_protection/ring
execute positioned 0 72 0 run function koth:spawn_protection/ring
execute positioned 0 74 0 run function koth:spawn_protection/ring
execute positioned 0 76 0 run function koth:spawn_protection/ring
execute positioned 0 78 0 run function koth:spawn_protection/ring
execute positioned 0 80 0 run function koth:spawn_protection/ring
execute positioned 0 82 0 run function koth:spawn_protection/ring
execute positioned 0 84 0 run function koth:spawn_protection/ring
execute positioned 0 86 0 run function koth:spawn_protection/ring
execute positioned 0 88 0 run function koth:spawn_protection/ring
execute positioned 0 90 0 run function koth:spawn_protection/ring
execute positioned 0 92 0 run function koth:spawn_protection/ring
execute positioned 0 94 0 run function koth:spawn_protection/ring
execute positioned 0 96 0 run function koth:spawn_protection/ring
execute positioned 0 98 0 run function koth:spawn_protection/ring
execute positioned 0 100 0 run function koth:spawn_protection/ring
execute positioned 0 102 0 run function koth:spawn_protection/ring
execute positioned 0 104 0 run function koth:spawn_protection/ring
execute positioned 0 106 0 run function koth:spawn_protection/ring
execute positioned 0 108 0 run function koth:spawn_protection/ring
execute positioned 0 110 0 run function koth:spawn_protection/ring
execute positioned 0 112 0 run function koth:spawn_protection/ring
execute positioned 0 114 0 run function koth:spawn_protection/ring
execute positioned 0 116 0 run function koth:spawn_protection/ring
execute positioned 0 118 0 run function koth:spawn_protection/ring
execute positioned 0 120 0 run function koth:spawn_protection/ring
execute positioned 0 122 0 run function koth:spawn_protection/ring
execute positioned 0 124 0 run function koth:spawn_protection/ring
execute positioned 0 126 0 run function koth:spawn_protection/ring
execute positioned 0 128 0 run function koth:spawn_protection/ring
execute positioned 0 130 0 run function koth:spawn_protection/ring
execute positioned 0 132 0 run function koth:spawn_protection/ring
execute positioned 0 134 0 run function koth:spawn_protection/ring
execute positioned 0 136 0 run function koth:spawn_protection/ring
execute positioned 0 138 0 run function koth:spawn_protection/ring
execute positioned 0 140 0 run function koth:spawn_protection/ring
execute positioned 0 142 0 run function koth:spawn_protection/ring
execute positioned 0 144 0 run function koth:spawn_protection/ring
execute positioned 0 146 0 run function koth:spawn_protection/ring
execute positioned 0 148 0 run function koth:spawn_protection/ring
execute positioned 0 150 0 run function koth:spawn_protection/ring
execute positioned 0 152 0 run function koth:spawn_protection/ring
execute positioned 0 154 0 run function koth:spawn_protection/ring
execute positioned 0 156 0 run function koth:spawn_protection/ring
execute positioned 0 158 0 run function koth:spawn_protection/ring
execute positioned 0 160 0 run function koth:spawn_protection/ring
execute positioned 0 162 0 run function koth:spawn_protection/ring
execute positioned 0 164 0 run function koth:spawn_protection/ring
execute positioned 0 166 0 run function koth:spawn_protection/ring
execute positioned 0 168 0 run function koth:spawn_protection/ring
execute positioned 0 170 0 run function koth:spawn_protection/ring
execute positioned 0 172 0 run function koth:spawn_protection/ring
execute positioned 0 174 0 run function koth:spawn_protection/ring
execute positioned 0 176 0 run function koth:spawn_protection/ring
execute positioned 0 178 0 run function koth:spawn_protection/ring
execute positioned 0 180 0 run function koth:spawn_protection/ring
execute positioned 0 182 0 run function koth:spawn_protection/ring
execute positioned 0 184 0 run function koth:spawn_protection/ring
execute positioned 0 186 0 run function koth:spawn_protection/ring
execute positioned 0 188 0 run function koth:spawn_protection/ring
execute positioned 0 190 0 run function koth:spawn_protection/ring
execute positioned 0 192 0 run function koth:spawn_protection/ring
execute positioned 0 194 0 run function koth:spawn_protection/ring
execute positioned 0 196 0 run function koth:spawn_protection/ring
execute positioned 0 198 0 run function koth:spawn_protection/ring
execute positioned 0 200 0 run function koth:spawn_protection/ring
