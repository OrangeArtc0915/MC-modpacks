scoreboard players set @e[tag=map_tower] result 0
scoreboard players operation temp int = @s target
execute as @e[tag=map_tower] if score @s int = temp int run scoreboard players set @s result 1
execute if score @s input matches 1 run function play:tower/build1
execute if score @s input matches 2 run function play:tower/build2
execute if score @s input matches 3 run function play:tower/build3
execute if score @s input matches 4 run function play:tower/build4
execute if score @s input matches 5 run function play:tower/build5
execute if score @s input matches 6 run function play:tower/build6
execute if score @s input matches 7 run function play:tower/build7
execute if score @s input matches 8 run function play:tower/build8
execute if score @s input matches 9 run function play:tower/build9
execute if score @s input matches 10 run function play:tower/build10
execute if score @s input matches 11 run function play:tower/build11
execute if score @s input matches 12 run function play:tower/build12
execute if score @s input matches 13 run function play:tower/build13
execute if score @s input matches 14 run function play:tower/build14
execute if score @s input matches 15 run function play:tower/build15
execute if score @s input matches 16 run function play:tower/build16