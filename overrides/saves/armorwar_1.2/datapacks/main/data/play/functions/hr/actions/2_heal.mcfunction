effect give @s minecraft:regeneration 1 0 true
particle minecraft:happy_villager ~0.5 ~2.5 ~0.5 0.4 0.4 0.4 0.0 1 force @a

tag @e[tag=tree_set,limit=1,sort=nearest] add tmp

scoreboard players add @e[tag=tmp,limit=1] sound_cd 1
execute as @e[tag=tmp,limit=1] if score @s sound_cd matches 1 run playsound minecraft:block.beacon.ambient player @a ~ ~ ~ 0.8 1.5
execute as @e[tag=tmp,limit=1] if score @s sound_cd matches 60.. run scoreboard players set @s sound_cd 0

tag @e remove tmp