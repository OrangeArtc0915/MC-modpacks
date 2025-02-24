scoreboard players add temp int 1
summon item ~ 255.0 ~ {Item:{id:"minecraft:glass",Count:1b,tag:{author:"",map_pos:[0.0d,0.0d,0.0d],display:{Name:'{"text":""}',Lore:['{"text":""}']}}},Tags:["tmp"]}
execute store result entity @e[tag=tmp,limit=1] Item.tag.map_pos[0] double 1 run scoreboard players get @s map_x
execute store result entity @e[tag=tmp,limit=1] Item.tag.map_pos[1] double 1 run scoreboard players get @s map_y
execute store result entity @e[tag=tmp,limit=1] Item.tag.map_pos[2] double 1 run scoreboard players get @s map_z
data modify entity @e[tag=tmp,limit=1] Item.id set from entity @s SelectedItem.id
data modify entity @e[tag=tmp,limit=1] Item.tag.name set from entity @s Inventory[{Slot:-106b}].tag.title
setblock 0 10 0 air
setblock 0 10 0 oak_sign{Text1:'{"nbt":"Item.tag.name","entity":"@e[tag=tmp,limit=1]"}'}
data modify entity @e[tag=tmp,limit=1] Item.tag.display.Name set from block 0 10 0 Text1
data modify entity @e[tag=tmp,limit=1] Item.tag.display.Lore set from entity @s Inventory[{Slot:-106b}].tag.pages
data modify entity @e[tag=tmp,limit=1] Item.tag.author set from entity @s Inventory[{Slot:-106b}].tag.author
execute if score temp int matches 0 run data modify block 0 0 0 Items[0].tag.making[0] set from entity @e[tag=tmp,limit=1] Item
execute if score temp int matches 1 run data modify block 0 0 0 Items[0].tag.making[1] set from entity @e[tag=tmp,limit=1] Item
execute if score temp int matches 2 run data modify block 0 0 0 Items[0].tag.making[2] set from entity @e[tag=tmp,limit=1] Item
execute if score temp int matches 3 run data modify block 0 0 0 Items[0].tag.making[3] set from entity @e[tag=tmp,limit=1] Item
execute if score temp int matches 4 run data modify block 0 0 0 Items[0].tag.making[4] set from entity @e[tag=tmp,limit=1] Item
execute if score temp int matches 5 run data modify block 0 0 0 Items[0].tag.making[5] set from entity @e[tag=tmp,limit=1] Item
execute if score temp int matches 6 run data modify block 0 0 0 Items[0].tag.making[6] set from entity @e[tag=tmp,limit=1] Item
kill @e[tag=tmp]
kill @e[tag=button_dhall]
function main:develop/load