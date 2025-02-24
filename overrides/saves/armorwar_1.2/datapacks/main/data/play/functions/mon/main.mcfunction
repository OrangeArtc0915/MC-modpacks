execute if entity @s[tag=monster_array] run function mobs:array

execute if entity @s[tag=attacking2] run function play:mon/dattack2


execute if entity @s[tag=!attacking,tag=!fly_mob] run function play:mon/unattacking
execute if entity @s[tag=!attacking,tag=fly_mob] run function play:mon/fly_main

execute if data entity @s ActiveEffects[{Id:31b}] run function play:mon/hurt1
execute if entity @s[nbt=!{Health:1024.0f}] run function play:mon/cost

execute if entity @s[tag=attacking] at @s run function play:mon/attacking


execute if score @s mdamage matches 1.. run function play:mon/mdamage
execute if score @s pdamage matches 1.. run function play:mon/pdamage

execute if score @s no_fire matches 1 run data modify entity @s Fire set value 0s