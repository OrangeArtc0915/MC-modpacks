clear @s
replaceitem entity @s hotbar.6 carrot_on_a_stick{HideFlags:63,CustomModelData:5001,display:{Lore:['{"text":"§7对准目的地"}','{"text":"§f按F驻扎"}'],Name:'{"text":"§c驻扎到集结点"}'},tower:station,ui:1b,no_select_tower:1b}

scoreboard players operation skill_0 int = @e[tag=tower_editing,limit=1] skill_0
scoreboard players operation skill_1 int = @e[tag=tower_editing,limit=1] skill_1
scoreboard players operation skill_2 int = @e[tag=tower_editing,limit=1] skill_2

execute if score skill_0 int matches 0 run replaceitem entity @s hotbar.1 carrot_on_a_stick{CustomModelData:8598030,HideFlags:63,display:{Lore:['{"text":"§f冷却中"}','{"text":"§7为周围士兵回复§e50点§7血量"}'],Name:'[{"text":"§c治疗之光I-"},{"text":" §6150金币"}]'},tower_skill:barrack3_0,ui:1b}
execute if score skill_0 int matches 1 run replaceitem entity @s hotbar.1 carrot_on_a_stick{CustomModelData:8598030,HideFlags:63,display:{Lore:['{"text":"§f冷却中"}','{"text":"§7为周围士兵回复§e100点§7血量"}'],Name:'[{"text":"§c治疗之光II-"},{"text":" §6150金币"}]'},tower_skill:barrack3_0,ui:1b}
execute if score skill_0 int matches 2 run replaceitem entity @s hotbar.1 carrot_on_a_stick{CustomModelData:8598030,HideFlags:63,display:{Lore:['{"text":"§f冷却中"}','{"text":"§7为周围士兵回复§e150点§7血量"}'],Name:'[{"text":"§c治疗之光III-"},{"text":" §6150金币"}]'},tower_skill:barrack3_0,ui:1b}
execute if score skill_0 int matches 3 run replaceitem entity @s hotbar.1 carrot_on_a_stick{CustomModelData:8598030,HideFlags:63,display:{Lore:['{"text":"§f冷却中"}','{"text":"§7为周围士兵回复§e150点§7血量"}'],Name:'[{"text":"§c治疗之光III"}]'},tower_skill:barrack3_0,ui:1b}

execute if score skill_1 int matches 0 run replaceitem entity @s hotbar.2 carrot_on_a_stick{CustomModelData:8598031,HideFlags:63,display:{Lore:['{"text":"§f概率盾反"}','{"text":"§7为士兵配备反盾"}'],Name:'[{"text":"§c神圣之盾I-"},{"text":" §6220金币"}]'},tower_skill:barrack3_1,ui:1b}
execute if score skill_1 int matches 1 run replaceitem entity @s hotbar.2 carrot_on_a_stick{CustomModelData:8598031,HideFlags:63,display:{Lore:['{"text":"§f概率盾反"}','{"text":"§7为士兵配备反盾"}'],Name:'[{"text":"§c神圣之盾I"}]'},tower_skill:barrack3_1,ui:1b}

execute if score skill_2 int matches 0 run replaceitem entity @s hotbar.3 carrot_on_a_stick{CustomModelData:8598032,HideFlags:63,display:{Lore:['{"text":"§f概率打击"}','{"text":"§7造成§c60点§7范围真实伤害"}'],Name:'[{"text":"§c神圣打击I-"},{"text":" §6250金币"}]'},tower_skill:barrack3_2,ui:1b}
execute if score skill_2 int matches 1 run replaceitem entity @s hotbar.3 carrot_on_a_stick{CustomModelData:8598032,HideFlags:63,display:{Lore:['{"text":"§f概率打击"}','{"text":"§7造成§c80点§7范围真实伤害"}'],Name:'[{"text":"§c神圣打击II-"},{"text":" §6150金币"}]'},tower_skill:barrack3_2,ui:1b}
execute if score skill_2 int matches 2 run replaceitem entity @s hotbar.3 carrot_on_a_stick{CustomModelData:8598032,HideFlags:63,display:{Lore:['{"text":"§f概率打击"}','{"text":"§7造成§c120点§7范围真实伤害"}'],Name:'[{"text":"§c神圣打击III-"},{"text":" §6150金币"}]'},tower_skill:barrack3_2,ui:1b}
execute if score skill_2 int matches 3 run replaceitem entity @s hotbar.3 carrot_on_a_stick{CustomModelData:8598032,HideFlags:63,display:{Lore:['{"text":"§f概率打击"}','{"text":"§7造成§c120点§7范围真实伤害"}'],Name:'[{"text":"§c神圣打击III"}]'},tower_skill:barrack3_2,ui:1b}

replaceitem entity @s hotbar.4 carrot_on_a_stick{CustomModelData:8592012,HideFlags:63,display:{Lore:['{"text":"§f右键拆除"}'],Name:'{"text":"§c拆除塔"}'},tdisplay:1b,tower:remove,ui:1b,to_remove:0b}
execute if score mhigh_light int matches 0 run replaceitem entity @s hotbar.5 carrot_on_a_stick{CustomModelData:8592013,fly_forw:1b,ui:1b,display:{Name:'{"text":"§f高亮敌人"}'},no_spectate:1b,no_select_tower:1b}
execute if score mhigh_light int matches 1 run replaceitem entity @s hotbar.5 carrot_on_a_stick{CustomModelData:8592013,fly_forw:1b,ui:1b,display:{Name:'{"text":"§f取消高亮敌人"}'},no_spectate:1b,no_select_tower:1b}
replaceitem entity @s hotbar.8 barrier{ui:1b,display:{Name:'{"text":"§b暂停游戏"}',Lore:['{"text":"§f按F暂停"}']},stop:1b}
execute if score monster_notice int matches 1.. run function play:mon/notice