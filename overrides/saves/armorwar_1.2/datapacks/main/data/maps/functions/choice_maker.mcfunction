forceload add -39 86
forceload add -25 87
forceload add -34 71
forceload add -29 70
tag @s add waiting
tag @s add choice_maker
execute if score @s select matches 3 run scoreboard players set @s select 1
function maps:upd
summon area_effect_cloud -27.5 60.5 77.5 {Duration:2147483647,CustomNameVisible:1b,CustomName:'{"text":""}',Tags:["map_set","map_skull"]}
function maps:upd_skull