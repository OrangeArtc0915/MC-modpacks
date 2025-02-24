tag @e[tag=soldier,limit=1,sort=nearest,tag=!dead] add tmp
execute if entity @e[tag=tmp] if entity @s[tag=arrow_shooter] run function play:mon/shoot_arrow
execute if entity @e[tag=tmp] if entity @s[tag=stone_shooter] run function play:mon/shoot_stone
tag @e remove tmp
scoreboard players set @s rat_timer 0

scoreboard players add @s int1 1
execute if score @s int1 matches 10.. run scoreboard players set success int 0
execute if score @s int1 matches 10.. run scoreboard players set @s ctimer 15
execute if score @s int1 matches 10.. run scoreboard players set @s int1 0