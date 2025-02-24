execute store result score tempx int run data get entity @s Pos[0] 10000
execute store result score tempz int run data get entity @s Pos[2] 10000

scoreboard players set min int -70000
scoreboard players set max int 70000
function math:random
execute store result entity @s Pos[0] double 0.0001 run scoreboard players operation tempx int += random int

scoreboard players set min int -70000
scoreboard players set max int 70000
function math:random
execute store result entity @s Pos[2] double 0.0001 run scoreboard players operation tempz int += random int

execute at @s run summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["tmp","fire_floor","firerain_area"]}
scoreboard players set duration int 21
execute at @s positioned ~ ~-1 ~ align xyz if entity @e[type=area_effect_cloud,tag=block_reserve,distance=..0.1] run scoreboard players set duration int 0
execute at @s positioned ~ ~-1 ~ run function block_reserve:keep
execute at @s unless entity @e[tag=map_tower,distance=..6.4] unless block ~ ~-1 ~ air run setblock ~ ~-1 ~ magma_block
execute at @s run particle minecraft:lava ~ ~ ~ 0.1 0.1 0.1 0.1 10 force
execute at @s run particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.1 10 force
scoreboard players set @e[tag=tmp] killtime 20
tag @e remove tmp

tp @s ~ ~ ~