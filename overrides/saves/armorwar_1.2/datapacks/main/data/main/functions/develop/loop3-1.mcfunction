execute at @s run data modify entity @s Pos set from entity @e[tag=tmp,limit=1] Item.tag.spointp[0]
execute at @s run forceload add ~ ~
execute at @s run kill @e[tag=map_point,distance=..0.5,tag=!tmp1]
execute at @s run forceload remove ~ ~
tag @s remove tmp1