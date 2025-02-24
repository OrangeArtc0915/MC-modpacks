tag @s remove lanuchced
tag @s add rotating
data modify entity @s NoGravity set value 1b

data modify entity @e[tag=math_marker,limit=1] Rotation set from entity @s ArmorItems[3].tag.rotation
execute rotated as @e[tag=math_marker,limit=1] run function rigid:direction
scoreboard players operation @s xi = u0 int
scoreboard players operation @s xj = u1 int
scoreboard players operation @s xk = u2 int
scoreboard players operation @s yi = v0 int
scoreboard players operation @s yj = v1 int
scoreboard players operation @s yk = v2 int
execute store result score @s x0 run data get entity @s Pos[0] 10000
execute store result score @s y0 run data get entity @s Pos[1] 10000
execute store result score @s z0 run data get entity @s Pos[2] 10000
scoreboard players operation u0 int *= 20 int
scoreboard players operation u1 int *= 20 int
scoreboard players operation u2 int *= 20 int
scoreboard players operation @s x0 += u0 int
scoreboard players operation @s y0 += u1 int
scoreboard players operation @s z0 += u2 int
scoreboard players set @s theta 1800000