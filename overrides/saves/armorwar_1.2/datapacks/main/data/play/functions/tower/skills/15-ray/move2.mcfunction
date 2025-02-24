scoreboard players operation temp int = v int
scoreboard players operation temp int *= v int
execute store result score w int run scoreboard players operation temp int /= 1000 int
scoreboard players operation w int /= 10 int
scoreboard players operation w int *= v int
scoreboard players operation w int /= 1000 int
scoreboard players operation w int *= a int
scoreboard players operation temp int *= b int
scoreboard players operation w int += temp int
scoreboard players operation w int /= 1000 int
scoreboard players operation w int += s int

scoreboard players operation temp int = v int
scoreboard players operation temp int *= 1000 int
execute store result score temp1 int run scoreboard players operation temp int /= t int
scoreboard players operation temp1 int *= 180 int
execute store result entity @s Rotation[0] float -0.001 run scoreboard players operation temp1 int *= k int
execute at @s positioned 0.0 0.0 0.0 rotated ~ 0.0 run tp @s ^ ^ ^1.0
execute store result score u int run data get entity @s Pos[0] -1000
scoreboard players operation temp int -= 1000 int
scoreboard players operation temp int *= A0 int
scoreboard players operation u int *= temp int
scoreboard players operation u int /= 100000 int
scoreboard players operation w int += u int

scoreboard players operation x int = p0 int
scoreboard players operation temp int = v0 int
scoreboard players operation temp int *= v int
scoreboard players operation temp int /= 1000 int
execute store result entity @s Pos[0] double 0.0001 run scoreboard players operation x int += temp int

scoreboard players operation y int = p1 int
execute store result entity @s Pos[1] double 0.0001 run scoreboard players operation y int += w int

scoreboard players operation z int = p2 int
scoreboard players operation temp int = v2 int
scoreboard players operation temp int *= v int
scoreboard players operation temp int /= 1000 int
execute store result entity @s Pos[2] double 0.0001 run scoreboard players operation z int += temp int

execute at @s run particle dust 0.580 0.0 0.827 1.5 ~ ~ ~ 0 0 0 0 1 force

scoreboard players add v int 150
execute if score v int < t int run function play:tower/skills/15-ray/move2