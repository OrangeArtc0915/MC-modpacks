execute at @s run playsound minecraft:item.armor.equip_netherite player @s
summon area_effect_cloud ~ ~ ~ {Tags:["soldier_point","tmp2"],Duration:2147483647}
execute as @e[tag=tmp2,limit=1] store result entity @s Pos[1] double 0.1 run scoreboard players get soldier_y int

execute store result score @e[tag=tmp2,limit=1] int run scoreboard players add reinforce_id int 1
scoreboard players set @e[tag=tmp2] killtime 200

data modify block 0 0 0 Items[0].tag.ctmp set value {spec:["build_model","phb_visible1"],int:1,soldier_sort:1,at:8.0,at_cd:8,type:"soldier_0",health:140,mhp:140,sp:50,hand0:2,hand1:0,head:1,chest:3,leg:3,foot:4,spawn:{pos:[],rotation:[]}}
execute store result block 0 0 0 Items[0].tag.ctmp.int int 1 run scoreboard players get reinforce_id int
data modify block 0 0 0 Items[0].tag.ctmp.killtime set value 200
data modify block 0 0 0 Items[0].tag.ctmp.soldier_sort set value 1
execute as @e[tag=tmp2,limit=1] at @s run tp @e[tag=math_marker,limit=1] ^ ^ ^1.5
data modify block 0 0 0 Items[0].tag.ctmp.spawn.pos set from entity @e[tag=math_marker,limit=1] Pos
data modify block 0 0 0 Items[0].tag.ctmp.spawn.rotation set from entity @e[tag=tmp2,limit=1] Rotation
function mobs:spawn

data modify block 0 0 0 Items[0].tag.ctmp set value {spec:["build_model","phb_visible1"],int:1,soldier_sort:1,at:8.0,at_cd:8,type:"soldier_0",health:140,mhp:140,sp:50,hand0:2,hand1:0,head:1,chest:3,leg:3,foot:4,spawn:{pos:[],rotation:[]}}
execute store result block 0 0 0 Items[0].tag.ctmp.int int 1 run scoreboard players get reinforce_id int
data modify block 0 0 0 Items[0].tag.ctmp.killtime set value 200
data modify block 0 0 0 Items[0].tag.ctmp.soldier_sort set value 2
execute as @e[tag=tmp2,limit=1] at @s run tp @e[tag=math_marker,limit=1] ^1.53 ^ ^-1
data modify block 0 0 0 Items[0].tag.ctmp.spawn.pos set from entity @e[tag=math_marker,limit=1] Pos
data modify block 0 0 0 Items[0].tag.ctmp.spawn.rotation set from entity @e[tag=tmp2,limit=1] Rotation
function mobs:spawn

data modify block 0 0 0 Items[0].tag.ctmp set value {spec:["build_model","phb_visible1"],int:1,soldier_sort:1,at:8.0,at_cd:8,type:"soldier_0",health:140,mhp:140,sp:50,hand0:2,hand1:0,head:1,chest:3,leg:3,foot:4,spawn:{pos:[],rotation:[]}}
execute store result block 0 0 0 Items[0].tag.ctmp.int int 1 run scoreboard players get reinforce_id int
data modify block 0 0 0 Items[0].tag.ctmp.killtime set value 200
data modify block 0 0 0 Items[0].tag.ctmp.soldier_sort set value 3
execute as @e[tag=tmp2,limit=1] at @s run tp @e[tag=math_marker,limit=1] ^-1.53 ^ ^-1
data modify block 0 0 0 Items[0].tag.ctmp.spawn.pos set from entity @e[tag=math_marker,limit=1] Pos
data modify block 0 0 0 Items[0].tag.ctmp.spawn.rotation set from entity @e[tag=tmp2,limit=1] Rotation
function mobs:spawn

tag @e remove tmp2

execute if data entity @s SelectedItem.tag.skill_0 run scoreboard players set @s CD0 40
execute if data entity @s SelectedItem.tag.skill_1 run scoreboard players set @s CD1 40
execute if data entity @s SelectedItem.tag.skill_2 run scoreboard players set @s CD2 40