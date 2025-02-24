execute store result score p0- int run data get entity @s Pos[0] 10000
execute store result score p1- int run data get entity @s Pos[1] 10000
execute store result score p2- int run data get entity @s Pos[2] 10000

execute at @s rotated ~ 0.0 positioned 0.0 0.0 0.0 run tp @e[tag=math_marker,limit=1] ^-1.0 ^ ^
execute store result score u0- int run data get entity @e[tag=math_marker,limit=1] Pos[0] 10000
execute store result score u1- int run data get entity @e[tag=math_marker,limit=1] Pos[1] 10000
execute store result score u2- int run data get entity @e[tag=math_marker,limit=1] Pos[2] 10000

execute at @s rotated ~ 0.0 positioned 0.0 0.0 0.0 run tp @e[tag=math_marker,limit=1] ^ ^ ^1.0
execute store result score v0- int run data get entity @e[tag=math_marker,limit=1] Pos[0] 10000
execute store result score v1- int run data get entity @e[tag=math_marker,limit=1] Pos[1] 10000
execute store result score v2- int run data get entity @e[tag=math_marker,limit=1] Pos[2] 10000


execute if data entity @s ArmorItems[3].tag.array[0] run function mobs:array_loop0

execute unless data entity @s ArmorItems[3].tag.array[0] run tag @s remove monster_array