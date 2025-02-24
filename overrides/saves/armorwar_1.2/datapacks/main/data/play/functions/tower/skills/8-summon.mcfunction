#临时实体
summon area_effect_cloud ~3.0 ~ ~ {Tags:["tmp"]}
summon area_effect_cloud ~-3.0 ~ ~ {Tags:["tmp"]}
summon area_effect_cloud ~ ~ ~3.0 {Tags:["tmp"]}
summon area_effect_cloud ~ ~ ~-3.0 {Tags:["tmp"]}

#选择门
scoreboard players operation temp int = @s int
execute as @e[tag=soldier_point] if score @s int = temp int run tag @s add tmp1
execute at @e[tag=tmp1,limit=1] run tag @e[tag=tmp,limit=1,sort=nearest] add tmp2
execute as @e[tag=tmp2,limit=1] facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~


#生成士兵
data modify block 0 0 0 Items[0].tag.ctmp set value {spec:["build_model","phb_visible1"],int:1,soldier_sort:1,at:8.0,at_cd:15,type:"soldier_0",health:85,mhp:85,dp:25.0f,sp:50,hand0:2,hand1:25,head:4,chest:3,leg:3,foot:3,spawn:{pos:[],rotation:[]}}
execute store result block 0 0 0 Items[0].tag.ctmp.int int 1 run scoreboard players operation temp int = @s int
execute as @e[tag=soldier] if score @s int = temp int run tag @s add tmp3
execute unless entity @e[tag=tmp3,scores={soldier_sort=3}] run data modify block 0 0 0 Items[0].tag.ctmp.soldier_sort set value 3
execute unless entity @e[tag=tmp3,scores={soldier_sort=2}] run data modify block 0 0 0 Items[0].tag.ctmp.soldier_sort set value 2
execute unless entity @e[tag=tmp3,scores={soldier_sort=1}] run data modify block 0 0 0 Items[0].tag.ctmp.soldier_sort set value 1
data modify block 0 0 0 Items[0].tag.ctmp.spawn.pos set from entity @e[tag=tmp2,limit=1] Pos
data modify block 0 0 0 Items[0].tag.ctmp.spawn.rotation set from entity @e[tag=tmp2,limit=1] Rotation
function mobs:spawn

#移除临时实体和标签
tag @e remove tmp1
tag @e remove tmp2
tag @e remove tmp3
kill @e[tag=tmp]

scoreboard players remove @s soldier_count 1
playsound minecraft:block.iron_door.open player @a ~ ~ ~ 2 2