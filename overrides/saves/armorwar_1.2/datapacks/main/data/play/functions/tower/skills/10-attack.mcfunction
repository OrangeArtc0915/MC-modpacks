tag @e[tag=monster,distance=..24.5,tag=!fly_mob] add tmp
function play:tower/nearest

execute as @e[tag=tmp] run function play:tower/skills/2-set
scoreboard players set dt shthVar 50

playsound minecraft:entity.dragon_fireball.explode player @a ~ ~ ~ 3.0 0.5
summon armor_stand ~ ~9.5 ~ {NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b}],Invisible:1b,NoBasePlate:1b,Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0.0f,0.0f,0.0f]},Tags:["rigid","missile_0","missile_1","tmp1"]}
scoreboard players set @e[tag=tmp1] omega_u 500000
execute as @e[tag=tmp1] run function shth:get_speed
scoreboard players set @e[tag=tmp1] explode_r 80
scoreboard players set @e[tag=tmp1] explode_d 1250



tag @e remove tmp1
tag @e remove tmp