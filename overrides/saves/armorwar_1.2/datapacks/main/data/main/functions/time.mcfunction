time set 0
execute store result score temp1 int run scoreboard players operation temp int = input int
scoreboard players operation temp int /= 100 int
scoreboard players operation temp1 int %= 100 int
execute if score temp int matches 1.. run function main:time_loop
execute if score temp1 int matches 1.. run function main:time_loop1