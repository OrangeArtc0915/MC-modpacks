scoreboard players operation temp int = @s muid
execute as @e[tag=rat_model] if score @s int = temp int run tag @s add tmp
data modify entity @s HandItems set from entity @e[tag=tmp,limit=1] HandItems
kill @e[tag=tmp]
tag @s remove rattacking

execute at @s[tag=!attacking] run function play:mon/speed1