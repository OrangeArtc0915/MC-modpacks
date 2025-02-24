scoreboard players add @s block_change 1
execute if score @s block_change matches 1 run function main:block_change/init
execute if score @s block_change = @s int2 run function main:block_change/end
execute if score @s block_change = @s int run function main:block_change/end1