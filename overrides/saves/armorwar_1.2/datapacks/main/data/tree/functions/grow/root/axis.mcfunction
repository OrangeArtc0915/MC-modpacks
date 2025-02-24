execute store result score @s y run data get entity @s Pos[1]
execute unless score @s y matches 6..8 run summon area_effect_cloud 5.2 0.0 0.0 {Tags:["tmp1","tree_0"]}
summon area_effect_cloud 0.0 5.0 0.0 {Tags:["tmp1","tree_1"]}
execute unless score @s y matches 6..8 run summon area_effect_cloud 0.0 0.0 5.2 {Tags:["tmp1","tree_2"]}
execute unless score @s y matches 6..8 run summon area_effect_cloud -5.2 0.0 0.0 {Tags:["tmp1","tree_0"]}
summon area_effect_cloud 0.0 -5.0 0.0 {Tags:["tmp1","tree_1"]}
execute unless score @s y matches 6..8 run summon area_effect_cloud 0.0 0.0 -5.2 {Tags:["tmp1","tree_2"]}
execute store result entity @e[tag=math_marker,limit=1] Rotation[0] float 0.0001 run scoreboard players get @s root_main0
execute store result entity @e[tag=math_marker,limit=1] Rotation[1] float 0.0001 run scoreboard players get @s root_main1
execute at @e[tag=math_marker] positioned 0.0 0.0 0.0 positioned ^ ^ ^1.0 run data modify entity @s Tags append from entity @e[tag=tmp1,limit=1,sort=nearest] Tags[0]
kill @e[tag=tmp1]