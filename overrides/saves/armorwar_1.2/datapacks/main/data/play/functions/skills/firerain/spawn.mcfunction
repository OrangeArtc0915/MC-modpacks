scoreboard players add @s int 1
execute if score @s int matches 1..2 run scoreboard players operation @e[tag=monster,distance=..9,tag=!boss] dp /= 2 int
execute if score @s int1 matches 0 run scoreboard players add @e[tag=monster,distance=..9] pdamage 90
execute if score @s int1 matches 0 run scoreboard players add @e[tag=monster,distance=..9] mdamage 90
execute if score @s int matches 1..3 run function play:skills/firerain/fireball
execute if score @s int matches 3..10 if score @s int1 matches 0 run function play:skills/firerain/floor
execute if score @s int matches 7..9 run function play:skills/firerain/fireball
execute unless score @s int1 matches 0 if score @s int matches 10 run scoreboard players operation @e[tag=monster,distance=..9,tag=!boss] hp *= 8 int
execute unless score @s int1 matches 0 if score @s int matches 10 run scoreboard players operation @e[tag=monster,distance=..9,tag=!boss] hp /= 9 int
execute if score @s int matches 10.. store result score @s int1 run scoreboard players set @s int 0