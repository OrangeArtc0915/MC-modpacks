tag @e remove tmp
tag @e[tag=monster,distance=..19.0,limit=1,sort=nearest] add tmp

playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 3.0 1.5
scoreboard players operation r int = magic0_r int
execute positioned ~ ~3.2 ~ run function math:120_radius
execute at @e[tag=result] run particle minecraft:soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0 5
execute at @e[tag=tmp] run tag @e[tag=result,limit=1,sort=nearest] add tmp1
scoreboard players operation temp int = @s int
execute as @e[tag=build_model] if score @s int = temp int run tag @s add tmp2
execute at @e[tag=tmp1] facing entity @e[tag=tmp,limit=1] eyes run function play:tower/skills/3-shoot

setblock ~ ~3 ~ sea_lantern
summon area_effect_cloud ~ ~3 ~ {Tags:["block_changer","tmp6","packed_ice"],Duration:1000}

setblock ~1 ~3 ~ blue_stained_glass
setblock ~-1 ~3 ~ blue_stained_glass
setblock ~ ~3 ~1 blue_stained_glass
setblock ~ ~3 ~-1 blue_stained_glass
setblock ~ ~3 ~1 blue_stained_glass
setblock ~ ~4 ~ blue_stained_glass
setblock ~ ~2 ~ blue_stained_glass
summon area_effect_cloud ~1 ~3 ~ {Tags:["block_changer","tmp6","packed_ice"],Duration:1000}
summon area_effect_cloud ~-1 ~3 ~ {Tags:["block_changer","tmp6","packed_ice"],Duration:1000}
summon area_effect_cloud ~ ~3 ~-1 {Tags:["block_changer","tmp6","packed_ice"],Duration:1000}
summon area_effect_cloud ~ ~3 ~1 {Tags:["block_changer","tmp6","packed_ice"],Duration:1000}
summon area_effect_cloud ~ ~4 ~ {Tags:["block_changer","tmp6","packed_ice"],Duration:1000}
summon area_effect_cloud ~ ~2 ~ {Tags:["block_changer","tmp6","packed_ice"],Duration:1000}

setblock ~1 ~4 ~1 glowstone
setblock ~1 ~4 ~-1 glowstone
setblock ~-1 ~4 ~1 glowstone
setblock ~-1 ~4 ~-1 glowstone
setblock ~1 ~2 ~1 glowstone
setblock ~1 ~2 ~-1 glowstone
setblock ~-1 ~2 ~1 glowstone
setblock ~-1 ~2 ~-1 glowstone
summon area_effect_cloud ~1 ~4 ~1 {Tags:["block_changer","tmp6","blue_ice"],Duration:1000}
summon area_effect_cloud ~1 ~4 ~-1 {Tags:["block_changer","tmp6","blue_ice"],Duration:1000}
summon area_effect_cloud ~-1 ~4 ~1 {Tags:["block_changer","tmp6","blue_ice"],Duration:1000}
summon area_effect_cloud ~-1 ~4 ~-1 {Tags:["block_changer","tmp6","blue_ice"],Duration:1000}
summon area_effect_cloud ~1 ~2 ~1 {Tags:["block_changer","tmp6","blue_ice"],Duration:1000}
summon area_effect_cloud ~1 ~2 ~-1 {Tags:["block_changer","tmp6","blue_ice"],Duration:1000}
summon area_effect_cloud ~-1 ~2 ~1 {Tags:["block_changer","tmp6","blue_ice"],Duration:1000}
summon area_effect_cloud ~-1 ~2 ~-1 {Tags:["block_changer","tmp6","blue_ice"],Duration:1000}

scoreboard players set @e[tag=tmp6] killtime 5
scoreboard players operation @e[tag=tmp6] int = @s int

tag @e remove tmp1
tag @e remove tmp
tag @e remove tmp2
tag @e remove tmp6