summon item 0 0 0 {Item:{id:"minecraft:glass",Count:1b},Tags:["tmp"]}
scoreboard players operation @e[tag=tmp,limit=1] list_input = waves_page int

execute if score @s making matches 0 run data modify entity @e[tag=tmp,limit=1] Item.tag.input set from block 0 0 0 Items[0].tag.making[0].waves
execute if score @s making matches 1 run data modify entity @e[tag=tmp,limit=1] Item.tag.input set from block 0 0 0 Items[0].tag.making[1].waves
execute if score @s making matches 2 run data modify entity @e[tag=tmp,limit=1] Item.tag.input set from block 0 0 0 Items[0].tag.making[2].waves
execute if score @s making matches 3 run data modify entity @e[tag=tmp,limit=1] Item.tag.input set from block 0 0 0 Items[0].tag.making[3].waves
execute if score @s making matches 4 run data modify entity @e[tag=tmp,limit=1] Item.tag.input set from block 0 0 0 Items[0].tag.making[4].waves
execute if score @s making matches 5 run data modify entity @e[tag=tmp,limit=1] Item.tag.input set from block 0 0 0 Items[0].tag.making[5].waves
execute if score @s making matches 6 run data modify entity @e[tag=tmp,limit=1] Item.tag.input set from block 0 0 0 Items[0].tag.making[6].waves

execute as @e[tag=tmp,limit=1] run function list_tool:remove

execute if score @s making matches 0 run data modify block 0 0 0 Items[0].tag.making[0].waves set from entity @e[tag=tmp,limit=1] Item.tag.result
execute if score @s making matches 1 run data modify block 0 0 0 Items[0].tag.making[1].waves set from entity @e[tag=tmp,limit=1] Item.tag.result
execute if score @s making matches 2 run data modify block 0 0 0 Items[0].tag.making[2].waves set from entity @e[tag=tmp,limit=1] Item.tag.result
execute if score @s making matches 3 run data modify block 0 0 0 Items[0].tag.making[3].waves set from entity @e[tag=tmp,limit=1] Item.tag.result
execute if score @s making matches 4 run data modify block 0 0 0 Items[0].tag.making[4].waves set from entity @e[tag=tmp,limit=1] Item.tag.result
execute if score @s making matches 5 run data modify block 0 0 0 Items[0].tag.making[5].waves set from entity @e[tag=tmp,limit=1] Item.tag.result
execute if score @s making matches 6 run data modify block 0 0 0 Items[0].tag.making[6].waves set from entity @e[tag=tmp,limit=1] Item.tag.result

kill @e[tag=tmp]

function main:develop/gener/waves/page_down
function main:develop/gener/waves/page_up

execute if score @s making matches 0 unless data block 0 0 0 Items[0].tag.making[0].waves[0] run kill @e[tag=waves_show]
execute if score @s making matches 1 unless data block 0 0 0 Items[0].tag.making[1].waves[0] run kill @e[tag=waves_show]
execute if score @s making matches 2 unless data block 0 0 0 Items[0].tag.making[2].waves[0] run kill @e[tag=waves_show]
execute if score @s making matches 3 unless data block 0 0 0 Items[0].tag.making[3].waves[0] run kill @e[tag=waves_show]
execute if score @s making matches 4 unless data block 0 0 0 Items[0].tag.making[4].waves[0] run kill @e[tag=waves_show]
execute if score @s making matches 5 unless data block 0 0 0 Items[0].tag.making[5].waves[0] run kill @e[tag=waves_show]
execute if score @s making matches 6 unless data block 0 0 0 Items[0].tag.making[6].waves[0] run kill @e[tag=waves_show]