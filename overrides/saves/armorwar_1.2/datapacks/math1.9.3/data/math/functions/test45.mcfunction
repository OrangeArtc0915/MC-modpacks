execute store result entity @e[tag=math_marker,limit=1] Rotation[0] float -0.0001 run scoreboard players get input int
execute as @e[tag=math_marker,limit=1] at @s positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
execute store result score result int run data get entity @e[tag=math_marker,limit=1] Pos[0] 10000

execute store result entity @e[tag=math_marker,limit=1] Pos[0] double 0.0001 run scoreboard players get result int