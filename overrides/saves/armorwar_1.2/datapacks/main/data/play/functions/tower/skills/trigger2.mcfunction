scoreboard players set @s timer2 0


execute if score @s build matches 13 if entity @e[tag=monster,distance=..26.0] run function play:tower/skills/13-attack2

scoreboard players set min int 1
scoreboard players set max int 10
function math:random
execute if score random int matches 1 run scoreboard players set @s timer2 1