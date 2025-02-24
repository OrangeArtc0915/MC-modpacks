summon item ~ ~ ~ {Item:{id:"minecraft:glass",Count:1b,tag:{input:[],result:{}}},Tags:["tmp1"]}

tp @e[tag=on_display] 0 -1000 0
kill @e[tag=on_display]
data modify entity @e[tag=tmp1,limit=1] Item.tag.input set from block 0 0 0 Items[0].tag.mobs
scoreboard players operation @e[tag=tmp1,limit=1] list_input = mobs_page int
execute as @e[tag=tmp1,limit=1] run function list_tool:set
data modify block 0 0 0 Items[0].tag.ctmp set from entity @e[tag=tmp1,limit=1] Item.tag.result.entity
data modify block 0 0 0 Items[0].tag.ctmp.spawn.name set from entity @e[tag=tmp1,limit=1] Item.tag.result.id
data modify block 0 0 0 Items[0].tag.ctmp.spawn.pos set value [1109.5d,115.0d,731.5d]
execute if data block 0 0 0 Items[0].tag.mobs[0] run function mobs:spawn
tag @e[tag=result] add on_display

kill @e[tag=tmp1]