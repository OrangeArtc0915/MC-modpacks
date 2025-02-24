execute at @s run tp @e[tag=math_marker,limit=1] ~ ~ ~
data modify entity @e[tag=math_marker,limit=1] Pos[1] set from entity @e[tag=tmp,limit=1] Pos[1]
execute at @e[tag=math_marker] if entity @e[tag=tmp,limit=1,distance=..1.2] run scoreboard players set result int 1