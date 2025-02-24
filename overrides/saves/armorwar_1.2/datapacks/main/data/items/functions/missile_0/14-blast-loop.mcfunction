summon armor_stand ~ ~ ~ {NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b}],Invisible:1b,NoBasePlate:1b,Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0.0f,0.0f,0.0f]},Tags:["missile_0","tmp1"]}
scoreboard players set dt shthVar 40
execute store result score target_x shthVar run data get entity @s ArmorItems[3].tag.pofs[0][0] 1000
execute store result score target_y shthVar run data get entity @s ArmorItems[3].tag.pofs[0][1] 1000
execute store result score target_z shthVar run data get entity @s ArmorItems[3].tag.pofs[0][2] 1000
execute as @e[tag=tmp1] run function shth:get_speed
scoreboard players set @e[tag=tmp1] omega_u 500000
scoreboard players set @e[tag=tmp1] particle 100
scoreboard players set @e[tag=tmp1] explode_r 80
scoreboard players operation @e[tag=tmp1] explode_d = @s explode_d
tag @e remove tmp1

scoreboard players remove temp int 1
data remove entity @s ArmorItems[3].tag.pofs[0]
execute if score temp int matches 1.. run function items:missile_0/14-blast-loop