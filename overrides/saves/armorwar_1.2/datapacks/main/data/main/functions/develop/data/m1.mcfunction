#召唤临时运算储存器
summon item ~ ~ ~ {Item:{id:"minecraft:glass",Count:1b},Tags:["tmp"]}

#得到项
scoreboard players operation @e[tag=tmp,limit=1] list_input = mobs_page int
data modify entity @e[tag=tmp,limit=1] Item.tag.input set from block 0 0 0 Items[0].tag.mobs
execute as @e[tag=tmp] run function list_tool:set

#减10并保证不为负
execute store result score temp int run data get entity @e[tag=tmp,limit=1] Item.tag.result.entity.data
scoreboard players remove temp int 1
execute store result entity @e[tag=tmp,limit=1] Item.tag.result.entity.data float 1 run scoreboard players operation temp int > 0 int


#改变项
data modify entity @e[tag=tmp,limit=1] Item.tag.input set from entity @e[tag=tmp,limit=1] Item.tag.result
data modify entity @e[tag=tmp,limit=1] Item.tag.result set from block 0 0 0 Items[0].tag.mobs
execute as @e[tag=tmp] run function list_tool:change


#返回结果
data modify block 0 0 0 Items[0].tag.mobs set from entity @e[tag=tmp,limit=1] Item.tag.result

#清除临时运算储存器
kill @e[tag=tmp]

function main:develop/mobs/upd