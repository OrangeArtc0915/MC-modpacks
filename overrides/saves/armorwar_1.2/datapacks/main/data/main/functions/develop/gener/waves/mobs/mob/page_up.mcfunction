scoreboard players remove mob_selected int 1
execute store result score temp int run data get block 0 0 0 Items[0].tag.mobs
scoreboard players remove temp int 1
execute if score mob_selected int matches ..-1 run scoreboard players operation mob_selected int = temp int

summon item 0 0 0 {Item:{id:"minecraft:glass",Count:1b},Tags:["tmp"]}

data modify entity @e[tag=tmp,limit=1] Item.tag.input set from block 0 0 0 Items[0].tag.mobs
scoreboard players operation @e[tag=tmp,limit=1] list_input = mob_selected int
execute as @e[tag=tmp] run function list_tool:set
data modify entity @e[tag=tmp,limit=1] Item.tag.tmp2 set from entity @e[tag=tmp,limit=1] Item.tag.result.entity
data modify entity @e[tag=tmp,limit=1] Item.tag.tmp3 set from entity @e[tag=tmp,limit=1] Item.tag.result.id

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
data modify entity @e[tag=tmp,limit=1] Item.tag.result.spawn set from entity @e[tag=tmp,limit=1] Item.tag.result.entity.spawn
data modify entity @e[tag=tmp,limit=1] Item.tag.result.entity set from entity @e[tag=tmp,limit=1] Item.tag.tmp2
data modify entity @e[tag=tmp,limit=1] Item.tag.result.entity.spawn set from entity @e[tag=tmp,limit=1] Item.tag.result.spawn
data modify entity @e[tag=tmp,limit=1] Item.tag.result.id set from entity @e[tag=tmp,limit=1] Item.tag.tmp3

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

execute if data entity @e[tag=tmp,limit=1] Item.tag.tmp.mob_types[0] run function main:develop/gener/waves/mobs/upd

kill @e[tag=tmp]