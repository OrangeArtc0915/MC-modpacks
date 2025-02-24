# 进行运动
execute store result entity @s Rotation[0] float 0.0001 run scoreboard players get @s ro0
scoreboard players add @s shthT 1
# Pos[0] = x + vx * t
scoreboard players operation tmp shthVar = @s shthVX
scoreboard players operation tmp shthVar *= @s shthT
scoreboard players operation tmp shthVar += @s shthIX
execute store result entity @s Pos[0] double 0.001 run scoreboard players get tmp shthVar
# Pos[1] = y + vy * t - g * t * t / 2
scoreboard players operation tmp shthVar = @s shthVY
scoreboard players operation tmp shthVar *= @s shthT
scoreboard players operation tmp2 shthVar = g shthVar
scoreboard players operation tmp2 shthVar *= @s shthT
scoreboard players operation tmp2 shthVar *= @s shthT
scoreboard players operation tmp2 shthVar /= 2 shthVar
scoreboard players operation tmp shthVar -= tmp2 shthVar
scoreboard players operation tmp shthVar += @s shthIY
execute store result entity @s Pos[1] double 0.001 run scoreboard players get tmp shthVar
# Pos[2] = z + vz * t
scoreboard players operation tmp shthVar = @s shthVZ
scoreboard players operation tmp shthVar *= @s shthT
scoreboard players operation tmp shthVar += @s shthIZ
execute store result entity @s Pos[2] double 0.001 run scoreboard players get tmp shthVar

execute if score @s shthDT < @s shthT run function items:missile_0/explode

# summon armor_stand ~ ~ ~ {Tags:["mark"],NoGravity:1b}