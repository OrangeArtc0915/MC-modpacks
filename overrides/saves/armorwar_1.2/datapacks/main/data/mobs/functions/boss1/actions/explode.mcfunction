summon item 0.0 11.0 0.0 {NoGravity:1b,Tags:["scheduler.item","tmp"],Item:{id:"minecraft:glass",Count:1b,tag:{time:1,uuid:[],command:"execute as @e[tag=scheduler.mark] at @s run function mobs:boss1/actions/creeper"}}}
data modify entity @e[tag=tmp,limit=1] Item.tag.uuid set from entity @s UUID
tag @e remove tmp

summon item 0.0 11.0 0.0 {NoGravity:1b,Tags:["scheduler.item","tmp"],Item:{id:"minecraft:glass",Count:1b,tag:{time:13,uuid:[],command:"execute as @e[tag=scheduler.mark] at @s run function mobs:boss1/actions/creeper"}}}
data modify entity @e[tag=tmp,limit=1] Item.tag.uuid set from entity @s UUID
tag @e remove tmp

summon item 0.0 11.0 0.0 {NoGravity:1b,Tags:["scheduler.item","tmp"],Item:{id:"minecraft:glass",Count:1b,tag:{time:24,uuid:[],command:"execute as @e[tag=scheduler.mark] at @s run function mobs:boss1/actions/creeper"}}}
data modify entity @e[tag=tmp,limit=1] Item.tag.uuid set from entity @s UUID
tag @e remove tmp

summon item 0.0 11.0 0.0 {NoGravity:1b,Tags:["scheduler.item","tmp"],Item:{id:"minecraft:glass",Count:1b,tag:{time:28,uuid:[],command:"execute as @e[tag=scheduler.mark] at @s run function mobs:boss1/actions/creeper"}}}
data modify entity @e[tag=tmp,limit=1] Item.tag.uuid set from entity @s UUID
tag @e remove tmp

summon item 0.0 11.0 0.0 {NoGravity:1b,Tags:["scheduler.item","tmp"],Item:{id:"minecraft:glass",Count:1b,tag:{time:32,uuid:[],command:"execute as @e[tag=scheduler.mark] at @s run function mobs:boss1/actions/creeper"}}}
data modify entity @e[tag=tmp,limit=1] Item.tag.uuid set from entity @s UUID
tag @e remove tmp

summon item 0.0 11.0 0.0 {NoGravity:1b,Tags:["scheduler.item","tmp"],Item:{id:"minecraft:glass",Count:1b,tag:{time:88,uuid:[],command:"function mobs:boss1/actions/die"}}}
data modify entity @e[tag=tmp,limit=1] Item.tag.uuid set from entity @s UUID
tag @e remove tmp

summon item 0.0 11.0 0.0 {NoGravity:1b,Tags:["scheduler.item","tmp"],Item:{id:"minecraft:glass",Count:1b,tag:{time:25,uuid:[],command:"execute as @e[tag=boss_set] at @s run function mobs:boss1/actions/explode_fly"}}}
data modify entity @e[tag=tmp,limit=1] Item.tag.uuid set from entity @s UUID
tag @e remove tmp

execute at @s run tp @s ~ ~-0.8 ~
tag @s remove rigid_link
data modify entity @s NoAI set value 0b
data modify entity @s NoGravity set value 0b
execute as @e[tag=boss_set] run data modify entity @s NoGravity set value 0b

scoreboard players set @s hp -8593453

scoreboard players set @s rigid_state -1