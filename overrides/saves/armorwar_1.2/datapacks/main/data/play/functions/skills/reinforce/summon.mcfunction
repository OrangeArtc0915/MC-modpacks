execute at @s run playsound minecraft:item.armor.equip_netherite player @s
summon area_effect_cloud ~ ~ ~ {Tags:["soldier_point","tmp2"],Duration:2147483647}
data modify entity @e[tag=tmp2,limit=1] Rotation[0] set from entity @s Rotation[0]
execute store result score @e[tag=tmp2,limit=1] int run scoreboard players add reinforce_id int 1
scoreboard players set @e[tag=tmp2] killtime 140

data modify block 0 0 0 Items[0].tag.ctmp set value {spec:["build_model","phb_visible1","reinforce_s"],int:1,soldier_sort:1,at:16.0,at_cd:10,type:"soldier_0",health:70,mhp:70,sp:50,hand0:3,hand1:8,head:4,chest:2,leg:4,foot:3,spawn:{pos:[],rotation:[]}}
execute store result block 0 0 0 Items[0].tag.ctmp.int int 1 run scoreboard players get reinforce_id int
data modify block 0 0 0 Items[0].tag.ctmp.killtime set value 140
data modify block 0 0 0 Items[0].tag.ctmp.soldier_sort set value 2
execute as @e[tag=tmp2,limit=1] at @s run tp @e[tag=math_marker,limit=1] ^1.53 ^ ^-1
data modify block 0 0 0 Items[0].tag.ctmp.spawn.pos set from entity @e[tag=math_marker,limit=1] Pos
data modify block 0 0 0 Items[0].tag.ctmp.spawn.rotation set from entity @e[tag=tmp2,limit=1] Rotation
function mobs:spawn
data modify block 0 0 0 Items[0].tag.ctmp set value {spec:["build_model","phb_visible1","reinforce_s"],int:1,soldier_sort:1,at:16.0,at_cd:10,type:"soldier_0",health:70,mhp:70,sp:50,hand0:15,hand1:19,head:4,chest:2,leg:4,foot:3,spawn:{pos:[],rotation:[]}}
execute store result block 0 0 0 Items[0].tag.ctmp.int int 1 run scoreboard players get reinforce_id int
data modify block 0 0 0 Items[0].tag.ctmp.killtime set value 140
data modify block 0 0 0 Items[0].tag.ctmp.soldier_sort set value 3
execute as @e[tag=tmp2,limit=1] at @s run tp @e[tag=math_marker,limit=1] ^-1.53 ^ ^-1
data modify block 0 0 0 Items[0].tag.ctmp.spawn.pos set from entity @e[tag=math_marker,limit=1] Pos
data modify block 0 0 0 Items[0].tag.ctmp.spawn.rotation set from entity @e[tag=tmp2,limit=1] Rotation
function mobs:spawn

tag @e remove tmp2

scoreboard players set reinforce int 20
scoreboard players set reinforce1 int -1

replaceitem entity @s weapon.offhand air