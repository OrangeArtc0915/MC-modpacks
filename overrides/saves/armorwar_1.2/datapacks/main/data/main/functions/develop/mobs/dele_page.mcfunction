playsound minecraft:block.note_block.bass player @a[distance=..20] ~ ~ ~ 2
function main:develop/mobs/kits

summon item ~ ~ ~ {Item:{id:"minecraft:glass",Count:1b,tag:{input:[],result:[]}},Tags:["tmp"]}


data modify entity @e[tag=tmp,limit=1] Item.tag.input set from block 0 0 0 Items[0].tag.mobs
scoreboard players operation @e[tag=tmp,limit=1] list_input = mobs_page int
execute as @e[tag=tmp,limit=1] run function list_tool:remove
data modify block 0 0 0 Items[0].tag.mobs set from entity @e[tag=tmp,limit=1] Item.tag.result

kill @e[tag=tmp]


function main:develop/mobs/down_page1
function main:develop/mobs/up_page1
function main:develop/mobs/upd