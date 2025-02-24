function math:eyepos
scoreboard players set temp int 40
scoreboard players set result int 1
execute as @e[tag=result] at @s rotated ~ 0.0 run function main:fly/forw_l
scoreboard players set result int 1
execute at @s positioned as @e[tag=result,limit=1] run tp @s ~ ~-1.62 ~