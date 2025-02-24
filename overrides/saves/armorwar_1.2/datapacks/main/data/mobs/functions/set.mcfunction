scoreboard players set @s target 0
execute unless score gaming int matches 1 run data modify entity @s Silent set value 1b
execute if data block 0 0 0 Items[0].tag.ctmp.spawn.name run function mobs:name
data modify entity @s Rotation set from block 0 0 0 Items[0].tag.ctmp.spawn.rotation
execute store result score @s hp run data get block 0 0 0 Items[0].tag.ctmp.health 10
execute store result score @s mhp run data get block 0 0 0 Items[0].tag.ctmp.mhp 10
execute store result score @s at_cd run data get block 0 0 0 Items[0].tag.ctmp.at_cd
execute store result score @s at run data get block 0 0 0 Items[0].tag.ctmp.at
execute store result score @s mp run data get block 0 0 0 Items[0].tag.ctmp.mp
execute store result score @s dp run data get block 0 0 0 Items[0].tag.ctmp.dp
execute store result score @s rat run data get block 0 0 0 Items[0].tag.ctmp.rat
execute store result score @s rew run data get block 0 0 0 Items[0].tag.ctmp.rew 10
execute store result score @s sp run data get block 0 0 0 Items[0].tag.ctmp.sp

execute if data block 0 0 0 Items[0].tag.ctmp.hand0 run function mobs:hand0
execute if data block 0 0 0 Items[0].tag.ctmp.hand1 run function mobs:hand1
execute if data block 0 0 0 Items[0].tag.ctmp.head run function mobs:head
execute if data block 0 0 0 Items[0].tag.ctmp.chest run function mobs:chest
execute if data block 0 0 0 Items[0].tag.ctmp.leg run function mobs:leg
execute if data block 0 0 0 Items[0].tag.ctmp.foot run function mobs:foot

execute if data block 0 0 0 Items[0].tag.ctmp{if_rat:1b} run function mobs:rat
execute if data block 0 0 0 Items[0].tag.ctmp.size run function mobs:size

scoreboard players set min int 1
execute store result score max int run data get block 0 0 0 Items[0].tag.ctmp.spawn.paths
scoreboard players operation max int > min int
function math:random

scoreboard players operation temp3 int = random int
execute if data block 0 0 0 Items[0].tag.ctmp.spawn.paths[1] if score temp3 int matches 2.. run function mobs:path_loop
data modify entity @s ArmorItems[3].tag.path set from block 0 0 0 Items[0].tag.ctmp.spawn.paths[0]
data modify entity @s Pos set from block 0 0 0 Items[0].tag.ctmp.spawn.poses[0]

execute if data block 0 0 0 Items[0].tag.ctmp.spawn.pos run data modify entity @s Pos set from block 0 0 0 Items[0].tag.ctmp.spawn.pos
execute if score gaming int matches 1 if score @s snos matches 1 run function mobs:r_tp


execute store result score temp int run data get block 0 0 0 Items[0].tag.ctmp.spec
execute if score temp int matches 1.. run function mobs:spec_loop


execute if score gaming int matches 1 at @s run function play:mon/facing1

data modify entity @s ArmorItems[3].tag.Unbreakable set value 1b
data modify entity @s Attributes append value {Base:1024.0d,Name:"generic.max_health"}
data modify entity @s Health set value 1024.0f

execute if score @s sp matches 0 run scoreboard players set @s speed 0
execute if score @s sp matches 1..10 run scoreboard players set @s speed 1
execute if score @s sp matches 11..20 run scoreboard players set @s speed 2
execute if score @s sp matches 21..30 run scoreboard players set @s speed 3
execute if score @s sp matches 31..40 run scoreboard players set @s speed 4
execute if score @s sp matches 41..50 run scoreboard players set @s speed 5
execute if score @s sp matches 51..60 run scoreboard players set @s speed 6
execute if score @s sp matches 61..70 run scoreboard players set @s speed 7
execute if score @s sp matches 71..80 run scoreboard players set @s speed 8
execute if score @s sp matches 81..90 run scoreboard players set @s speed 9
execute if score @s sp matches 91..100 run scoreboard players set @s speed 10

scoreboard players add #muid muid 1
scoreboard players operation @s muid = #muid muid

tag @s add mob_fighter
scoreboard players set @s entity_state 1
team join monster @s
data modify entity @s PersistenceRequired set value 1b

execute if entity @s[type=phantom] run scoreboard players set @s no_fire 1

execute if data block 0 0 0 Items[0].tag.ctmp{fly:1b} run function mobs:fly

execute if data entity @s ArmorItems[3].tag.array run tag @s add monster_array

scoreboard players add @s unmove 0

data modify entity @s ArmorItems[3].tag.pos0 set from entity @s Pos
data modify entity @s ArmorItems[3].tag.pos1 set from entity @s Pos
data modify entity @s ArmorItems[3].tag.tp_path0 set from entity @s ArmorItems[3].tag.path
data modify entity @s ArmorItems[3].tag.tp_path1 set from entity @s ArmorItems[3].tag.path

execute if score mhigh_light int matches 1 run data modify entity @s Glowing set value 1b