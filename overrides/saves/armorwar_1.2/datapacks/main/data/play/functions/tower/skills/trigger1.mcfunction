scoreboard players set @s timer1 0


execute if score @s build matches 9 if entity @e[tag=monster,distance=..25.2] run function play:tower/skills/9-attack1
execute if score @s build matches 13 if entity @e[tag=monster,distance=..26.0] run function play:tower/skills/13-attack1
execute if score @s build matches 14 if score @s skill_0 matches 1.. run function play:tower/skills/14-missile/summon_test


scoreboard players set min int 1
scoreboard players set max int 10
function math:random
execute if score random int matches 1 run scoreboard players set @s timer1 1