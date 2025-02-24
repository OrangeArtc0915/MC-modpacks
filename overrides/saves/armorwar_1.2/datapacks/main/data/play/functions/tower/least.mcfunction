execute as @e[tag=tmp] store result score @s temp run data get entity @s ArmorItems[3].tag.path
scoreboard players set temp int 2147483647
scoreboard players operation temp int < @e[tag=tmp] temp
execute as @e[tag=tmp] unless score @s temp = temp int run tag @s remove tmp

scoreboard players set temp int 2147483647
execute as @e[tag=tmp] run scoreboard players operation temp int < @s hp
execute as @e[tag=tmp] run scoreboard players operation @s temp = @s hp
execute as @e[tag=tmp] run scoreboard players operation @s temp -= temp int
tag @e[tag=tmp,scores={temp=0},limit=1] add tmp5

tag @e[tag=tmp,tag=!tmp5] remove tmp
tag @e remove tmp5