summon item 0.0 11.0 0.0 {Tags:["scheduler.item","tmp"],Item:{id:"minecraft:glass",Count:1b,tag:{time:5,uuid:[],command:"execute as @e[tag=scheduler.mark] run function play:wave_m/coin_add"}}}
data modify entity @e[tag=tmp,limit=1] Item.tag.uuid set from entity @s UUID
scoreboard players operation @s coin_add = random int
tag @e remove tmp