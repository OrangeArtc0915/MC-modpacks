scoreboard players set @s blood_count 0
execute if score @s CD0 matches 1.. run scoreboard players add @s timer0 1
execute if score @s timer0 >= @s CD0 run function play:mon/skills/main