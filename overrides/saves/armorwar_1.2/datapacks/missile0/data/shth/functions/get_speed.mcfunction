# 求初速度
# 调用的时候，请给记分板shthVar上的target_x、target_y、target_z、dt分别赋值为目标位置xyz坐标的一千倍、飞行时间，然后以炮弹为执行者执行本函数
scoreboard players operation dx shthVar = target_x shthVar
scoreboard players operation dy shthVar = target_y shthVar
scoreboard players operation dz shthVar = target_z shthVar

execute store result score @s shthIX run data get entity @s Pos[0] 1000
execute store result score @s shthIY run data get entity @s Pos[1] 1000
execute store result score @s shthIZ run data get entity @s Pos[2] 1000

scoreboard players operation dx shthVar -= @s shthIX
scoreboard players operation dy shthVar -= @s shthIY
scoreboard players operation dz shthVar -= @s shthIZ

tag @s add stmp
execute as @e[tag=math_marker] run function shth:rotation
tag @s remove stmp

# vx = dx / dt
scoreboard players operation @s shthVX = dx shthVar
scoreboard players operation @s shthVX /= dt shthVar
# vy = dy / dt + g * dt / 2
scoreboard players operation @s shthVY = dy shthVar
scoreboard players operation @s shthVY /= dt shthVar
scoreboard players operation tmp shthVar = g shthVar
scoreboard players operation tmp shthVar *= dt shthVar
scoreboard players operation tmp shthVar /= 2 shthVar
scoreboard players operation @s shthVY += tmp shthVar
# vz = dz / dt
scoreboard players operation @s shthVZ = dz shthVar
scoreboard players operation @s shthVZ /= dt shthVar

scoreboard players operation @s shthDT = dt shthVar
