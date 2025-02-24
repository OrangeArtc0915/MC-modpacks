scoreboard players remove @s theta 30000
execute store result entity @e[tag=math_marker,limit=1] Rotation[0] float -0.0001 run scoreboard players get @s theta
execute as @e[tag=math_marker,limit=1] at @s rotated ~ 0.0 positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
execute store result score cos int run data get entity @e[tag=math_marker,limit=1] Pos[2] 10000
execute store result score sin int run data get entity @e[tag=math_marker,limit=1] Pos[0] 10000
scoreboard players operation tempx int = @s xi
scoreboard players operation tempx int *= cos int
scoreboard players operation tempy int = @s xj
scoreboard players operation tempy int *= cos int
scoreboard players operation tempz int = @s xk
scoreboard players operation tempz int *= cos int
scoreboard players operation tempx int /= 500 int
scoreboard players operation tempy int /= 500 int
scoreboard players operation tempz int /= 500 int
scoreboard players operation tempx1 int = @s yi
scoreboard players operation tempx1 int *= sin int
scoreboard players operation tempy1 int = @s yj
scoreboard players operation tempy1 int *= sin int
scoreboard players operation tempz1 int = @s yk
scoreboard players operation tempz1 int *= sin int
scoreboard players operation tempx1 int /= 500 int
scoreboard players operation tempy1 int /= 500 int
scoreboard players operation tempz1 int /= 500 int
scoreboard players operation tempx int += tempx1 int
execute store result entity @s Pos[0] double 0.0001 run scoreboard players operation tempx int += @s x0
scoreboard players operation tempy int += tempy1 int
execute store result entity @s Pos[1] double 0.0001 run scoreboard players operation tempy int += @s y0
scoreboard players operation tempz int += tempz1 int
execute store result entity @s Pos[2] double 0.0001 run scoreboard players operation tempz int += @s z0

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
execute as @e[tag=math_marker,limit=1] positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ~ ~ ~ ~ ~
execute at @s rotated as @e[tag=math_marker,limit=1] positioned ~ ~1.2 ~ run particle end_rod ^ ^ ^-5.0 0.1 0.1 0.1 0.1 5 force
execute rotated as @e[tag=math_marker,limit=1] run function rigid:face