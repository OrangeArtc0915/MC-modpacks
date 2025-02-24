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


execute store result score temp int run data get entity @e[tag=tmp,limit=1] Item.tag.result.max
execute as @e[tag=map_mob_max,limit=1,sort=nearest] run function main:develop/gener/waves/mobs/mob/max1

execute store result score temp int run data get entity @e[tag=tmp,limit=1] Item.tag.result.min
execute as @e[tag=map_mob_min,limit=1,sort=nearest] run function main:develop/gener/waves/mobs/mob/min1

execute store result score temp int run data get entity @e[tag=tmp,limit=1] Item.tag.result.time
execute as @e[tag=map_mob_time,limit=1,sort=nearest] run function main:develop/gener/waves/mobs/mob/time1

tag @e[tag=tmp] add tmp1
tag @e remove tmp

execute if data entity @e[tag=tmp1,limit=1] Item.tag.tmp.mob_types[0] run function main:develop/gener/waves/mobs/upd

kill @e[tag=tmp1]

tag @s remove map_mob_upd