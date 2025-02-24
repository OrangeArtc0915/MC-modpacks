#召唤临时运算储存器
summon item 0.0 0.0 0.0 {Item:{id:"minecraft:glass",Count:1b},Tags:["tmp"]}

#得到项
scoreboard players operation @e[tag=tmp,limit=1] list_input = mobs_page int
data modify entity @e[tag=tmp,limit=1] Item.tag.input set from block 0 0 0 Items[0].tag.mobs
execute as @e[tag=tmp] run function list_tool:set

#输出
setblock 0 10 0 air
setblock 0 10 0 oak_sign{Text1:'{"nbt":"Item.tag.result.entity.leg","entity":"@e[tag=tmp,limit=1]"}'}
execute as @e[tag=leg_show] run data modify entity @s CustomName set from block 0 10 0 Text1
execute store result score temp int run data get entity @e[tag=tmp,limit=1] Item.tag.result.entity.leg

execute if score temp int matches 0 as @e[tag=leg_show] run data modify entity @s Item.id set value "minecraft:glass"
execute if score temp int matches 1 as @e[tag=leg_show] run data modify entity @s Item.id set value "minecraft:leather_leggings"
execute if score temp int matches 2 as @e[tag=leg_show] run data modify entity @s Item.id set value "minecraft:chainmail_leggings"
execute if score temp int matches 3 as @e[tag=leg_show] run data modify entity @s Item.id set value "minecraft:iron_leggings"
execute if score temp int matches 4 as @e[tag=leg_show] run data modify entity @s Item.id set value "minecraft:golden_leggings"
execute if score temp int matches 5 as @e[tag=leg_show] run data modify entity @s Item.id set value "minecraft:diamond_leggings"
execute if score temp int matches 6 as @e[tag=leg_show] run data modify entity @s Item.id set value "minecraft:netherite_leggings"

#清除临时运算储存器
kill @e[tag=tmp]