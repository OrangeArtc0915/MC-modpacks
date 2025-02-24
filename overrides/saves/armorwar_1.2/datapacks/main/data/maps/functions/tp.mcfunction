data modify entity @s Pos set from block 0 0 0 Items[0].tag.map-selected.tag.map_pos
execute at @s run tp @s ~ ~20.0 ~
execute at @s run tp @a[tag=waiting] ~ ~ ~
execute at @s run kill @e[tag=map_point,distance=..500]