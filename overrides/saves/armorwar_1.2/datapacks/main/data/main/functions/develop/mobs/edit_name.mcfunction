playsound minecraft:entity.player.levelup player @a[distance=..20] ~ ~ ~ 5 2

summon item ~ ~ ~ {Item:{id:"minecraft:glass",Count:1b},Tags:["tmp"]}

scoreboard players operation @e[tag=tmp,limit=1] list_input = mobs_page int
data modify entity @e[tag=tmp,limit=1] Item.tag.input set from block 0 0 0 Items[0].tag.mobs
execute as @e[tag=tmp] run function list_tool:set
data modify entity @e[tag=tmp,limit=1] Item.tag.input set from entity @e[tag=tmp,limit=1] Item.tag.result
data modify entity @e[tag=tmp,limit=1] Item.tag.input.id set from entity @s Inventory[{Slot:-106b}].tag.pages[0]
data modify entity @e[tag=tmp,limit=1] Item.tag.result set from block 0 0 0 Items[0].tag.mobs
execute as @e[tag=tmp] run function list_tool:change

data modify block 0 0 0 Items[0].tag.mobs set from entity @e[tag=tmp,limit=1] Item.tag.result


kill @e[tag=tmp]

function main:develop/mobs/upd

function main:develop/mobs/kits
replaceitem entity @s weapon.offhand air