tag @e[tag=monster,distance=..24.8,tag=!fly_mob] add tmp
function play:tower/nearest

summon armor_stand ~ ~9.5 ~ {NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:netherite_block",Count:1b,tag:{CustomModelData:2000,pofs:[[0.0d,0.0d,0.0d]]}}],Invisible:1b,NoBasePlate:1b,Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0.0f,0.0f,0.0f]},Tags:["14-blast","rigid","missile_0","missile_1","tmp1"]}

execute as @e[tag=tmp] run function play:tower/skills/14-set
scoreboard players add target_y shthVar 12500

scoreboard players set dt shthVar 40

playsound minecraft:entity.dragon_fireball.explode player @a ~ ~ ~ 3.0 0.5


scoreboard players set @e[tag=tmp1] omega_u 500000
execute as @e[tag=tmp1] run function shth:get_speed
scoreboard players set @e[tag=tmp1] explode_r 100
scoreboard players operation @e[tag=tmp1] explode_d = @s value_1



tag @e remove tmp1
tag @e remove tmp



tag @s remove 14-blast