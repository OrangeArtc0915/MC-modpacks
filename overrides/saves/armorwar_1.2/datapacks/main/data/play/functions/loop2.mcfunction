summon area_effect_cloud 0 0 0 {Tags:["tmpu","mpoint","map_point","map_end","map_endeded"],Duration:2147483647}
data modify entity @e[tag=tmpu,limit=1] Pos set from entity @s Item.tag.endp[0]
execute store result score @e[tag=tmpu,limit=1] int run scoreboard players remove end int 1
tag @e remove tmpu

data remove entity @s Item.tag.endp[0]
execute if data entity @s Item.tag.endp[0] run function play:loop2