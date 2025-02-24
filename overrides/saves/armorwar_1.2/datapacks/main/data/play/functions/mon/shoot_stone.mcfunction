tp @e[tag=math_marker,limit=1] ~ ~ ~
execute store result score target_x shthVar run data get entity @e[tag=math_marker,limit=1] Pos[0] 1000
execute store result score target_y shthVar run data get entity @e[tag=math_marker,limit=1] Pos[1] 1000
execute store result score target_z shthVar run data get entity @e[tag=math_marker,limit=1] Pos[2] 1000

scoreboard players set dt shthVar 35
execute at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:stone",Count:1b}],Invisible:1b,NoBasePlate:1b,Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0.0f,0.0f,0.0f]},Tags:["rigid","missile_0","missile_3","tmp1"]}
scoreboard players set @e[tag=tmp1] omega_u 500000
execute as @e[tag=tmp1] run function shth:get_speed

scoreboard players set @e[tag=tmp1] explode_r 60
scoreboard players set @e[tag=tmp1] explode_d 380
tag @e remove tmp1

execute at @s run playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 3.5 0.1