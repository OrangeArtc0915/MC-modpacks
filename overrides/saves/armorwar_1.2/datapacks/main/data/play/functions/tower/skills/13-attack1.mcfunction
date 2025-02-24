tag @e remove tmp
tag @e[tag=monster,distance=..26.0] add tmp
function play:tower/least

playsound minecraft:item.crossbow.shoot player @a ~ ~ ~ 3.0 1.5
scoreboard players set r int 32
execute positioned ~ ~7.2 ~ run function math:30_radius
execute at @e[tag=tmp] run kill @e[tag=result,limit=2,sort=nearest]
execute at @e[tag=tmp] run tag @e[tag=result,limit=1,sort=nearest] add tmp1
scoreboard players operation temp int = @s int
execute as @e[tag=build_model,tag=arrow3_1] if score @s int = temp int run tag @s add tmp2
execute at @e[tag=tmp1] positioned ~ ~-0.8 ~ facing entity @e[tag=tmp,limit=1] eyes run function play:tower/skills/5-shoot

tag @e remove tmp1
tag @e remove tmp
tag @e remove tmp2