execute at @s run tp @e[tag=math_marker,limit=1] ~ ~ ~ ~ ~
execute store result entity @e[tag=math_marker,limit=1] Pos[1] double 0.1 run scoreboard players get soldier_y int

execute unless score @s target matches 1.. run function mobs:boss1/actions/s_target

scoreboard players operation temp int = @s target
execute as @e[tag=soldier,tag=!dead] if score @s muid = temp int run tag @s add tmp

scoreboard players add @s timer0 1
execute if score @s timer0 matches 45.. run function mobs:boss1/actions/attack


execute unless entity @e[tag=tmp] run scoreboard players set @s target 0
tag @e remove tmp

execute at @e[tag=math_marker,limit=1] unless entity @e[tag=soldier,distance=..6.0,tag=!dead] unless score @s timer0 matches 45.. run function mobs:boss1/actions/s_walk