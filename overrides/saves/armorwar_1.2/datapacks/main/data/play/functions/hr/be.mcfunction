gamemode adventure @s
tag @s add hero
tag @s add soldier
tag @s add mob_fighter

attribute @s minecraft:generic.knockback_resistance base set 1.0

scoreboard players set @s lvl 1


execute if score @s hr matches 1 run function play:hr/sets/1
execute if score @s hr matches 2 run function play:hr/sets/2

xp set @s 0 points
xp set @s 0 levels

scoreboard players set @s att 0
scoreboard players set @s chop_test 0

tellraw @s {"text":"你已成为英雄","bold":"true"}
tellraw @s {"text":"当你站立不动时治愈血量","color":"gray"}
tellraw @s {"text":"拿剑按F可以逃离战斗\n","color":"gray"}
tellraw @s {"text":"左击怪物迅速 竖直/倾斜/水平划动视角","color":"gray"}
tellraw @s {"text":"可以分别触发 重劈/斜劈/横扫","color":"gray"}
tellraw @s {"text":"跳劈时重劈还可以触发超级重劈","bold":"true"}