scoreboard players operation temp int = @s int
execute as @e[tag=soldier_point] if score @s int = temp int run tag @s add tmp33

execute if score @s change_attack matches 1.. run scoreboard players remove @s change_attack 1
execute if score @s change_attack matches 0 run function play:sold/change_attack

execute if score @s change_reach matches 1.. run scoreboard players remove @s change_reach 1
execute if score @s change_reach matches 0 run function play:sold/change_reach

execute if score @s change_approach matches 1.. run scoreboard players remove @s change_approach 1
execute if score @s change_approach matches 0 run function play:sold/change_approach

execute if score @s speed matches 0 run function play:sold/move1-2
execute if score @s change_approach matches -1 if score @s change_attack matches -1 if score @s change_reach matches -1 if score @s speed matches 1.. run function play:sold/move1-1
execute if score @s arm matches 1.. run function play:sold/arm

execute if entity @s[tag=!attacking] if score @s target matches 1.. if score @s change_approach matches -1 at @s run function play:sold/approach
execute if entity @s[tag=!attacking,tag=!reached] if score @s target matches 0 if score @s change_attack matches -1 if score @s change_reach matches -1 at @s run function play:sold/reach
execute if entity @s[tag=attacking] at @s run function play:sold/attacking

execute if score @s change_approach matches -1 if score @s change_attack matches -1 if score @s change_reach matches -1 if entity @s[tag=!attacking] if score @s target matches 0 at @s if entity @e[tag=monster,distance=..5.5,tag=!fly_mob] run function play:sold/target
execute if entity @s[tag=reached] if score @s change_approach matches -1 if score @s change_attack matches -1 if score @s change_reach matches -1 if score @s target matches 0 run function play:sold/test

execute if score @s mdamage matches 1.. run function play:sold/mdamage
execute if score @s pdamage matches 1.. run function play:sold/pdamage

tag @e remove tmp33