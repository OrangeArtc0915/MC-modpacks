scoreboard players set r int 20

execute at @s positioned ~-0.5 ~10.5 ~-0.5 as @p run function play:tower/skills/16-heal/particle

tag @s add a_skill
tag @s add heal_ray

scoreboard players operation temp int = @s value_0
scoreboard players operation temp int *= 8 int
execute as @e[tag=soldier,tag=!hero,distance=..25.0] run function play:tower/skills/16-heal/heal

playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 4.0 2