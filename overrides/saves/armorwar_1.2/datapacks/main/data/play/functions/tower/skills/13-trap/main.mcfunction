scoreboard players add @s int 1
execute if score @s int matches ..15 run function play:tower/skills/13-trap/spawn
execute at @s positioned ~0.5 ~ ~0.5 run scoreboard players set @e[tag=monster,distance=..6.5] unmove 5