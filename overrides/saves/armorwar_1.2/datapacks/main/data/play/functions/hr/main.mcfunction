#GUI
execute if score @s hr matches 1 run function play:hr/guis/1
execute if score @s hr matches 2 run function play:hr/guis/2
#近战
execute if entity @s[tag=attacking] at @s run function play:hr/attacking
execute if entity @s[tag=!attacking] if score @s att matches 1.. at @s if entity @e[tag=monster,tag=!fly_mob,distance=..7.0,nbt=!{HurtTime:0s}] run function play:hr/iattack
#受伤
execute if score @s mdamage matches 1.. run function play:hr/mdamage
execute if score @s pdamage matches 1.. run function play:hr/pdamage
#回血
execute if score @s hp < @s mhp unless entity @s[tag=attacking] run function play:hr/heal_test
execute if data entity @s ActiveEffects[{Id:10b}] run function play:hr/heal1
#技能

execute if score @s crc matches 1.. if data entity @s SelectedItem.tag.skill run function play:hr/skill

execute if score @s xp matches 1.. unless score @s timer0 = @s CD0 run function play:hr/skill_items/barrier_0
execute if score @s xp matches 3.. unless score @s timer1 = @s CD1 run function play:hr/skill_items/barrier_1
execute if score @s xp matches 5.. unless score @s timer2 = @s CD2 run function play:hr/skill_items/barrier_2

scoreboard players operation @s timer0 = @s CD0
scoreboard players operation @s timer1 = @s CD1
scoreboard players operation @s timer2 = @s CD2