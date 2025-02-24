kill @e[tag=dsp_chal]
execute at @s rotated ~ -60.0 run tp @s ~ ~ ~ ~ ~
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["dsp_chal","chal_su","tmp"],Duration:50}
scoreboard players set @e[tag=tmp,limit=1] int 0
execute at @s run tp @e[tag=tmp,limit=1] ~ ~ ~ ~ ~
execute at @s run tp @e[tag=math_marker,limit=1] ^ ^ ^3.5
execute store result score @e[tag=tmp,limit=1] x run data get entity @e[tag=math_marker,limit=1] Pos[0] 10000
execute store result score @e[tag=tmp,limit=1] y run data get entity @e[tag=math_marker,limit=1] Pos[1] 10000
execute store result score @e[tag=tmp,limit=1] z run data get entity @e[tag=math_marker,limit=1] Pos[2] 10000
execute at @s rotated ~ -10.0 run tp @s ~ ~ ~ ~ ~
tag @e remove tmp

clear @a[tag=treeing] carrot_on_a_stick{waiting:chal}