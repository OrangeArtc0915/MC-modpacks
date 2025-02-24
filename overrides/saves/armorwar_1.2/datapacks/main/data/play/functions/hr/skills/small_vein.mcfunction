execute at @s run playsound minecraft:block.fence_gate.close player @a ~ ~ ~ 5.0 0.5

execute at @s rotated ~ 0.0 run tp @e[tag=math_marker,limit=1] ^ ^ ^3.0

execute at @s rotated ~ 0.0 positioned ^ ^ ^12.0 run tag @e[tag=monster,distance=..12.0] add tmp63
execute at @s at @e[tag=tmp63,limit=1,sort=nearest] run tp @e[tag=math_marker,limit=1] ~ ~ ~
tag @e remove tmp63

execute store result entity @e[tag=math_marker,limit=1] Pos[1] double 0.1 run scoreboard players get soldier_y int

execute at @e[tag=math_marker,limit=1] align xyz run summon area_effect_cloud ~ ~ ~ {Tags:["tree_set","a_skill","tmp"],Duration:135}
scoreboard players set @e[tag=tmp,limit=1] int 0
execute as @e[tag=tmp,limit=1] at @s if entity @e[tag=tree_set,tag=!tmp,distance=..0.1] run kill @s
tag @e remove tmp

execute if data entity @s SelectedItem.tag.skill_0 run scoreboard players set @s CD0 15
execute if data entity @s SelectedItem.tag.skill_1 run scoreboard players set @s CD1 15
execute if data entity @s SelectedItem.tag.skill_2 run scoreboard players set @s CD2 15