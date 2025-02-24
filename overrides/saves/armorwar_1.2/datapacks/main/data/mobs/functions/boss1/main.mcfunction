execute if score @s rigid_state matches 0 run function mobs:boss1/states/moving
execute if score @s rigid_state matches 1 run function mobs:boss1/states/attacking
execute if score @s rigid_state matches 2 run function mobs:boss1/states/flying

execute store result score temp int run data get entity @s Health
execute unless score temp int matches 200 run data modify entity @s Health set value 200.0f

#显示
bossbar set minecraft:game name ["",{"text":"\ue000","font":"s3:default"},{"score":{"name":"g_hp","objective":"int"}},{"text":"   "},{"text":"\ue001","font":"s3:default"},{"score":{"name":"coin","objective":"int"}},{"text":"   "},{"text":"\ue002","font":"s3:default"},{"text":" boss_hp","color":"dark_red","bold":true},{"text":"\ue005","font":"s3:default","color":"dark_red"}]

scoreboard players set result int 0
execute as @e[tag=boss_set] if score @s pdamage matches 1.. run scoreboard players operation result int += @s pdamage
execute as @e[tag=boss_set] if score @s mdamage matches 1.. run scoreboard players operation result int += @s mdamage
scoreboard players operation @s hp -= result int
scoreboard players set @e[tag=boss_set] pdamage 0
scoreboard players set @e[tag=boss_set] mdamage 0

execute store result bossbar minecraft:game value run scoreboard players get @s hp
execute store result bossbar minecraft:game max run scoreboard players get @s mhp

execute if score @s rigid_move matches 1 run function rigid:link/move

execute if score @s hp matches -859345..0 at @s run function mobs:boss1/actions/explode