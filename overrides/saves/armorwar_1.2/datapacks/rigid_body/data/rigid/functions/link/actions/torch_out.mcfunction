tag @s remove rigid_link
tag @s add test7
execute at @s rotated ~ ~-90.0 positioned 0.0 0.0 0.0 run tp @e[tag=math_marker,limit=1] ^ ^ ^0.1
execute store result score @s motion0 run data get entity @e[tag=math_marker,limit=1] Pos[0] 10000
execute store result score @s motion1 run data get entity @e[tag=math_marker,limit=1] Pos[1] 10000
execute store result score @s motion2 run data get entity @e[tag=math_marker,limit=1] Pos[2] 10000
scoreboard players set @s killtime 5