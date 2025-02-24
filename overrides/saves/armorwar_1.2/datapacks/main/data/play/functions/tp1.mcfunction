execute store result entity @s Pos[0] double 0.1 run scoreboard players get x int
execute store result entity @s Pos[1] double 0.1 run scoreboard players get y int
execute store result entity @s Pos[2] double 0.1 run scoreboard players get z int
execute at @s run tp @a[tag=tmp,limit=1] ~ ~ ~ ~ 36.0

execute at @s at @e[tag=map_point,limit=1,sort=furthest] run function math:3get-length
scoreboard players operation result int /= 100 int
scoreboard players operation result int *= 5 int
scoreboard players operation result int /= 3 int
execute store result score x_max int run scoreboard players operation x_min int = x int
execute store result score z_max int run scoreboard players operation z_min int = z int
scoreboard players operation x_max int += result int
scoreboard players operation x_min int -= result int
scoreboard players operation z_max int += result int
scoreboard players operation z_min int -= result int

execute store result score y_max int run scoreboard players operation y_min int = y int
scoreboard players add y_max int 1500
scoreboard players remove y_min int 50
scoreboard players operation y_min int > 0 int