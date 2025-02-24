scoreboard players operation @s clone0 = @s from0
execute store result entity @s Pos[0] double 1 run scoreboard players get @s to0

scoreboard players add @s z 1
scoreboard players remove @s clone2 1
execute at @s run tp @s ~ ~ ~-1
execute if score @s z > @s size2 run function play:tower/build/-size2

scoreboard players set @s x 0