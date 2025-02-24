scoreboard players add @s int 3
scoreboard players operation r int = @s int

execute at @s run function math:120_radius

tag @s add stmp
tag @s remove mpar_wave

execute as @e[tag=result] run data modify entity @s Tags set from entity @e[tag=stmp,limit=1] Tags

scoreboard players add @s int 3
scoreboard players operation r int = @s int

execute at @s run function math:120_radius


execute as @e[tag=result] run data modify entity @s Tags set from entity @e[tag=stmp,limit=1] Tags


scoreboard players add @s int 3
scoreboard players operation r int = @s int

execute at @s run function math:120_radius


execute as @e[tag=result] run data modify entity @s Tags set from entity @e[tag=stmp,limit=1] Tags

tag @s remove stmp
tag @s add mpar_wave