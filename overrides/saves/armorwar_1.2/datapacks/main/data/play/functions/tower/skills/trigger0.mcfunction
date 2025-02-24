scoreboard players set @s timer0 0

execute if score @s build matches 1 if entity @e[tag=monster,distance=..24.5] run function play:tower/skills/1-attack
execute if score @s build matches 2 if entity @e[tag=monster,tag=!fly_mob,distance=..23.0] run function play:tower/skills/2-attack
execute if score @s build matches 3 if entity @e[tag=monster,distance=..19.0] run function play:tower/skills/3-attack
execute if score @s build matches 4 run function play:tower/skills/4-test
execute if score @s build matches 5 if entity @e[tag=monster,distance=..25.0] run function play:tower/skills/5-attack
execute if score @s build matches 6 if entity @e[tag=monster,tag=!fly_mob,distance=..24.0] run function play:tower/skills/6-attack
execute if score @s build matches 7 if entity @e[tag=monster,distance=..19.5] run function play:tower/skills/7-attack
execute if score @s build matches 8 run function play:tower/skills/8-test
execute if score @s build matches 9 if entity @e[tag=monster,distance=..25.2] run function play:tower/skills/9-attack0
execute if score @s build matches 10 if entity @e[tag=monster,tag=!fly_mob,distance=..24.5] run function play:tower/skills/10-attack
execute if score @s build matches 11 if entity @e[tag=monster,distance=..19.5] run function play:tower/skills/11-attack
execute if score @s build matches 12 run function play:tower/skills/12-test
execute if score @s build matches 13 if entity @e[tag=monster,distance=..26.0] run function play:tower/skills/13-attack0
execute if score @s build matches 14 if entity @e[tag=monster,tag=!fly_mob,distance=..24.8] run function play:tower/skills/14-attack
execute if score @s build matches 15 if entity @e[tag=monster,distance=..20.0] at @s run function play:tower/skills/15-attack
execute if score @s build matches 16 run function play:tower/skills/16-test

scoreboard players set min int 1
scoreboard players set max int 10
function math:random
execute if score random int matches 1 run scoreboard players set @s timer0 1