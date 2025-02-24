execute if score temp int matches 0 run data modify entity @s Pos set from block 0 0 0 Items[0].tag.making[0].tag.map_pos
execute if score temp int matches 1 run data modify entity @s Pos set from block 0 0 0 Items[0].tag.making[1].tag.map_pos
execute if score temp int matches 2 run data modify entity @s Pos set from block 0 0 0 Items[0].tag.making[2].tag.map_pos
execute if score temp int matches 3 run data modify entity @s Pos set from block 0 0 0 Items[0].tag.making[3].tag.map_pos
execute if score temp int matches 4 run data modify entity @s Pos set from block 0 0 0 Items[0].tag.making[4].tag.map_pos
execute if score temp int matches 5 run data modify entity @s Pos set from block 0 0 0 Items[0].tag.making[5].tag.map_pos
execute if score temp int matches 6 run data modify entity @s Pos set from block 0 0 0 Items[0].tag.making[6].tag.map_pos
execute if score temp int matches 0 run data modify entity @s Rotation set from block 0 0 0 Items[0].tag.making[0].rotation
execute if score temp int matches 1 run data modify entity @s Rotation set from block 0 0 0 Items[0].tag.making[1].rotation
execute if score temp int matches 2 run data modify entity @s Rotation set from block 0 0 0 Items[0].tag.making[2].rotation
execute if score temp int matches 3 run data modify entity @s Rotation set from block 0 0 0 Items[0].tag.making[3].rotation
execute if score temp int matches 4 run data modify entity @s Rotation set from block 0 0 0 Items[0].tag.making[4].rotation
execute if score temp int matches 5 run data modify entity @s Rotation set from block 0 0 0 Items[0].tag.making[5].rotation
execute if score temp int matches 6 run data modify entity @s Rotation set from block 0 0 0 Items[0].tag.making[6].rotation
execute at @s run forceload add ~ ~ ~ ~
execute at @s if block ~ ~-1 ~ air run setblock ~ ~-1 ~ barrier
execute at @s run tp @a[tag=tmp] ~ ~ ~ ~ ~
execute at @s run forceload remove ~ ~ ~ ~