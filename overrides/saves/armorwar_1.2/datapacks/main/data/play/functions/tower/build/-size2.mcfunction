scoreboard players operation @s clone2 = @s from2
execute store result entity @s Pos[2] double 1 run scoreboard players get @s to2

scoreboard players add @s y 1
scoreboard players add @s clone1 1
execute at @s run tp @s ~ ~1 ~
execute if score @s y > @s size1 run function play:tower/build/-size1

scoreboard players set @s z 0