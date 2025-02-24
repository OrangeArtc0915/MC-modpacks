scoreboard players operation temp0 int = rotation_0 int
scoreboard players operation temp1 int = rotation_1 int
scoreboard players operation temp0 int /= 10000 int
scoreboard players operation temp1 int /= 10000 int
scoreboard players operation temp0 int *= temp1 int


execute if score temp0 int matches 1.. at @s anchored eyes positioned as @e[tag=tmp,limit=1] run summon area_effect_cloud ^-1.5 ^-1.5 ^-0.5 {Tags:["linese","instant","mpar_crit","mpar_custom","tmp1"],Duration:10,Motion:[0.4d,0.0d,0.0d]}
execute if score temp0 int matches ..0 at @s anchored eyes positioned as @e[tag=tmp,limit=1] run summon area_effect_cloud ^1.5 ^-1.5 ^-0.5 {Tags:["linese","instant","mpar_crit","mpar_custom","tmp1"],Duration:10,Motion:[0.4d,0.0d,0.0d]}
execute if score temp0 int matches 1.. at @s anchored eyes positioned as @e[tag=tmp,limit=1] positioned ^1.5 ^1.5 ^-0.5 facing entity @e[tag=tmp1,limit=1] feet run tp @e[tag=math_marker,limit=1] ~ ~ ~ ~ ~
execute if score temp0 int matches ..0 at @s anchored eyes positioned as @e[tag=tmp,limit=1] positioned ^-1.5 ^1.5 ^-0.5 facing entity @e[tag=tmp1,limit=1] feet run tp @e[tag=math_marker,limit=1] ~ ~ ~ ~ ~
execute as @e[tag=math_marker] at @s positioned ^ ^ ^1.0 facing entity @s feet run tp @s ~ ~ ~ ~ ~
data modify entity @e[tag=tmp1,limit=1] Rotation set from entity @e[tag=math_marker,limit=1] Rotation

tag @e remove tmp1

execute as @e[tag=tmp,limit=1] at @s anchored eyes run playsound minecraft:block.pumpkin.carve player @a ~ ~ ~ 1 0.5

scoreboard players set min int 120
scoreboard players set max int 450
function math:random
scoreboard players operation @e[tag=monster,distance=..4.3,tag=!tmp] pdamage += random int
scoreboard players operation @e[tag=tmp] pdamage += random int