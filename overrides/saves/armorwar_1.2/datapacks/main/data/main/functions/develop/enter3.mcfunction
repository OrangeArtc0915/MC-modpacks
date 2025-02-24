tag @s remove inhall
clear @s
time set day
tp @s 999 51 999 0.0 0.0
execute if score developing int matches 0 run function main:develop/load
gamemode creative @s
tag @s add developing
scoreboard players reset @s drop_barrier