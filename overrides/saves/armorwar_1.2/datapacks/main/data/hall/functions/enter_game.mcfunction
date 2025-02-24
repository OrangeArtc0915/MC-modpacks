scoreboard players set temp int 0
function main:close_i

summon item 0.0 11.0 0.0 {Tags:["scheduler.item","tmp"],Item:{id:"minecraft:glass",Count:1b,tag:{time:2,uuid:[],command:"execute as @a[tag=scheduler.mark] unless block 196 48 27 minecraft:red_wool run function maps:enter"}}}
data modify entity @e[tag=tmp,limit=1] Item.tag.uuid set from entity @s UUID
tag @e remove tmp
execute at @s run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 1