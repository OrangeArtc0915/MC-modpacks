scoreboard players set min int -2500
scoreboard players set max int 2500
function math:random
execute store result score temp int run data get entity @s Pos[0] 1000
execute store result entity @s Pos[0] double 0.001 run scoreboard players operation temp int += random int
function math:random
execute store result score temp int run data get entity @s Pos[2] 1000
execute store result entity @s Pos[2] double 0.001 run scoreboard players operation temp int += random int