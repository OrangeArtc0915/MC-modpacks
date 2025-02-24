summon item 0 0 0 {Item:{id:"minecraft:glass",Count:1b},Tags:["tmp"]}

execute if score @s making matches 0 run data modify entity @e[tag=tmp,limit=1] Item.tag.towerp set from block 0 0 0 Items[0].tag.making[0].tag.towerp
execute if score @s making matches 1 run data modify entity @e[tag=tmp,limit=1] Item.tag.towerp set from block 0 0 0 Items[0].tag.making[1].tag.towerp
execute if score @s making matches 2 run data modify entity @e[tag=tmp,limit=1] Item.tag.towerp set from block 0 0 0 Items[0].tag.making[2].tag.towerp
execute if score @s making matches 3 run data modify entity @e[tag=tmp,limit=1] Item.tag.towerp set from block 0 0 0 Items[0].tag.making[3].tag.towerp
execute if score @s making matches 4 run data modify entity @e[tag=tmp,limit=1] Item.tag.towerp set from block 0 0 0 Items[0].tag.making[4].tag.towerp
execute if score @s making matches 5 run data modify entity @e[tag=tmp,limit=1] Item.tag.towerp set from block 0 0 0 Items[0].tag.making[5].tag.towerp
execute if score @s making matches 6 run data modify entity @e[tag=tmp,limit=1] Item.tag.towerp set from block 0 0 0 Items[0].tag.making[6].tag.towerp

execute if score @s making matches 0 run data modify entity @e[tag=tmp,limit=1] Item.tag.pathp set from block 0 0 0 Items[0].tag.making[0].tag.pathp
execute if score @s making matches 1 run data modify entity @e[tag=tmp,limit=1] Item.tag.pathp set from block 0 0 0 Items[0].tag.making[1].tag.pathp
execute if score @s making matches 2 run data modify entity @e[tag=tmp,limit=1] Item.tag.pathp set from block 0 0 0 Items[0].tag.making[2].tag.pathp
execute if score @s making matches 3 run data modify entity @e[tag=tmp,limit=1] Item.tag.pathp set from block 0 0 0 Items[0].tag.making[3].tag.pathp
execute if score @s making matches 4 run data modify entity @e[tag=tmp,limit=1] Item.tag.pathp set from block 0 0 0 Items[0].tag.making[4].tag.pathp
execute if score @s making matches 5 run data modify entity @e[tag=tmp,limit=1] Item.tag.pathp set from block 0 0 0 Items[0].tag.making[5].tag.pathp
execute if score @s making matches 6 run data modify entity @e[tag=tmp,limit=1] Item.tag.pathp set from block 0 0 0 Items[0].tag.making[6].tag.pathp

execute if score @s making matches 0 run data modify entity @e[tag=tmp,limit=1] Item.tag.endp set from block 0 0 0 Items[0].tag.making[0].tag.endp
execute if score @s making matches 1 run data modify entity @e[tag=tmp,limit=1] Item.tag.endp set from block 0 0 0 Items[0].tag.making[1].tag.endp
execute if score @s making matches 2 run data modify entity @e[tag=tmp,limit=1] Item.tag.endp set from block 0 0 0 Items[0].tag.making[2].tag.endp
execute if score @s making matches 3 run data modify entity @e[tag=tmp,limit=1] Item.tag.endp set from block 0 0 0 Items[0].tag.making[3].tag.endp
execute if score @s making matches 4 run data modify entity @e[tag=tmp,limit=1] Item.tag.endp set from block 0 0 0 Items[0].tag.making[4].tag.endp
execute if score @s making matches 5 run data modify entity @e[tag=tmp,limit=1] Item.tag.endp set from block 0 0 0 Items[0].tag.making[5].tag.endp
execute if score @s making matches 6 run data modify entity @e[tag=tmp,limit=1] Item.tag.endp set from block 0 0 0 Items[0].tag.making[6].tag.endp

execute if score @s making matches 0 run data modify entity @e[tag=tmp,limit=1] Item.tag.spointp set from block 0 0 0 Items[0].tag.making[0].tag.spointp
execute if score @s making matches 1 run data modify entity @e[tag=tmp,limit=1] Item.tag.spointp set from block 0 0 0 Items[0].tag.making[1].tag.spointp
execute if score @s making matches 2 run data modify entity @e[tag=tmp,limit=1] Item.tag.spointp set from block 0 0 0 Items[0].tag.making[2].tag.spointp
execute if score @s making matches 3 run data modify entity @e[tag=tmp,limit=1] Item.tag.spointp set from block 0 0 0 Items[0].tag.making[3].tag.spointp
execute if score @s making matches 4 run data modify entity @e[tag=tmp,limit=1] Item.tag.spointp set from block 0 0 0 Items[0].tag.making[4].tag.spointp
execute if score @s making matches 5 run data modify entity @e[tag=tmp,limit=1] Item.tag.spointp set from block 0 0 0 Items[0].tag.making[5].tag.spointp
execute if score @s making matches 6 run data modify entity @e[tag=tmp,limit=1] Item.tag.spointp set from block 0 0 0 Items[0].tag.making[6].tag.spointp

scoreboard players operation temp int = @s making
scoreboard players set tower int 0
scoreboard players set path int 0
scoreboard players set end int 1
scoreboard players set spoint int 0
execute as @e[tag=tmp,limit=1] if data entity @s Item.tag.towerp[0] run function main:develop/loop0
execute as @e[tag=tmp,limit=1] if data entity @s Item.tag.pathp[0] run function main:develop/loop1
execute as @e[tag=tmp,limit=1] if data entity @s Item.tag.endp[0] run function main:develop/loop2
execute as @e[tag=tmp,limit=1] if data entity @s Item.tag.spointp[0] run function main:develop/loop3
execute as @e[tag=map_tower] at @s run function play:tower/build/remove
kill @e[tag=tmp]