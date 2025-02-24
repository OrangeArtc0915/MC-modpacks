kill @e[tag=map_point]

summon item 0 0 0 {Item:{id:"minecraft:glass",Count:1b},Tags:["tmp7"]}

data modify entity @e[tag=tmp7,limit=1] Item.tag.towerp set from block 0 0 0 Items[0].tag.playing.tag.towerp
data modify entity @e[tag=tmp7,limit=1] Item.tag.pathp set from block 0 0 0 Items[0].tag.playing.tag.pathp
data modify entity @e[tag=tmp7,limit=1] Item.tag.endp set from block 0 0 0 Items[0].tag.playing.tag.endp
data modify entity @e[tag=tmp7,limit=1] Item.tag.spointp set from block 0 0 0 Items[0].tag.playing.tag.spointp

scoreboard players set tower int 0
scoreboard players set path int 0
scoreboard players set end int 1
scoreboard players set spoint int 0
execute as @e[tag=tmp7,limit=1] if data entity @s Item.tag.towerp[0] run function play:loop0
execute as @e[tag=tmp7,limit=1] if data entity @s Item.tag.pathp[0] run function play:loop1
execute as @e[tag=tmp7,limit=1] if data entity @s Item.tag.endp[0] run function play:loop2
execute as @e[tag=tmp7,limit=1] if data entity @s Item.tag.spointp[0] run function play:loop3

kill @e[tag=tmp7]