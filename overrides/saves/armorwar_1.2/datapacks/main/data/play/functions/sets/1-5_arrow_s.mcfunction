tag @e remove tmp
execute positioned ~ 15 ~ run tag @e[tag=monster,distance=..25.0] add tmp
function play:tower/least

playsound minecraft:item.crossbow.shoot player @a ~ ~ ~ 3.0 0.8

tag @e remove result
summon area_effect_cloud 4337 25.7 1212 {Tags:["result"]}
summon area_effect_cloud 4337 25.7 1213 {Tags:["result"]}
summon area_effect_cloud 4337 25.7 1214 {Tags:["result"]}
summon area_effect_cloud 4337 25.7 1215 {Tags:["result"]}
summon area_effect_cloud 4337 25.7 1216 {Tags:["result"]}
summon area_effect_cloud 4338 25.7 1217 {Tags:["result"]}
summon area_effect_cloud 4339 25.7 1217 {Tags:["result"]}
summon area_effect_cloud 4340 25.7 1217 {Tags:["result"]}
summon area_effect_cloud 4341 25.7 1217 {Tags:["result"]}
summon area_effect_cloud 4342 25.7 1217 {Tags:["result"]}
summon area_effect_cloud 4343 25.7 1216 {Tags:["result"]}
summon area_effect_cloud 4343 25.7 1215 {Tags:["result"]}
summon area_effect_cloud 4343 25.7 1214 {Tags:["result"]}
summon area_effect_cloud 4343 25.7 1213 {Tags:["result"]}
summon area_effect_cloud 4343 25.7 1212 {Tags:["result"]}
summon area_effect_cloud 4342 25.7 1211 {Tags:["result"]}
summon area_effect_cloud 4341 25.7 1211 {Tags:["result"]}
summon area_effect_cloud 4340 25.7 1211 {Tags:["result"]}
summon area_effect_cloud 4339 25.7 1211 {Tags:["result"]}
summon area_effect_cloud 4338 25.7 1211 {Tags:["result"]}

execute at @e[tag=tmp] run tag @e[tag=result,limit=1,sort=nearest] add tmp1
scoreboard players operation temp int = @s int
execute as @e[tag=build_model] if score @s int = temp int run tag @s add tmp2
execute at @e[tag=tmp1] positioned ~ ~-0.8 ~ facing entity @e[tag=tmp,limit=1] eyes run function play:sets/1-5_shoot

tag @e remove tmp1
tag @e remove tmp
tag @e remove tmp2

scoreboard players set @s timer0 0