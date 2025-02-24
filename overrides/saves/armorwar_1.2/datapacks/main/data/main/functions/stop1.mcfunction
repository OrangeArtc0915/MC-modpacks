tag @s add stopped
function main:pos
execute if score gaming int matches 1 run scoreboard players operation @s y = soldier_y int
execute if score gaming int matches 1 run scoreboard players operation @s y *= 1000 int