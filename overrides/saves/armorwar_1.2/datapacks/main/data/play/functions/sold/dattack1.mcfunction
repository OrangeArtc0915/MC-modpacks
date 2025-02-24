scoreboard players set temp int 0
execute at @s if entity @e[tag=monster,tag=!fly_mob,distance=..5.5] run scoreboard players set temp int 1
execute at @e[tag=tmp33,limit=1] if entity @e[tag=monster,tag=!fly_mob,scores={target=0},distance=..8.5] run scoreboard players set temp int 2

execute if score temp int matches 1 at @s run function play:sold/target
execute if score temp int matches 2 at @e[tag=tmp33,limit=1] run function play:sold/target1
execute if score temp int matches 0 at @s run function play:sold/dattack2