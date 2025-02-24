tag @s remove inhall
execute if score hring int matches 0 run function heroes:set
scoreboard players set hring int 1
tag @s add hring
tp @s -153.0 73.0 -5.0 180.0 0.0
clear @s
execute at @s run playsound minecraft:entity.item.pickup player @s
xp set @s 10 levels
scoreboard players set @s CD0 0
scoreboard players set @s CD1 0
scoreboard players set @s CD2 0

scoreboard players set @s arrow_type 1

replaceitem entity @s hotbar.8 barrier{display:{Name:'{"text":"返回大厅","color":"red","italic":"false"}',Lore:['{"text":"§f按F"}']},ui:1b,back:true,waiting:bk}