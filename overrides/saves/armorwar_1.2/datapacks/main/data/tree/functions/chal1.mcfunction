execute at @s run playsound minecraft:item.shield.block player @s ~ ~ ~ 1 1.2

summon item 0.0 11.0 0.0 {Tags:["scheduler.item","tmp"],Item:{id:"minecraft:glass",Count:1b,tag:{time:5,uuid:[],command:"execute as @a[tag=scheduler.mark] at @s run playsound minecraft:block.anvil.land player @s ~ ~ ~ 1 2"}}}
data modify entity @e[tag=tmp,limit=1] Item.tag.uuid set from entity @s UUID
tag @e remove tmp

data modify block 0 0 0 Items[0].tag.tree3[0].if_chal set value 1

clear @a[tag=treeing] carrot_on_a_stick{waiting:chal}