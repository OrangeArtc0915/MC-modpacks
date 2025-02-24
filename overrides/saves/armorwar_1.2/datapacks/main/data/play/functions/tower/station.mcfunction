scoreboard players set temp1 int 0
execute at @s[x_rotation=2..] run function play:tower/station1
execute if score temp1 int matches 0 run scoreboard players set @s tower_gui 0
execute if score temp1 int matches 0 run function play:tower/select2
execute if score temp1 int matches 1 run scoreboard players set temp int 1
scoreboard players set temp1 int 0
execute at @s[x_rotation=2..] run function play:tower/station1
execute if score temp1 int matches 0 run scoreboard players set @s tower_gui 0
execute if score temp1 int matches 0 run function play:tower/select2
execute if score temp1 int matches 1 run scoreboard players set temp int 1