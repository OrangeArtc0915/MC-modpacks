execute if score @s build matches 13 if entity @e[tag=monster,distance=..22.0,tag=!fly_mob] run function play:tower/skills/13-trap/summon
execute if score @s build matches 15 if entity @e[tag=monster,distance=..20.0,tag=!fly_mob,tag=!boss] run function play:tower/skills/15-tp/trigger
execute if score @s build matches 14 run function play:tower/skills/14-blast/tag

scoreboard players set min int 1
scoreboard players set max int 10
function math:random
execute if score random int matches 1 run scoreboard players add @s timer4 3