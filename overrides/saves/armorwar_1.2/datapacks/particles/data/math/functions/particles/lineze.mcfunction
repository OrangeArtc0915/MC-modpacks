function math:3get-length
scoreboard players operation result int /= 100 int
scoreboard players operation @s mpar_l = result int
execute store result score @s mpar_v run data get entity @s Age

tp @e[tag=math_marker,limit=1] ~ ~ ~
execute at @s facing entity @e[tag=math_marker,limit=1] eyes run tp @s ~ ~ ~ ~ ~

tag @s remove lineze
tag @s add linese