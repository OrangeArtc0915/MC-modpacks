summon area_effect_cloud 0 11 0 {Tags:["tmp1","marrow0","mob_skill"],Duration:8}
scoreboard players operation @e[tag=tmp1,limit=1] rat = @s rat
scoreboard players operation @e[tag=tmp1,limit=1] rat *= 13 int
execute at @s anchored eyes run tp @e[tag=tmp1,limit=1] ^ ^-0.2 ^
execute as @e[tag=tmp1,limit=1] at @s facing entity @e[tag=tmp,limit=1] eyes run tp @s ~ ~ ~ ~ ~
tag @e remove tmp1