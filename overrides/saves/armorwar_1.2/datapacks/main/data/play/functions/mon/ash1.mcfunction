summon armor_stand 0 11 0 {Tags:["tmp7","15-ash","result"],NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:coal_block",Count:1b,tag:{CustomModelData:2000}}],Marker:1b}
scoreboard players set @e[tag=tmp7,limit=1] killtime 10
scoreboard players set min int 1
scoreboard players set max int 360
function math:random
execute store result entity @e[tag=math_marker,limit=1] Rotation[0] float 1 run scoreboard players get random int
execute at @e[tag=math_marker,limit=1] run tp @e[tag=tmp7] ~ ~ ~ ~ ~
tag @e remove tmp7