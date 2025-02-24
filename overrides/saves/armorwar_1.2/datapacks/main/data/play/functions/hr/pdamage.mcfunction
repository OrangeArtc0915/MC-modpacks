scoreboard players operation temp int = @s pdamage
scoreboard players operation temp int *= @s dp
scoreboard players operation temp int /= 100 int
execute unless score @s true_damage matches 1 store result score temp int run scoreboard players operation @s pdamage -= temp int
execute if score @s true_damage matches 1 run scoreboard players set @s true_damage 0

tag @s add tmp
scoreboard players operation temp1 int = @s muid
execute as @e[tag=hr_shield] if score @s int = temp1 int run function play:hr/shield
execute if entity @e[tag=tmp1,limit=1] run scoreboard players operation @s pdamage /= 10 int
tag @s remove tmp
tag @e remove tmp1
scoreboard players operation @s hp *= 3 int
scoreboard players operation @s hp -= @s pdamage
scoreboard players operation @s hp /= 3 int
scoreboard players reset @s pdamage

execute at @s run function play:hr/hurt