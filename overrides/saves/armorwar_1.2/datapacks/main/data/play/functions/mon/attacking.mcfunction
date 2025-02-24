execute store result entity @s Pos[1] double 0.1 run scoreboard players get @s attacky
effect give @s minecraft:slowness 1 255 true
scoreboard players set @s speed 0

scoreboard players operation temp int = @s target
execute as @e[tag=mob_fighter,tag=!dead] if score @s muid = temp int run tag @s add tmp

scoreboard players add @s CD 1
execute if score @s CD = @s at_cd run function play:mon/attack
execute if score @s CD = @s at_cd run scoreboard players set @s CD 0


execute if entity @e[tag=tmp] unless entity @e[tag=tmp,tag=attacking] run function play:mon/dattack
execute unless entity @s[tag=attacking2] unless entity @e[tag=tmp] run function play:mon/dattack
tag @e remove tmp