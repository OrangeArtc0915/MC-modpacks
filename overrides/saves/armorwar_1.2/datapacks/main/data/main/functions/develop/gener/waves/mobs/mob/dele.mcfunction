summon item 0 0 0 {Item:{id:"minecraft:glass",Count:1b},Tags:["tmp"]}

execute if score @s making matches 0 run data modify entity @e[tag=tmp,limit=1] Item.tag.input set from block 0 0 0 Items[0].tag.making[0].waves
execute if score @s making matches 1 run data modify entity @e[tag=tmp,limit=1] Item.tag.input set from block 0 0 0 Items[0].tag.making[1].waves
execute if score @s making matches 2 run data modify entity @e[tag=tmp,limit=1] Item.tag.input set from block 0 0 0 Items[0].tag.making[2].waves
execute if score @s making matches 3 run data modify entity @e[tag=tmp,limit=1] Item.tag.input set from block 0 0 0 Items[0].tag.making[3].waves
execute if score @s making matches 4 run data modify entity @e[tag=tmp,limit=1] Item.tag.input set from block 0 0 0 Items[0].tag.making[4].waves
execute if score @s making matches 5 run data modify entity @e[tag=tmp,limit=1] Item.tag.input set from block 0 0 0 Items[0].tag.making[5].waves
execute if score @s making matches 6 run data modify entity @e[tag=tmp,limit=1] Item.tag.input set from block 0 0 0 Items[0].tag.making[6].waves
scoreboard players operation @e[tag=tmp,limit=1] list_input = @s wave_editing
execute as @e[tag=tmp] run function list_tool:set
data modify entity @e[tag=tmp,limit=1] Item.tag.tmp set from entity @e[tag=tmp,limit=1] Item.tag.result
data modify entity @e[tag=tmp,limit=1] Item.tag.tmp1 set from entity @e[tag=tmp,limit=1] Item.tag.input

data modify entity @e[tag=tmp,limit=1] Item.tag.input set from entity @e[tag=tmp,limit=1] Item.tag.result.mob_types
scoreboard players operation @e[tag=tmp,limit=1] list_input = mob_editing int
execute as @e[tag=tmp] run function list_tool:remove
data modify entity @e[tag=tmp,limit=1] Item.tag.input set from entity @e[tag=tmp,limit=1] Item.tag.tmp
data modify entity @e[tag=tmp,limit=1] Item.tag.input.mob_types set from entity @e[tag=tmp,limit=1] Item.tag.result
data modify entity @e[tag=tmp,limit=1] Item.tag.result set from entity @e[tag=tmp,limit=1] Item.tag.tmp1
scoreboard players operation @e[tag=tmp,limit=1] list_input = @s wave_editing

execute as @e[tag=tmp] run function list_tool:change


execute if score @s making matches 0 run data modify block 0 0 0 Items[0].tag.making[0].waves set from entity @e[tag=tmp,limit=1] Item.tag.result
execute if score @s making matches 1 run data modify block 0 0 0 Items[0].tag.making[1].waves set from entity @e[tag=tmp,limit=1] Item.tag.result
execute if score @s making matches 2 run data modify block 0 0 0 Items[0].tag.making[2].waves set from entity @e[tag=tmp,limit=1] Item.tag.result
execute if score @s making matches 3 run data modify block 0 0 0 Items[0].tag.making[3].waves set from entity @e[tag=tmp,limit=1] Item.tag.result
execute if score @s making matches 4 run data modify block 0 0 0 Items[0].tag.making[4].waves set from entity @e[tag=tmp,limit=1] Item.tag.result
execute if score @s making matches 5 run data modify block 0 0 0 Items[0].tag.making[5].waves set from entity @e[tag=tmp,limit=1] Item.tag.result
execute if score @s making matches 6 run data modify block 0 0 0 Items[0].tag.making[6].waves set from entity @e[tag=tmp,limit=1] Item.tag.result

execute if data entity @e[tag=tmp,limit=1] Item.tag.result.mob_types[0] run function main:develop/gener/waves/mobs/upd

execute unless data entity @e[tag=tmp,limit=1] Item.tag.result.mob_types[0] as @e[tag=map_mob_show] run data modify entity @s CustomName set value '{"text":""}'

execute if score @s making matches 0 unless data entity @e[tag=tmp,limit=1] Item.tag.result.mob_types[0] run tp @e[tag=map_mob_display,scores={making=0}] 0 -1000 0
execute if score @s making matches 1 unless data entity @e[tag=tmp,limit=1] Item.tag.result.mob_types[0] run tp @e[tag=map_mob_display,scores={making=1}] 0 -1000 0
execute if score @s making matches 2 unless data entity @e[tag=tmp,limit=1] Item.tag.result.mob_types[0] run tp @e[tag=map_mob_display,scores={making=2}] 0 -1000 0
execute if score @s making matches 3 unless data entity @e[tag=tmp,limit=1] Item.tag.result.mob_types[0] run tp @e[tag=map_mob_display,scores={making=3}] 0 -1000 0
execute if score @s making matches 4 unless data entity @e[tag=tmp,limit=1] Item.tag.result.mob_types[0] run tp @e[tag=map_mob_display,scores={making=4}] 0 -1000 0
execute if score @s making matches 5 unless data entity @e[tag=tmp,limit=1] Item.tag.result.mob_types[0] run tp @e[tag=map_mob_display,scores={making=5}] 0 -1000 0
execute if score @s making matches 6 unless data entity @e[tag=tmp,limit=1] Item.tag.result.mob_types[0] run tp @e[tag=map_mob_display,scores={making=6}] 0 -1000 0

execute if score @s making matches 0 unless data entity @e[tag=tmp,limit=1] Item.tag.result.mob_types[0] run kill @e[tag=map_mob_display,scores={making=0}]
execute if score @s making matches 1 unless data entity @e[tag=tmp,limit=1] Item.tag.result.mob_types[0] run kill @e[tag=map_mob_display,scores={making=1}]
execute if score @s making matches 2 unless data entity @e[tag=tmp,limit=1] Item.tag.result.mob_types[0] run kill @e[tag=map_mob_display,scores={making=2}]
execute if score @s making matches 3 unless data entity @e[tag=tmp,limit=1] Item.tag.result.mob_types[0] run kill @e[tag=map_mob_display,scores={making=3}]
execute if score @s making matches 4 unless data entity @e[tag=tmp,limit=1] Item.tag.result.mob_types[0] run kill @e[tag=map_mob_display,scores={making=4}]
execute if score @s making matches 5 unless data entity @e[tag=tmp,limit=1] Item.tag.result.mob_types[0] run kill @e[tag=map_mob_display,scores={making=5}]
execute if score @s making matches 6 unless data entity @e[tag=tmp,limit=1] Item.tag.result.mob_types[0] run kill @e[tag=map_mob_display,scores={making=6}]

kill @e[tag=tmp]

function main:develop/gener/waves/mobs/page_down
function main:develop/gener/waves/mobs/page_up