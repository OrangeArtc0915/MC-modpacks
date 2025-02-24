clear @s
execute if score tower_14 int matches 1 run replaceitem entity @s hotbar.3 carrot_on_a_stick{CustomModelData:8592002,display:{Lore:['{"text":"§7按Q建造"}','{"text":"§7爆炸中心:§c1850/次"}','{"text":"§7冷却:§e2.0秒§7或更少"}','{"text":"§7攻击范围:§b24.8格"}'],Name:'[{"text":"§c贝莎大炮-"},{"text":" §6400金币"}]'},tdisplay:2b,build:14,tower:gun3,ui:1b}
replaceitem entity @s hotbar.4 carrot_on_a_stick{CustomModelData:8592012,HideFlags:63,display:{Lore:['{"text":"§f右键拆除"}'],Name:'{"text":"§c拆除塔"}'},tdisplay:1b,tower:remove,ui:1b,to_remove:0b}
execute if score mhigh_light int matches 0 run replaceitem entity @s hotbar.5 carrot_on_a_stick{CustomModelData:8592013,fly_forw:1b,ui:1b,display:{Name:'{"text":"§f高亮敌人"}'},no_spectate:1b,no_select_tower:1b}
execute if score mhigh_light int matches 1 run replaceitem entity @s hotbar.5 carrot_on_a_stick{CustomModelData:8592013,fly_forw:1b,ui:1b,display:{Name:'{"text":"§f取消高亮敌人"}'},no_spectate:1b,no_select_tower:1b}
replaceitem entity @s hotbar.8 barrier{ui:1b,display:{Name:'{"text":"§b暂停游戏"}',Lore:['{"text":"§7按F暂停"}']},stop:1b}
execute if score monster_notice int matches 1.. run function play:mon/notice