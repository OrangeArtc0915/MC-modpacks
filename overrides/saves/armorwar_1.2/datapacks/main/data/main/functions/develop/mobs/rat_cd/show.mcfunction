#召唤临时运算储存器
summon item 0.0 0.0 0.0 {Item:{id:"minecraft:glass",Count:1b},Tags:["tmp"]}

#得到项
scoreboard players operation @e[tag=tmp,limit=1] list_input = mobs_page int
data modify entity @e[tag=tmp,limit=1] Item.tag.input set from block 0 0 0 Items[0].tag.mobs
execute as @e[tag=tmp] run function list_tool:set

#输出
setblock 0 10 0 air
setblock 0 10 0 oak_sign{Text1:'{"nbt":"Item.tag.result.entity.rat_cd","entity":"@e[tag=tmp,limit=1]"}'}
execute as @e[tag=rat_cd_show] run data modify entity @s CustomName set from block 0 10 0 Text1

#清除临时运算储存器
kill @e[tag=tmp]