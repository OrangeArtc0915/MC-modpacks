scoreboard players remove entity_type int 1
execute store result score temp int run data get block 0 0 0 Items[0].tag.mob_types
execute if score entity_type int matches ..-1 run scoreboard players operation entity_type int = temp int

summon item ~ ~ ~ {Item:{id:"minecraft:glass",Count:1b},Tags:["tmp"]}
data modify entity @e[tag=tmp,limit=1] Item.tag.input set from block 0 0 0 Items[0].tag.mob_types
scoreboard players operation @e[tag=tmp,limit=1] list_input = entity_type int
execute as @e[tag=tmp] run function list_tool:set
data modify entity @e[tag=tmp,limit=1] Item.tag.tmp set from entity @e[tag=tmp,limit=1] Item.tag.result


scoreboard players operation @e[tag=tmp,limit=1] list_input = mobs_page int
data modify entity @e[tag=tmp,limit=1] Item.tag.input set from block 0 0 0 Items[0].tag.mobs
execute as @e[tag=tmp] run function list_tool:set
data modify entity @e[tag=tmp,limit=1] Item.tag.input set from entity @e[tag=tmp,limit=1] Item.tag.result
data modify entity @e[tag=tmp,limit=1] Item.tag.input.entity.type set from entity @e[tag=tmp,limit=1] Item.tag.tmp
data modify entity @e[tag=tmp,limit=1] Item.tag.result set from block 0 0 0 Items[0].tag.mobs
execute as @e[tag=tmp] run function list_tool:change

data modify block 0 0 0 Items[0].tag.mobs set from entity @e[tag=tmp,limit=1] Item.tag.result


kill @e[tag=tmp]

function main:develop/mobs/upd