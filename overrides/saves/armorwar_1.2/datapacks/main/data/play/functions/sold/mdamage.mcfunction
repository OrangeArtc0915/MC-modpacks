scoreboard players operation temp int = @s mdamage
scoreboard players operation temp int *= @s mp
scoreboard players operation temp int /= 100 int
execute store result score temp int run scoreboard players operation @s mdamage -= temp int
scoreboard players operation @s hp -= @s mdamage
scoreboard players reset @s mdamage
execute at @s run function play:sold/hurt