execute unless score @s change_reach matches 1.. unless score @s unmove matches 1.. run function mobs:boss1/actions/move
execute if score @s change_reach matches 1.. run scoreboard players remove @s change_reach 1
execute if score @s unmove matches 1.. run scoreboard players remove @s unmove 1

scoreboard players operation temp int = @s facing
execute as @e[tag=mpoint] if score @s int = temp int run tag @s add tmp1

execute at @s run tp @e[tag=math_marker,limit=1] ~ ~ ~ ~ ~
data modify entity @e[tag=math_marker,limit=1] Pos[1] set from entity @e[tag=tmp1,limit=1] Pos[1]

execute at @e[tag=math_marker,limit=1] if entity @e[tag=tmp1,limit=1,distance=..3.0] run function mobs:boss1/actions/next_facing

execute store result entity @e[tag=math_marker,limit=1] Pos[1] double 0.1 run scoreboard players get soldier_y int
execute at @s if entity @e[tag=soldier,distance=..6.0,tag=!dead] run function mobs:boss1/actions/s_attack

tag @e remove tmp1

execute if score @s hp matches ..100000 if score @s rigid_state matches 0 run function mobs:boss1/actions/s_fly

scoreboard players add @s CD1 1
execute if score @s CD1 matches 100 run function mobs:boss1/actions/zomb_su
execute if score @s CD1 matches 130 as @e[tag=boss_set,tag=zomb] run function mobs:boss1/actions/zomb_sh
execute if score @s CD1 matches 180.. run scoreboard players set @s CD1 0