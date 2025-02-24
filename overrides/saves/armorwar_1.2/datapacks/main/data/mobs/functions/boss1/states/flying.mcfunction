execute unless score @s change_reach matches 1.. run function mobs:boss1/actions/fly
execute unless score @s change_reach matches 1.. unless score @s fly_h matches 80.. run function mobs:boss1/actions/fly_up
execute if score @s change_reach matches 1.. run scoreboard players remove @s change_reach 1

scoreboard players operation temp int = @s facing
execute as @e[tag=mpoint] if score @s int = temp int run tag @s add tmp1

execute at @s run tp @e[tag=math_marker,limit=1] ~ ~ ~ ~ ~
data modify entity @e[tag=math_marker,limit=1] Pos[1] set from entity @e[tag=tmp1,limit=1] Pos[1]

execute at @e[tag=math_marker,limit=1] if entity @e[tag=tmp1,limit=1,distance=..3.0] run function mobs:boss1/actions/next_facing

tag @e remove tmp1