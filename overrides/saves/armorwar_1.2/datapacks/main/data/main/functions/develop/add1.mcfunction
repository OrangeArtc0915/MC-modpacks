scoreboard players set temp int -1
execute if data block 0 0 0 Items[0].tag.making[0].id run scoreboard players set temp int 0
execute if data block 0 0 0 Items[0].tag.making[1].id run scoreboard players set temp int 1
execute if data block 0 0 0 Items[0].tag.making[2].id run scoreboard players set temp int 2
execute if data block 0 0 0 Items[0].tag.making[3].id run scoreboard players set temp int 3
execute if data block 0 0 0 Items[0].tag.making[4].id run scoreboard players set temp int 4
execute if data block 0 0 0 Items[0].tag.making[5].id run scoreboard players set temp int 5
execute if data block 0 0 0 Items[0].tag.making[6].id run scoreboard players set temp int 6
execute if score temp int matches 6.. run tellraw @s {"text":"项目槽已满","color":"red"}
execute if score temp int matches ..5 run function main:develop/add2
execute at @s run summon item ~ ~2.0 ~ {Item:{id:"minecraft:glass",Count:1b},Tags:["tmp"]}
data modify entity @e[tag=tmp,limit=1] Item set from entity @s Inventory[{Slot:-106b}]
setblock 0 10 0 air
setblock 0 10 0 oak_sign{Text1:'{"nbt":"Item.tag.title","entity":"@e[tag=tmp,limit=1]"}'}
data modify entity @e[tag=tmp,limit=1] Item.tag.display.Name set from block 0 10 0 Text1
data modify entity @e[tag=tmp,limit=1] Item.tag.display.Lore set from entity @e[tag=tmp,limit=1] Item.tag.pages
tag @e remove tmp
replaceitem entity @s weapon.offhand air
