execute store result entity @s Pos[0] double 1 run scoreboard players get temp int
execute store result entity @s Pos[2] double 1 run scoreboard players get temp1 int
execute at @s run forceload add ~ ~
execute at @s run tp @a ~ ~ ~
execute at @s run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["aec","de_name","de_aec"],CustomNameVisible:true,CustomName:"\"请用告示牌在这里写地图名称\"",Duration:100}
execute at @s run setblock ~ ~-1 ~ white_wool
execute at @s run summon area_effect_cloud ~0.5 ~ ~3.5 {Tags:["aec","de_lore","de_aec"],CustomNameVisible:true,CustomName:"\"请用告示牌在这里写地图介绍\"",Duration:100}
execute at @s run setblock ~ ~-1 ~3.0 white_wool
kill @s
forceload remove ~ ~