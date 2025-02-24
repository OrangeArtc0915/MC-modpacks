clear @s
execute if score tower_11 int matches 1 run replaceitem entity @s hotbar.3 carrot_on_a_stick{CustomModelData:8592003,display:{Lore:['{"text":"§7按Q建造"}','{"text":"§7魔法伤害:§c14/刻"}','{"text":"§7冷却:§e1.0秒§7或更少"}','{"text":"§7攻击范围:§b19.5格"}'],Name:'[{"text":"§c魔法塔-"},{"text":" §6216金币"}]'},tdisplay:2b,build:11,tower:magic2,ui:1b}
replaceitem entity @s hotbar.4 carrot_on_a_stick{CustomModelData:8592012,HideFlags:63,display:{Lore:['{"text":"§f右键拆除"}'],Name:'{"text":"§c拆除塔"}'},tdisplay:1b,tower:remove,ui:1b,to_remove:0b}
execute if score mhigh_light int matches 0 run replaceitem entity @s hotbar.5 carrot_on_a_stick{CustomModelData:8592013,fly_forw:1b,ui:1b,display:{Name:'{"text":"§f高亮敌人"}'},no_spectate:1b,no_select_tower:1b}
execute if score mhigh_light int matches 1 run replaceitem entity @s hotbar.5 carrot_on_a_stick{CustomModelData:8592013,fly_forw:1b,ui:1b,display:{Name:'{"text":"§f取消高亮敌人"}'},no_spectate:1b,no_select_tower:1b}
replaceitem entity @s hotbar.8 barrier{ui:1b,display:{Name:'{"text":"§b暂停游戏"}',Lore:['{"text":"§7按F暂停"}']},stop:1b}
execute if score monster_notice int matches 1.. run function play:mon/notice