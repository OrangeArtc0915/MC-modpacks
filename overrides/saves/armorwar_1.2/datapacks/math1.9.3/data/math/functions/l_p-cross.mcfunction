tp @e[tag=math_marker,limit=1] ~ ~ ~
execute store result score x0 int run data get entity @e[tag=math_marker,limit=1] Pos[0] 10000
execute store result score y0 int run data get entity @e[tag=math_marker,limit=1] Pos[1] 10000
execute store result score z0 int run data get entity @e[tag=math_marker,limit=1] Pos[2] 10000
execute positioned 0.0 0.0 0.0 run tp @e[tag=math_marker,limit=1] ^ ^ ^1.0
execute store result score i int run data get entity @e[tag=math_marker,limit=1] Pos[0] 10000
execute store result score j int run data get entity @e[tag=math_marker,limit=1] Pos[1] 10000
execute store result score k int run data get entity @e[tag=math_marker,limit=1] Pos[2] 10000

scoreboard players operation temp int = y int
execute store result score temp1 int run scoreboard players operation temp int -= y0 int
scoreboard players operation temp int /= j int
scoreboard players operation temp1 int %= j int
scoreboard players operation temp int *= 10000 int
scoreboard players operation temp1 int *= 10000 int
scoreboard players operation temp1 int /= j int
scoreboard players operation temp1 int /= 10000 int
scoreboard players operation temp int += temp1 int

execute store result score z1 int store result score z int store result score x1 int run scoreboard players operation x int = temp int

scoreboard players operation x int /= 10000 int
scoreboard players operation x1 int %= 10000 int
scoreboard players operation x int *= i int
scoreboard players operation x1 int *= i int
scoreboard players operation x1 int /= 10000 int
scoreboard players operation x int += x1 int
scoreboard players operation x int += x0 int

scoreboard players operation z int /= 10000 int
scoreboard players operation z1 int %= 10000 int
scoreboard players operation z int *= k int
scoreboard players operation z1 int *= k int
scoreboard players operation z1 int /= 10000 int
scoreboard players operation z int += z1 int
scoreboard players operation z int += z0 int

execute as @e[tag=math_marker,limit=1] run function math:loop72