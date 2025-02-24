scoreboard players add @s CD 1
execute at @s run particle minecraft:end_rod ~ ~ ~ 0.08 0.08 0.08 0.5 5 force
execute if score @s CD matches 8.. run function play:skills/damage_return/deglow