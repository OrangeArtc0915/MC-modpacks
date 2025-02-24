execute store result score x int run data get entity @s Pos[0] 10000
execute store result score y int run data get entity @s Pos[1] 10000
execute store result score z int run data get entity @s Pos[2] 10000

data modify entity @e[tag=math_marker,limit=1] Pos set from entity @s Motion
execute as @e[tag=math_marker,limit=1] positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ^ ^ ^0.35
execute store result score tempx int run data get entity @e[tag=math_marker,limit=1] Pos[0] 10000
execute store result score tempy int run data get entity @e[tag=math_marker,limit=1] Pos[1] 10000
execute store result score tempz int run data get entity @e[tag=math_marker,limit=1] Pos[2] 10000

scoreboard players operation x int += tempx int
scoreboard players operation y int += tempy int
scoreboard players operation z int += tempz int

execute as @e[tag=math_marker,limit=1] run function main:store_pos

execute at @e[tag=math_marker,limit=1] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["mpar_red_dust"],Duration:2}