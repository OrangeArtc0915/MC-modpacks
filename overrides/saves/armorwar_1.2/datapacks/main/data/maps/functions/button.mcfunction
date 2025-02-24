function math:if-raycast
tag @s add tmp
execute if entity @e[tag=map_button,scores={result=1},tag=!tmp] run scoreboard players set @s result 0
tag @s remove tmp
execute if score @s result matches 1 run function maps:triggered
execute if score @s result matches 0 run data modify entity @s Glowing set value 0b