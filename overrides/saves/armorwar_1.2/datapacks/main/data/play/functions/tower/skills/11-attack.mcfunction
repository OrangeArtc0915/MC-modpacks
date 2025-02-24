tag @e remove tmp
tag @e[tag=monster,distance=..19.5,limit=1,sort=nearest] add tmp

playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 3.0 1.5
scoreboard players operation r int = magic0_r int
execute positioned ~ ~3.2 ~ run function math:120_radius
execute at @e[tag=result] run particle minecraft:soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0 5
execute at @e[tag=tmp] run tag @e[tag=result,limit=1,sort=nearest] add tmp1
scoreboard players operation temp int = @s int
execute as @e[tag=build_model] if score @s int = temp int run tag @s add tmp2
execute at @e[tag=tmp1] facing entity @e[tag=tmp,limit=1] eyes run function play:tower/skills/11-shoot

tag @e remove tmp1
tag @e remove tmp
tag @e remove tmp2