scoreboard players operation temp int = @s muid
execute as @e[tag=attacking] if score @s target = temp int run tag @s add tmp

execute at @s facing entity @e[tag=tmp,limit=1] feet run tp @s ~ ~ ~ ~ 0.0

scoreboard players operation @s target = @e[tag=tmp,limit=1] muid
execute unless entity @e[tag=tmp] run function play:mon/dattack1
tag @e remove tmp