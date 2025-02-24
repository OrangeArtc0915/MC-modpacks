scoreboard players operation @s rotation_0 += theta int
execute store result score temp int run data get entity @s Rotation[0] 10000
execute store result entity @s Rotation[0] float 0.0001 run scoreboard players operation temp int += theta int

function rigid:link/move