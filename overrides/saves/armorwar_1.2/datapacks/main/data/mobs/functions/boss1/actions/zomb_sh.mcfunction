tag @s remove rigid_link

execute store result score x int run scoreboard players set target_x shthVar 4321000
execute store result score y int run scoreboard players set target_y shthVar 16000
execute store result score z int run scoreboard players set target_z shthVar 1206000
scoreboard players operation x int *= 10 int
scoreboard players operation y int *= 10 int
scoreboard players operation z int *= 10 int
execute as @e[tag=math_marker,limit=1] run function main:store_pos

execute at @e[tag=math_marker,limit=1] run function math:3get-length

scoreboard players operation dt shthVar = result int
scoreboard players operation dt shthVar /= 2000 int
scoreboard players operation dt shthVar > 5 int

tag @s add missile_0
tag @s add missile_z
tag @s add play_set

execute at @s rotated ~180.0 ~ run function shth:get_speed

execute at @s run playsound minecraft:entity.firework_rocket.launch player @a ~ ~ ~ 5 0.5