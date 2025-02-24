execute unless entity @s[tag=record_la] run data modify entity @s ArmorItems[3].tag.leftarm set from entity @s Pose.LeftArm
tag @s add record_la
data modify entity @s Pose.LeftArm set value [-25.0f,25.0f,15.0f]

summon item 0.0 11.0 0.0 {Tags:["scheduler.item","tmp5"],Item:{id:"minecraft:glass",Count:1b,tag:{time:10,uuid:[],command:"execute as @e[tag=scheduler.mark] run function play:sold/actions/leftarm_down"}}}
data modify entity @e[tag=tmp5,limit=1] Item.tag.uuid set from entity @s UUID
tag @e remove tmp5