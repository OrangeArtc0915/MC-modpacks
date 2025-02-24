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
execute store result entity @e[tag=tmp,limit=1] Item.tag.result.time int 1 run scoreboard players get @s input

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

scoreboard players operation temp int = @s input

execute as @e[tag=map_mob_time,limit=1,sort=nearest] run function main:develop/gener/waves/mobs/mob/time1

scoreboard players reset @s input