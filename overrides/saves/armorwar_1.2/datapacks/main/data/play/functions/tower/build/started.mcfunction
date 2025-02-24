scoreboard players operation temp int = @s builtid
execute as @e[tag=built] if score @s int = temp int at @s run function play:tower/build/set

tag @s add started