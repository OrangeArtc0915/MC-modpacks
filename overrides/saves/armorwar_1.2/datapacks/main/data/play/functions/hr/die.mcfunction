scoreboard players operation temp int = @s muid
execute as @e[tag=hr_model] if score @s int = temp int run kill @s
function main:pos
tag @s add dead
gamemode spectator @s
title @s title {"text":"你死了！","color":"red"}
scoreboard players set @s dead_CD 40
function play:hr/dattack