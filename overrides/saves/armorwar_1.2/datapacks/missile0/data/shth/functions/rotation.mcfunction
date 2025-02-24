execute store result entity @s Pos[0] double 0.001 run scoreboard players get dx shthVar
execute store result entity @s Pos[1] double 0.001 run scoreboard players get dy shthVar
execute store result entity @s Pos[2] double 0.001 run scoreboard players get dz shthVar
execute positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ~ ~ ~ ~180 ~
execute at @s run tp @s ~ ~ ~ ~-90.0 ~
execute store result score @e[tag=stmp,limit=1] ro0 run data get entity @s Rotation[0] 10000