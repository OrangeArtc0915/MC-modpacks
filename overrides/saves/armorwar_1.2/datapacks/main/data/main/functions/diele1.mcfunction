#main:diele1

#保证能量传递值不为0
scoreboard players add temp2 int 1
scoreboard players operation temp1 int = temp int
scoreboard players operation temp1 int /= temp2 int
execute if score temp1 int matches 1.. run tag @s add tmp
execute if score temp1 int matches ..0 run scoreboard players remove temp2 int 1