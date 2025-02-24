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

execute store result score temp int run data get entity @e[tag=tmp,limit=1] Item.tag.result.time
execute as @e[tag=map_mobs_time,limit=1,sort=nearest] run function main:develop/gener/waves/mobs/time1

data modify entity @e[tag=tmp,limit=1] Item.tag.input set from entity @e[tag=tmp,limit=1] Item.tag.result.mob_types

scoreboard players operation @e[tag=tmp,limit=1] list_input = mob_editing int

execute as @e[tag=tmp] run function list_tool:set

tp @e[tag=map_mob_display] 0 -1000 0
kill @e[tag=map_mob_display]

data modify block 0 0 0 Items[0].tag.ctmp set from entity @e[tag=tmp,limit=1] Item.tag.result.entity
data modify block 0 0 0 Items[0].tag.ctmp.id set from entity @e[tag=tmp,limit=1] Item.tag.result.id

tp @e[tag=tmp] 0 -1000 0
tag @e remove tmp

scoreboard players operation temp1 int = @s making

execute as @e[tag=map_mob_show] run function main:develop/gener/waves/mobs/upd1

tag @s remove map_mobs_upd