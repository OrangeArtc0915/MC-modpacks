scoreboard players operation x int = @s x
scoreboard players operation y int = @s y
scoreboard players operation z int = @s z
execute as @e[tag=math_marker,limit=1] run function main:store_pos
execute at @e[tag=math_marker,limit=1] unless entity @s[distance=..150] run tp @s ~ ~ ~