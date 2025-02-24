scoreboard players operation temp int = @s muid
execute as @e[tag=mon_model] if score @s int = temp int run kill @s

scoreboard players operation @s rew /= 100 int
scoreboard players operation @s rew > 1 int
scoreboard players operation g_hp int -= @s rew
scoreboard players set @s rew 0
function play:mon/delete
execute as @a at @s run playsound minecraft:entity.elder_guardian.curse player @s ~ ~ ~ 1 2
scoreboard players operation g_hp int > 0 int
title @a title [{"text":"❤","color":"red","bold":"true"},{"score":{"name":"g_hp","objective":"int"}}]