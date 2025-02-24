scoreboard players set @s tutor -1
execute if score temp7 int matches 1 run kill @e[tag=wave_spawning]
execute if score temp7 int matches 0 run scoreboard players set @s tutor0 -1
execute if score temp7 int matches 1 run scoreboard players set @s tutor1 -1
execute if score temp7 int matches 2 run scoreboard players set @s tutor2 -1
execute if score temp7 int matches 3 run scoreboard players set @s tutor3 -1
execute if score temp7 int matches 4 run scoreboard players set @s tutor4 -1
execute if score temp7 int matches 5 run scoreboard players set @s tutor5 -1
execute if score temp7 int matches 6 run scoreboard players set @s tutor6 -1
execute if score temp7 int matches 7 run scoreboard players set @s tutor7 -1
execute if score temp7 int matches 8 run scoreboard players set @s tutor8 -1