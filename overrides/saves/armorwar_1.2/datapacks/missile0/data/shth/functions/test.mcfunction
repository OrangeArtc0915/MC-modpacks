# 测试函数，不用可删除
kill @e[tag=missile_0]
kill @e[tag=target]
kill @e[tag=mark]
summon armor_stand ~ ~20.5 ~ {Tags:["missile_0"]}
summon armor_stand ~10 ~-0.5 ~-5 {Tags:["target"]}
execute store result score target_x shthVar run data get entity @e[tag=target,limit=1] Pos[0] 1000
execute store result score target_y shthVar run data get entity @e[tag=target,limit=1] Pos[1] 1000
execute store result score target_z shthVar run data get entity @e[tag=target,limit=1] Pos[2] 1000
scoreboard players set dt shthVar 40
execute as @e[tag=missile_0] at @s run function shth:get_speed
