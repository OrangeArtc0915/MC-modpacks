execute if score @s making matches 0 run data modify block 0 0 0 Items[0].tag.map-selected set from block 0 0 0 Items[0].tag.making[0]
execute if score @s making matches 1 run data modify block 0 0 0 Items[0].tag.map-selected set from block 0 0 0 Items[0].tag.making[1]
execute if score @s making matches 2 run data modify block 0 0 0 Items[0].tag.map-selected set from block 0 0 0 Items[0].tag.making[2]
execute if score @s making matches 3 run data modify block 0 0 0 Items[0].tag.map-selected set from block 0 0 0 Items[0].tag.making[3]
execute if score @s making matches 4 run data modify block 0 0 0 Items[0].tag.map-selected set from block 0 0 0 Items[0].tag.making[4]
execute if score @s making matches 5 run data modify block 0 0 0 Items[0].tag.map-selected set from block 0 0 0 Items[0].tag.making[5]
execute if score @s making matches 6 run data modify block 0 0 0 Items[0].tag.map-selected set from block 0 0 0 Items[0].tag.making[6]
tag @s add waiting
execute at @s run kill @e[tag=map_point,distance=..500]
scoreboard players set developing int 0
scoreboard players set random_d int 1
function play:start