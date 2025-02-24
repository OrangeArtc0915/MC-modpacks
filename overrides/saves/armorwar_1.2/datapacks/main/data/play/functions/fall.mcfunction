execute at @s run tp @e[tag=math_marker,limit=1] ~ ~ ~
scoreboard players operation temp int = soldier_y int
execute store result entity @e[tag=math_marker,limit=1] Pos[1] double 0.1 run scoreboard players add temp int 20
execute at @e[tag=math_marker,limit=1] run tp @s ~ ~ ~