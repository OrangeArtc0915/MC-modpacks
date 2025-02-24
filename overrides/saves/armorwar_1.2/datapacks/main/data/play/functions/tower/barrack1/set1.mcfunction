scoreboard players set @s value 180

execute at @s positioned ~0.5 ~1.0 ~0.5 run tag @e[tag=map_path,limit=1,sort=nearest] add tmp

scoreboard players set r int 90
execute at @s positioned ~0.5 ~ ~0.5 run function math:60_radius
execute at @e[tag=tmp,limit=1] run tag @e[tag=result,limit=1,sort=nearest] add tmp1

tag @e[tag=tmp1,limit=1] add soldier_point
tag @e[tag=tmp1,limit=1] add aec
data modify entity @e[tag=tmp1,limit=1] Duration set value 100
scoreboard players operation @e[tag=tmp1,limit=1] int = @s int
execute as @e[tag=tmp1,limit=1] at @s facing entity @e[tag=tmp,limit=1] feet run tp @s ~ ~ ~ ~ 0.0

scoreboard players operation stemp int = @s int
execute as @e[tag=soldier_point,tag=!tmp1] if score @s int = stemp int run kill @e[tag=tmp1,limit=1]
data modify block 0 0 0 Items[0].tag.ctmp set value {spec:["build_model","phb_visible1"],int:1,soldier_sort:1,at:8.0,at_cd:15,type:"soldier_0",health:85,mhp:85,dp:25.0f,sp:50,hand0:2,hand1:25,head:4,chest:3,leg:3,foot:3,spawn:{pos:[],rotation:[]}}
execute store result block 0 0 0 Items[0].tag.ctmp.int int 1 run scoreboard players get @s int
execute as @e[tag=soldier,scores={soldier_sort=1}] if score @s int = stemp int run function mobs:set_s
data modify block 0 0 0 Items[0].tag.ctmp set value {spec:["build_model","phb_visible1"],int:1,soldier_sort:2,at:8.0,at_cd:15,type:"soldier_0",health:85,mhp:85,dp:25.0f,sp:50,hand0:2,hand1:25,head:4,chest:3,leg:3,foot:3,spawn:{pos:[],rotation:[]}}
execute store result block 0 0 0 Items[0].tag.ctmp.int int 1 run scoreboard players get @s int
execute as @e[tag=soldier,scores={soldier_sort=2}] if score @s int = stemp int run function mobs:set_s
data modify block 0 0 0 Items[0].tag.ctmp set value {spec:["build_model","phb_visible1"],int:1,soldier_sort:3,at:8.0,at_cd:15,type:"soldier_0",health:85,mhp:85,dp:25.0f,sp:50,hand0:2,hand1:25,head:4,chest:3,leg:3,foot:3,spawn:{pos:[],rotation:[]}}
execute store result block 0 0 0 Items[0].tag.ctmp.int int 1 run scoreboard players get @s int
execute as @e[tag=soldier,scores={soldier_sort=3}] if score @s int = stemp int run function mobs:set_s

tag @e remove tmp
tag @e remove tmp1

scoreboard players set @s soldier_count 3