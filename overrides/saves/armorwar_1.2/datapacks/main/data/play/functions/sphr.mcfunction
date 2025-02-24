execute if score @s select matches 1 run function play:spectate
execute if score enable_hero int matches 1 if score @s select matches 2 run function play:hr/be
execute unless score enable_hero int matches 1 if score @s select matches 2 run function play:spectate
execute if score @s select matches 3 run function play:spectate