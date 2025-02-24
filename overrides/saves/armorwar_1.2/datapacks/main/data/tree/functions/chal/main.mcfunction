scoreboard players operation temp int = @s int
scoreboard players add @s int 1
scoreboard players operation temp int %= 10 int
execute if score temp int matches 0 at @s run function tree:chal/trigger