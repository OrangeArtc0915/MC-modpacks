scoreboard players operation temp int = @s pdamage
scoreboard players operation temp int *= @s dp
scoreboard players operation temp int /= 100 int
execute store result score temp int run scoreboard players operation @s pdamage -= temp int
scoreboard players operation @s hp -= @s pdamage
scoreboard players reset @s pdamage
execute at @s run function play:sold/hurt