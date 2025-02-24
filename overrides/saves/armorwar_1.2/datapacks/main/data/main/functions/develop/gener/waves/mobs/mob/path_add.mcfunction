playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 2

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
execute as @e[tag=tmp] run function list_tool:set
execute unless data entity @e[tag=tmp,limit=1] Item.tag.result.entity.spawn.poses run data modify entity @e[tag=tmp,limit=1] Item.tag.result.entity.spawn.poses set value []
data modify entity @e[tag=tmp,limit=1] Item.tag.result.entity.spawn.poses append from entity @s SelectedItem.tag.spawn.pos
data modify entity @e[tag=tmp,limit=1] Item.tag.result.entity.spawn.paths append from entity @s SelectedItem.tag.spawn.paths

data modify entity @e[tag=tmp,limit=1] Item.tag.input set from entity @e[tag=tmp,limit=1] Item.tag.result
data modify entity @e[tag=tmp,limit=1] Item.tag.result set from entity @e[tag=tmp,limit=1] Item.tag.tmp.mob_types
execute as @e[tag=tmp] run function list_tool:change
data modify entity @e[tag=tmp,limit=1] Item.tag.tmp.mob_types set from entity @e[tag=tmp,limit=1] Item.tag.result


data modify entity @e[tag=tmp,limit=1] Item.tag.input set from entity @e[tag=tmp,limit=1] Item.tag.tmp
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

kill @e[tag=tmp]

execute at @s run summon item ~ ~2 ~ {Item:{id:"minecraft:glass",Count:1b},Tags:["tmp"]}
data modify entity @e[tag=tmp,limit=1] Item set from entity @s SelectedItem
replaceitem entity @s weapon.mainhand air
tag @e remove tmp