execute store result score p0 int run data get entity @s Pos[0] 10000
execute store result score p1 int run data get entity @s Pos[1] 10000
execute store result score p2 int run data get entity @s Pos[2] 10000

execute at @s positioned 0.0 0.0 0.0 run tp @e[tag=math_marker,limit=1] ^ ^ ^1.0
execute store result score v0 int run data get entity @e[tag=math_marker,limit=1] Pos[0] 1000
execute store result score v1 int run data get entity @e[tag=math_marker,limit=1] Pos[1] 1000
execute store result score v2 int run data get entity @e[tag=math_marker,limit=1] Pos[2] 1000
scoreboard players operation v0 int *= length int
scoreboard players operation v1 int *= length int
scoreboard players operation v2 int *= length int

execute store result entity @s Pos[0] double 0.0001 run scoreboard players operation p0 int += v0 int
execute store result entity @s Pos[1] double 0.0001 run scoreboard players operation p1 int += v1 int
execute store result entity @s Pos[2] double 0.0001 run scoreboard players operation p2 int += v2 int

function rigid:link/move