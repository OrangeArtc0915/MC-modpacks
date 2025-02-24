function music:clear
tag @s add tmp
execute unless entity @a[tag=!tmp] run data modify storage minecraft:bp item set from block 0 0 0 Items[0]
execute unless entity @a[tag=!tmp] run data modify storage minecraft:bp chest set from block -23 60 75 Items
tag @s remove tmp
tp @s 0 5 0
scoreboard players reset @s lg
execute if score gaming int matches 1 run function play:spectate