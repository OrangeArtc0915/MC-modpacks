execute as @e[tag=tmp] at @s run function tree:grow/up
scoreboard players remove @s dy 1
execute if score @s dy matches 1.. run function tree:grow/up_loop