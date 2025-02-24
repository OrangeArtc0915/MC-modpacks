execute as @e[tag=tmp1] run tp @s ~ ~ ~ ~ ~
summon armor_stand ~ ~-1.0 ~ {Fire:10000s,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:blue_ice",Count:1b}],Invisible:1b,NoBasePlate:1b,Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0.0f,0.0f,0.0f]},Tags:["tmp5","magic_ball0","magic_ball2","rigid"]}
scoreboard players operation @e[tag=tmp5] target = @e[tag=tmp,limit=1] muid
scoreboard players set @e[tag=tmp5] omega_u 50000
scoreboard players set @e[tag=tmp5] killtime 13
tag @e remove tmp5