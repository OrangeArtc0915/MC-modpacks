scoreboard players operation temp int = @s pdamage
scoreboard players operation temp int *= @s dp
scoreboard players operation temp int /= 100 int
execute unless score @s true_damage matches 1 store result score temp int run scoreboard players operation @s pdamage -= temp int
execute if score @s true_damage matches 1 run scoreboard players set @s true_damage 0
scoreboard players operation @s hp -= @s pdamage
scoreboard players reset @s pdamage
execute at @s run function play:mon/hurt