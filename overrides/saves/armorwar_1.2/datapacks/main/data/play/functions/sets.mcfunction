summon item 0.0 11.0 0.0 {Item:{id:"minecraft:glass",Count:1b,tag:{time:5,uuid:[],command:""}},Tags:["scheduler.item","tmp"]}
data modify entity @e[tag=tmp,limit=1] Item.tag.uuid set from entity @s UUID
data modify entity @e[tag=tmp,limit=1] Item.tag.command set from block 0 0 0 Items[0].tag.playing.play_sets[0]
tag @e remove tmp


data remove block 0 0 0 Items[0].tag.playing.play_sets[0]
scoreboard players remove temp int 1
execute if score temp int matches 1.. run function play:sets