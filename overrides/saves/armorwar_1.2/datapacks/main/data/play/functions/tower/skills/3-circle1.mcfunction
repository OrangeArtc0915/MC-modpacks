execute store result score input int run scoreboard players add @s t 10
execute store result entity @e[tag=math_marker,limit=1] Rotation[0] float -1 run scoreboard players operation input int += @s phi
execute store result entity @s Rotation[0] float 0.0001 run scoreboard players operation input int *= 10000 int
execute as @e[tag=math_marker] at @s positioned 0.0 0.0 0.0 rotated ~ 0.0 run tp @s ^ ^ ^1.0
execute store result score cos int run data get entity @e[tag=math_marker,limit=1] Pos[2] 10000
execute store result score sin int run data get entity @e[tag=math_marker,limit=1] Pos[0] 10000


scoreboard players operation cos int *= 5 int
scoreboard players operation cos int /= 100 int
scoreboard players operation temp int = @s x0
execute store result entity @s Pos[0] double 0.01 run scoreboard players operation temp int += cos int

scoreboard players operation sin int *= 5 int
scoreboard players operation sin int /= 100 int
scoreboard players operation temp int = @s z0
execute store result entity @s Pos[2] double 0.01 run scoreboard players operation temp int += sin int