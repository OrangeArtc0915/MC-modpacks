scoreboard players remove @s schedulerTime 1
execute if score @s schedulerTime matches 0 unless score occupied schedulerVar matches 0 run scoreboard players add @s schedulerTime 1
execute if score @s schedulerTime matches 0 if score occupied schedulerVar matches 0 run function scheduler:execute
