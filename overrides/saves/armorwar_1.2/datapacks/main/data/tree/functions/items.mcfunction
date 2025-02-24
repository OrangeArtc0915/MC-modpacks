clear @s

execute if score if_chal int matches 0 run replaceitem entity @s hotbar.4 carrot_on_a_stick{CustomModelData:8600001,display:{Name:'{"text":"§b挑战§7(F查看)"}',Lore:['{"text":"§7按F查看挑战"}','{"text":"§7右键接受挑战"}']},ui:1b,waiting:chal}
execute if score if_chal int matches 0 if entity @e[tag=dsp_chal] run replaceitem entity @s hotbar.4 carrot_on_a_stick{CustomModelData:8598031,display:{Name:'{"text":"§b挑战"}',Lore:['{"text":"§7按F查看挑战"}','{"text":"§7右键接受挑战"}']},ui:1b,waiting:chal}
execute if score if_chal int matches 1 run replaceitem entity @s hotbar.4 golden_sword{display:{Name:'{"text":"§c挑战进行中"}',Lore:['{"text":"§7按F查看挑战"}']},ui:1b,waiting:chal,HideFlags:63}
execute if score if_chal int matches 2 run replaceitem entity @s hotbar.4 lime_wool{display:{Name:'{"text":"§6挑战已完成"}',Lore:['{"text":"§7按F完成挑战"}']},ui:1b,waiting:chal}

replaceitem entity @s hotbar.5 light_gray_wool{display:{Name:'{"text":"旁观者","color":"gray","italic":"false"}',Lore:['{"text":"§7按F"}']},ui:1b,waiting:sp}
replaceitem entity @s hotbar.8 barrier{display:{Name:'{"text":"返回大厅","color":"red","italic":"false"}',Lore:['{"text":"§7按F"}']},ui:1b,back:true,waiting:bk}
execute at @s run playsound minecraft:block.lever.click player @s ~ ~ ~ 1 2