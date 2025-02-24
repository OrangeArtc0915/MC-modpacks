execute store result entity @s Pos[0] double 1 run scoreboard players get @s x
execute store result entity @s Pos[1] double 1 run scoreboard players get @s y
execute store result entity @s Pos[2] double 1 run scoreboard players get @s z
execute at @s run clone ~ ~ ~ ~ ~ ~ 0 11 0
execute at @s run setblock ~ ~ ~ air
execute unless entity @s[tag=air] run clone 0 11 0 0 11 0 ~ ~ ~
execute if entity @s[tag=air] run setblock ~ ~ ~ air
execute if entity @s[tag=grass_path] run setblock ~ ~1 ~ air
execute if entity @s[tag=grass_path] run setblock ~ ~ ~ grass_path
execute if entity @s[tag=sand] run setblock ~ ~ ~ sand
scoreboard players set temp int -2147483648
scoreboard players operation temp int > @e[type=area_effect_cloud,tag=block_reserve] int1
kill @s
execute if score @s int1 = temp int if entity @e[type=area_effect_cloud,tag=block_reserve] run function block_reserve:clone2
execute if score @s int1 = temp int unless entity @e[type=area_effect_cloud,tag=block_reserve] run scoreboard players set block_reserve int 0