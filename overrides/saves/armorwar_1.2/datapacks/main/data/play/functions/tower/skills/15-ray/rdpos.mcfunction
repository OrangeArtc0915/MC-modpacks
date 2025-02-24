function math:random
execute store result entity @s Pos[0] double 0.0001 run scoreboard players operation @s x += random int
function math:random
execute store result entity @s Pos[1] double 0.0001 run scoreboard players operation @s y += random int
function math:random
execute store result entity @s Pos[2] double 0.0001 run scoreboard players operation @s z += random int
execute at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0.05 0.05 0.05 0.08 15 force @a