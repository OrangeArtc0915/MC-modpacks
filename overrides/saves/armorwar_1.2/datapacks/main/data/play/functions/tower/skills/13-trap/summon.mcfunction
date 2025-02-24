tag @e remove tmp
tag @e[tag=monster,distance=..22.0,tag=!fly_mob] add tmp
function play:tower/least
execute at @e[tag=tmp,limit=1] run summon area_effect_cloud ~ ~ ~ {Tags:["tmp89","tree_trap","a_skill"],Duration:150}
scoreboard players operation soldier_yy int = soldier_y int
scoreboard players add soldier_yy int 5
execute store result entity @e[tag=tmp89,limit=1] Pos[1] double 0.1 run scoreboard players get soldier_yy int
tag @e remove tmp89
tag @e remove tmp
scoreboard players set @s timer4 0
execute at @s run playsound minecraft:block.fence_gate.close player @a ~ ~ ~ 5.0 0.5

tag @s add tmp
scoreboard players set min int 0
scoreboard players set max int 0
execute as @e[tag=built,scores={build=13,skill_1=1..},tag=!tmp] run scoreboard players add max int 40
function math:random
scoreboard players operation @s timer4 -= random int
tag @s remove tmp