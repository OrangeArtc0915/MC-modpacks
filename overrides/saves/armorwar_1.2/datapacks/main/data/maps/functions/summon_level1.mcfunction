data modify entity @e[tag=math_marker,limit=1] Pos set from block 0 0 0 Items[0].tag.map_levels[0].pos
execute if data block 0 0 0 Items[0].tag.map_levels[0].id at @e[tag=math_marker,limit=1] run summon item ~ ~ ~ {NoGravity:1b,Item:{id:"minecraft:glass",Count:1b,tag:{CustomModelData:2000}},Tags:["tmp8","map_button","map_set","map_level","aec"]}
data modify entity @e[tag=tmp8,limit=1] Item merge from block 0 0 0 Items[0].tag.map_levels[0]
data modify entity @e[tag=tmp8,limit=1] Item.tag.level set from block 0 0 0 Items[0].tag.map_levels[0]

execute at @e[tag=tmp8] run summon area_effect_cloud ^ ^0.3 ^-0.5 {Tags:["map_set","tmp9"],Duration:2147483647}
setblock 0 11 0 air
setblock 0 11 0 oak_sign{Text1:'{"interpret":"true","nbt":"Items[0].tag.map_levels[0].tag.display.Name","block":"0 0 0","font":"size:2x"}'}
data modify entity @e[tag=tmp9,limit=1] CustomNameVisible set value 1b
data modify entity @e[tag=tmp9,limit=1] CustomName set from block 0 11 0 Text1
tag @e remove tmp9

scoreboard players set @e[tag=tmp8,limit=1] d 80000
scoreboard players set @e[tag=tmp8,limit=1] h 80000
scoreboard players set @e[tag=tmp8,limit=1] l 80000
tag @e remove tmp8