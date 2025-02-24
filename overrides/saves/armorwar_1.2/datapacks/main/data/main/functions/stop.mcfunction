execute store result score @s stop1 run scoreboard players set @s stop 1
execute unless entity @s[tag=stopped] run function main:stop1
scoreboard players operation x int = @s x
scoreboard players operation y int = @s y
scoreboard players operation z int = @s z
execute as @e[tag=math_marker,limit=1] run function main:store_pos
execute at @e[tag=math_marker,limit=1] unless entity @s[distance=..2.1] run function play:hr/dattack
effect give @s minecraft:slowness 1 4 true