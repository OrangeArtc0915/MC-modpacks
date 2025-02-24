playsound xiaodou:magic.awsl player @a ~ ~ ~ 4.0 1.5
scoreboard players set @s timer3 0
summon area_effect_cloud ~ ~ ~ {Tags:["build_model","a_skill","magic_core","tmp6"],Duration:100}
scoreboard players operation @e[tag=tmp6,limit=1] int = @s int
tag @e remove tmp6
function play:tower/skills/15-core1

execute positioned ~1.5 ~6.0 ~ run function play:tower/skills/15-awsl/ray
execute positioned ~-1.5 ~6.0 ~ run function play:tower/skills/15-awsl/ray
execute positioned ~ ~6.0 ~1.5 run function play:tower/skills/15-awsl/ray
execute positioned ~ ~6.0 ~-1.5 run function play:tower/skills/15-awsl/ray

execute as @e[tag=tmp,limit=1,tag=!boss] run function play:mon/ash
execute as @e[tag=tmp,limit=1,tag=boss] run function play:mon/mmdamage