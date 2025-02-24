tag @s add tmp11
execute at @s positioned ~2.0 ~5.4 ~5.0 run function items:v1/summon
tag @s remove tmp11

scoreboard players set @s timer3 0
scoreboard players remove @s missile_count 1