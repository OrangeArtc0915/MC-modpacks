tag @e remove result
execute store result score @s hp run data get block 0 0 0 Items[0].tag.ctmp.health 10
execute store result score @s mhp run data get block 0 0 0 Items[0].tag.ctmp.mhp 10
execute store result score @s at run data get block 0 0 0 Items[0].tag.ctmp.at
execute store result score @s at_cd run data get block 0 0 0 Items[0].tag.ctmp.at_cd
execute store result score @s mp run data get block 0 0 0 Items[0].tag.ctmp.mp
execute store result score @s dp run data get block 0 0 0 Items[0].tag.ctmp.dp
execute store result score @s rat run data get block 0 0 0 Items[0].tag.ctmp.rat
execute store result score @s if_rat run data get block 0 0 0 Items[0].tag.ctmp.if_rat
execute store result score @s rat_dis run data get block 0 0 0 Items[0].tag.ctmp.rat_dis
execute store result score @s rew run data get block 0 0 0 Items[0].tag.ctmp.rew 10
execute store result score @s sp run data get block 0 0 0 Items[0].tag.ctmp.sp
execute store result score @s mCD0 run data get block 0 0 0 Items[0].tag.ctmp.CD[0]
execute store result score @s mCD1 run data get block 0 0 0 Items[0].tag.ctmp.CD[1]
execute store result score @s mCD2 run data get block 0 0 0 Items[0].tag.ctmp.CD[2]


execute if data block 0 0 0 Items[0].tag.ctmp.hand0 run function mobs:hand0
execute if data block 0 0 0 Items[0].tag.ctmp.hand1 run function mobs:hand1
execute if data block 0 0 0 Items[0].tag.ctmp.head run function mobs:head
execute if data block 0 0 0 Items[0].tag.ctmp.chest run function mobs:chest
execute if data block 0 0 0 Items[0].tag.ctmp.leg run function mobs:leg
execute if data block 0 0 0 Items[0].tag.ctmp.foot run function mobs:foot


execute store result score temp int run data get block 0 0 0 Items[0].tag.ctmp.spec
execute if score temp int matches 1.. run function mobs:spec_loop

data modify entity @s ArmorItems[3].tag.Unbreakable set value 1b
data modify entity @s Attributes append value {Base:1024.0d,Name:"generic.max_health"}
data modify entity @s Health set value 1024.0f

execute if data block 0 0 0 Items[0].tag.ctmp.killtime store result score @s killtime run data get block 0 0 0 Items[0].tag.ctmp.killtime

summon item 0.0 11.0 0.0 {Tags:["scheduler.item","tmp8"],Item:{id:"minecraft:glass",Count:1b,tag:{time:2,uuid:[],command:"execute as @e[tag=scheduler.mark] run function mobs:set2"}}}
data modify entity @e[tag=tmp8,limit=1] Item.tag.uuid set from entity @s UUID
tag @e remove tmp8
tag @s add result