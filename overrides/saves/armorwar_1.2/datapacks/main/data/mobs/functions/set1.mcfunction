scoreboard players set @s speed 0
scoreboard players set @s change_reach -1
scoreboard players set @s change_attack -1
scoreboard players set @s change_approach -1
execute if data block 0 0 0 Items[0].tag.ctmp.spawn.name run data modify entity @s CustomNameVisible set value 1b
execute if data block 0 0 0 Items[0].tag.ctmp.spawn.name run data modify entity @s CustomName set from block 0 0 0 Items[0].tag.ctmp.spawn.name
execute store result score @s hp run data get block 0 0 0 Items[0].tag.ctmp.health 10
execute store result score @s mhp run data get block 0 0 0 Items[0].tag.ctmp.mhp 10
execute store result score @s at run data get block 0 0 0 Items[0].tag.ctmp.at
execute store result score @s int run data get block 0 0 0 Items[0].tag.ctmp.int
execute store result score @s at_cd run data get block 0 0 0 Items[0].tag.ctmp.at_cd
execute store result score @s mp run data get block 0 0 0 Items[0].tag.ctmp.mp
execute store result score @s dp run data get block 0 0 0 Items[0].tag.ctmp.dp
execute store result score @s rat run data get block 0 0 0 Items[0].tag.ctmp.rat
execute store result score @s if_rat run data get block 0 0 0 Items[0].tag.ctmp.if_rat
execute store result score @s rat_dis run data get block 0 0 0 Items[0].tag.ctmp.rat_dis
execute store result score @s rew run data get block 0 0 0 Items[0].tag.ctmp.rew 10
execute store result score @s sp run data get block 0 0 0 Items[0].tag.ctmp.sp
execute store result score @s walk_amp run data get block 0 0 0 Items[0].tag.ctmp.walk_amp
execute store result score @s walk_pace run data get block 0 0 0 Items[0].tag.ctmp.walk_pace
execute store result score @s soldier_sort run data get block 0 0 0 Items[0].tag.ctmp.soldier_sort
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

scoreboard players add #muid muid 1
scoreboard players operation @s muid = #muid muid
tag @s add mob_fighter
tag @s add rigid
tag @s add rigid_set
scoreboard players set @s entity_state 1

data modify entity @s Pos set from block 0 0 0 Items[0].tag.ctmp.spawn.pos
#data modify entity @s ArmorItems[3].tag.rotation0 set from block 0 0 0 Items[0].tag.ctmp.spawn.rotation

summon item 0.0 11.0 0.0 {Tags:["scheduler.item","tmp8"],Item:{id:"minecraft:glass",Count:1b,tag:{time:2,uuid:[],command:"execute as @e[tag=scheduler.mark] run function mobs:set2"}}}
data modify entity @e[tag=tmp8,limit=1] Item.tag.uuid set from entity @s UUID
tag @e remove tmp8

data modify entity @s Invulnerable set value 1b
scoreboard players set @s target 0

scoreboard players operation temp int = @s int
execute as @e[tag=soldier_point] if score @s int = temp int run tag @s add tmp++
execute if score @s soldier_sort matches 1 at @e[tag=tmp++,limit=1] positioned ^ ^ ^1.5 run function play:sold/reach1
execute if score @s soldier_sort matches 2 at @e[tag=tmp++,limit=1] positioned ^1.53 ^ ^-1 rotated ~-30.0 ~ run function play:sold/reach1
execute if score @s soldier_sort matches 3 at @e[tag=tmp++,limit=1] positioned ^-1.53 ^ ^-1 rotated ~30.0 ~ run function play:sold/reach1
tag @e remove tmp++
scoreboard players add @s unmove 0

execute unless entity @s[tag=reached] run scoreboard players set @s change_reach 5