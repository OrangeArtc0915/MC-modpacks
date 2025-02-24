execute as @e[tag=tmp] store result score @s temp run data get entity @s ArmorItems[3].tag.path
scoreboard players set temp int 2147483647
scoreboard players operation temp int < @e[tag=tmp] temp
execute as @e[tag=tmp] unless score @s temp = temp int run tag @s remove tmp
execute at @e[tag=map_end,limit=1,sort=furthest] run tag @e[tag=tmp,limit=1,sort=nearest] add tmp5
tag @e[tag=tmp,tag=!tmp5] remove tmp
tag @e remove tmp5