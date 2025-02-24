execute if score @s sp matches 0 run scoreboard players set @s speed 0
execute if score @s sp matches 1..10 run scoreboard players set @s speed 1
execute if score @s sp matches 11..20 run scoreboard players set @s speed 2
execute if score @s sp matches 21..30 run scoreboard players set @s speed 3
execute if score @s sp matches 31..40 run scoreboard players set @s speed 4
execute if score @s sp matches 41..50 run scoreboard players set @s speed 5
execute if score @s sp matches 51..60 run scoreboard players set @s speed 6
execute if score @s sp matches 61..70 run scoreboard players set @s speed 7
execute if score @s sp matches 71..80 run scoreboard players set @s speed 8
execute if score @s sp matches 81..90 run scoreboard players set @s speed 9
execute if score @s sp matches 91..100 run scoreboard players set @s speed 10

execute if score @s dattack matches ..0 if data entity @s ArmorItems[3].tag.path[0] run function play:mon/facing1
execute if score @s dattack matches ..0 unless data entity @s ArmorItems[3].tag.path[0] run function play:mon/reach
execute if score @s dattack matches ..0 run data modify entity @s NoAI set value 1b