tag @s remove inhall
scoreboard players operation temp int = @s select
tag @s add tmp3
execute as @a[tag=waiting] if score @s select = temp int run scoreboard players set @a[tag=tmp3,limit=1] select 3
tag @s remove tmp3
execute unless score @s select matches 1..3 run scoreboard players set @s select 3
scoreboard players set waiting int 1
execute unless entity @a[tag=waiting] run function maps:choice_maker
execute unless entity @a[tag=choice_maker] run tag @s add choice_maker
tag @s add waiting
tp @s -26 60 74 0.0 0.0
clear @s
replaceitem entity @s hotbar.8 barrier{display:{Name:'{"text":"返回大厅","color":"red","italic":"false"}',Lore:['{"text":"§f按F"}']},ui:1b,back:true,waiting:bk}
replaceitem entity @s hotbar.3 iron_helmet{HideFlags:63,display:{Name:'{"text":"§2我想成为决策者"}',Lore:['{"text":"§f按F"}']},ui:1b,waiting:dm}
replaceitem entity @s hotbar.4 golden_sword{HideFlags:63,display:{Name:'{"text":"§6我想成为英雄"}',Lore:['{"text":"§f按F"}']},ui:1b,waiting:hr}
replaceitem entity @s hotbar.5 light_gray_wool{display:{Name:'{"text":"我想成为旁观者","italic":"false","color":"gray"}',Lore:['{"text":"§f按F"}']},ui:1b,waiting:sp}
execute at @s run playsound minecraft:entity.item.pickup player @s