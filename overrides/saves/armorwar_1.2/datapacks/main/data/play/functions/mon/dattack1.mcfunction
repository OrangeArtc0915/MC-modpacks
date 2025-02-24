tag @s add attacking2
tag @s remove attacking1
scoreboard players set @s dattack 10
execute store result score @s dax run data get entity @s Pos[0] 1000
execute store result score @s daz run data get entity @s Pos[2] 1000
scoreboard players set @s target 0
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