scoreboard players operation @s hp > 0 int
scoreboard players set temp7 int 0
execute at @s if entity @e[tag=attack_times,distance=..4.5] run scoreboard players set temp7 int 1
execute if score temp7 int matches 0 at @s[type=#main:withermob] unless entity @a[tag=hero,distance=..4.5] run effect give @s minecraft:instant_health 1 31 true
execute if score temp7 int matches 0 at @s[type=!#main:withermob] unless entity @a[tag=hero,distance=..4.5] run effect give @s minecraft:instant_damage 1 31 true
execute if score temp7 int matches 1 at @s[type=#main:withermob] run effect give @s minecraft:instant_health 1 31 true
execute if score temp7 int matches 1 at @s[type=!#main:withermob] run effect give @s minecraft:instant_damage 1 31 true
scoreboard players add @s blood_count 1
scoreboard players operation @s blood_count %= 5 int
execute if score @s blood_count matches 1 run function play:mon/blood
execute if score temp int matches 100.. anchored eyes run playsound minecraft:block.stone.break player @a ~ ~ ~ 1 1
execute if score temp int matches 120.. anchored eyes run playsound minecraft:block.nether_gold_ore.break player @a ~ ~ ~ 1 1
execute if entity @s[tag=attacking] run function play:mon/hurt2
execute if score @s hp matches ..0 run function play:mon/die
#scoreboard players set @s from 0
function phb:refresh