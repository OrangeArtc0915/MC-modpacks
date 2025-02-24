replaceitem entity @s armor.head stone
clear @s
execute if entity @s[tag=choice_maker] run replaceitem entity @s hotbar.1 carrot_on_a_stick{display:{Name:'{"text":"§b右击竿"}'},ui:1b,waiting:rc,CustomModelData:4001}
replaceitem entity @s hotbar.8 barrier{display:{Name:'{"text":"返回大厅","color":"red","italic":"false"}',Lore:['{"text":"§f按F"}']},ui:1b,back:true,waiting:bk}
replaceitem entity @s hotbar.3 iron_helmet{HideFlags:63,display:{Name:'{"text":"§2我想成为决策者"}',Lore:['{"text":"§f按F"}']},ui:1b,waiting:dm}
replaceitem entity @s hotbar.4 golden_sword{HideFlags:63,display:{Name:'{"text":"§6我想成为英雄"}',Lore:['{"text":"§f按F"}']},ui:1b,waiting:hr}
replaceitem entity @s hotbar.5 light_gray_wool{display:{Name:'{"text":"我想成为旁观者","italic":"false","color":"gray"}',Lore:['{"text":"§f按F"}']},ui:1b,waiting:sp}
execute at @s run playsound minecraft:block.lever.click player @s ~ ~ ~ 1 2