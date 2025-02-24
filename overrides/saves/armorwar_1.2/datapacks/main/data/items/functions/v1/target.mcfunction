execute store result entity @e[tag=math_marker,limit=1] Rotation[0] float -0.0001 run scoreboard players get @s theta
execute as @e[tag=math_marker,limit=1] at @s rotated ~ 0.0 positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
execute store result score cos int run data get entity @e[tag=math_marker,limit=1] Pos[2] 10000
execute store result score sin int run data get entity @e[tag=math_marker,limit=1] Pos[0] 10000

scoreboard players operation tempx int = @s xi
scoreboard players operation tempx int *= sin int
scoreboard players operation tempy int = @s xj
scoreboard players operation tempy int *= sin int
scoreboard players operation tempz int = @s xk
scoreboard players operation tempz int *= sin int
scoreboard players operation tempx1 int = @s yi
scoreboard players operation tempx1 int *= cos int
scoreboard players operation tempy1 int = @s yj
scoreboard players operation tempy1 int *= cos int
scoreboard players operation tempz1 int = @s yk
scoreboard players operation tempz1 int *= cos int
tp @e[tag=math_marker,limit=1] 0.0 0.0 0.0
execute as @e[tag=math_marker,limit=1] store result entity @s Pos[0] double 0.00000001 run scoreboard players operation tempx int -= tempx1 int
execute as @e[tag=math_marker,limit=1] store result entity @s Pos[1] double 0.00000001 run scoreboard players operation tempy int -= tempy1 int
execute as @e[tag=math_marker,limit=1] store result entity @s Pos[2] double 0.00000001 run scoreboard players operation tempz int -= tempz1 int
execute as @e[tag=math_marker,limit=1] positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ^ ^ ^1.047
execute store result score @s vx run data get entity @e[tag=math_marker,limit=1] Pos[0] 10000
execute store result score @s vy run data get entity @e[tag=math_marker,limit=1] Pos[1] 10000
execute store result score @s vz run data get entity @e[tag=math_marker,limit=1] Pos[2] 10000


tag @s remove rotating
tag @s add targeted

execute at @e[tag=map_end,limit=1,sort=random] run tag @e[tag=monster,limit=1,sort=nearest] add stmp5

execute at @s store result score @s tx run data get entity @e[tag=stmp5,limit=1] Pos[0] 10000
execute at @s store result score @s ty run data get entity @e[tag=stmp5,limit=1] Pos[1] 10000
execute at @s store result score @s tz run data get entity @e[tag=stmp5,limit=1] Pos[2] 10000
scoreboard players operation @s target = @e[tag=stmp5,limit=1] muid

tag @e remove stmp5

data modify entity @s NoGravity set value 0b