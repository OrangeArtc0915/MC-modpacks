
data modify entity @e[tag=math_marker,limit=1] Rotation[0] set from entity @s Pose.Head[1]
execute as @e[tag=math_marker] store result entity @s Rotation[0] float -0.0001 run data get entity @s Rotation[0] 10000
execute as @e[tag=math_marker] at @s positioned 0.0 0.0 0.0 rotated ~ 0.0 run tp @s ^ ^ ^1
execute store result score cos0 int run data get entity @e[tag=math_marker,limit=1] Pos[2] 10000
execute store result score sin0 int run data get entity @e[tag=math_marker,limit=1] Pos[0] 10000

data modify entity @e[tag=math_marker,limit=1] Rotation[0] set from entity @s Pose.Head[2]
execute as @e[tag=math_marker] store result entity @s Rotation[0] float -0.0001 run data get entity @s Rotation[0] 10000
execute as @e[tag=math_marker] at @s positioned 0.0 0.0 0.0 rotated ~ 0.0 run tp @s ^ ^ ^1
execute store result score -cos1 int run data get entity @e[tag=math_marker,limit=1] Pos[2] -10000
execute store result score -sin1 int run data get entity @e[tag=math_marker,limit=1] Pos[0] -10000

scoreboard players operation u int = cos0 int
scoreboard players operation u int *= -cos1 int
scoreboard players operation u int /= 2000 int

scoreboard players operation v int = sin0 int
scoreboard players operation v int *= 5 int

scoreboard players operation w int = cos0 int
scoreboard players operation w int *= -sin1 int
scoreboard players operation w int /= 2000 int

scoreboard players operation u cn = u int
scoreboard players operation u cn *= -1 int
scoreboard players operation v cn = w int
scoreboard players operation w cn = v int
execute at @s positioned 0.0 0.0 0.0 rotated ~ 0.0 run function math:cn/local-f

scoreboard players operation x int = x cn
scoreboard players operation y int = y cn
scoreboard players operation z int = z cn

function math:eyepos

execute at @e[tag=result] run function math:vector

kill @e[tag=result]