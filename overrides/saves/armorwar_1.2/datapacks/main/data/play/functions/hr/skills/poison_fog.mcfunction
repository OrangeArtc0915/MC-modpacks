summon area_effect_cloud 0 11 0 {Duration:15,Tags:["poison_fog","skill","tmp"]}
execute at @s rotated ~ 0.0 positioned ^ ^ ^0.8 run tp @e[tag=tmp,limit=1] ~ ~1.2 ~ ~ ~
tag @e remove tmp

execute if data entity @s SelectedItem.tag.skill_0 run scoreboard players set @s CD0 30
execute if data entity @s SelectedItem.tag.skill_1 run scoreboard players set @s CD1 30
execute if data entity @s SelectedItem.tag.skill_2 run scoreboard players set @s CD2 30

execute at @s run playsound minecraft:block.glass.break player @a ~ ~ ~ 2.0 1.5