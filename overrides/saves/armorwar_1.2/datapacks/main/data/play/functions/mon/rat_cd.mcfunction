scoreboard players set @s speed 0
execute facing entity @s eyes positioned as @s run tp @s ~ ~ ~ ~180.0 0.0

execute unless entity @s[tag=rattacking] run function play:mon/irattack

scoreboard players operation temp int = @s muid
execute as @e[tag=rat_model] if score @s int = temp int run tag @s add tmp
execute at @s as @e[tag=tmp,limit=1] run tp ^0.1 ^ ^
tag @e remove tmp

execute unless score @s rat_timer >= @s rat_cd run scoreboard players add @s rat_timer 1
execute if score @s rat_timer >= @s rat_cd run function play:mon/rat