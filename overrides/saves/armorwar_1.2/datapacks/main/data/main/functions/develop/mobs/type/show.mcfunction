summon item 0.0 0.0 0.0 {Item:{id:"minecraft:glass",Count:1b},Tags:["tmp"]}
data modify entity @e[tag=tmp,limit=1] Item.tag.input set from block 0 0 0 Items[0].tag.mob_types
scoreboard players operation @e[tag=tmp,limit=1] list_input = entity_type int
execute as @e[tag=tmp] run function list_tool:set


setblock 0 10 0 air
setblock 0 10 0 oak_sign{Text1:'{"nbt":"Item.tag.result","entity":"@e[tag=tmp,limit=1]"}'}
execute as @e[tag=type_show,limit=1] run data modify entity @s CustomName set from block 0 10 0 Text1


kill @e[tag=tmp]