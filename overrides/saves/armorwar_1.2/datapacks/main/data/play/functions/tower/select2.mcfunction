function play:tower/unselect
tag @s add selecting_tower2
tag @s add flyer
gamemode creative @s
clear @s
execute if score tower_1 int matches 1 run replaceitem entity @s hotbar.0 carrot_on_a_stick{CustomModelData:8592001,display:{Lore:['{"text":"§7按Q建造"}','{"text":"§7物理伤害:§c125/次"}','{"text":"§7冷却:§e0.5秒§7/概率连射"}','{"text":"§7攻击范围:§b24.5格"}'],Name:'[{"text":"§c箭塔-"},{"text":" §670金币"}]'},tdisplay:2b,build:1,tower:arrow0,ui:1b}
execute if score tower_2 int matches 1 run replaceitem entity @s hotbar.1 carrot_on_a_stick{CustomModelData:8592002,display:{Lore:['{"text":"§7按Q建造"}','{"text":"§7爆炸中心:§c350/次"}','{"text":"§7冷却:§e2.5秒§7或更少"}','{"text":"§7攻击范围:§b23.0格"}'],Name:'[{"text":"§c炮塔-"},{"text":" §6100金币"}]'},tdisplay:2b,build:2,tower:gun0,ui:1b}
execute if score tower_3 int matches 1 run replaceitem entity @s hotbar.2 carrot_on_a_stick{CustomModelData:8592003,tdisplay:2b,display:{Lore:['{"text":"§7按Q建造"}','{"text":"§7魔法伤害:§c10/刻"}','{"text":"§7冷却:§e1.0秒§7或更少"}','{"text":"§7攻击范围:§b19.0格"}'],Name:'[{"text":"§c魔法塔-"},{"text":" §690金币"}]'},build:3,tower:magic0,ui:1b}
execute if score tower_4 int matches 1 run replaceitem entity @s hotbar.3 carrot_on_a_stick{CustomModelData:8592004,display:{Lore:['{"text":"§7按Q建造"}','{"text":"1级士兵","italic":"false","color":"gray"}','{"text":"  攻击5.0,血量70.0","italic":"false","color":"gray"}','{"text":"§7冷却:§e15秒§7或更少"}','{"text":"§7驻扎范围:§b20.0格"}'],Name:'[{"text":"§c兵营-"},{"text":" §670金币"}]'},tdisplay:2b,build:4,tower:soldier0,ui:1b}
execute if score mhigh_light int matches 0 run replaceitem entity @s hotbar.5 carrot_on_a_stick{CustomModelData:8592013,fly_forw:1b,ui:1b,display:{Name:'{"text":"§f高亮敌人"}'},no_spectate:1b,no_select_tower:1b}
execute if score mhigh_light int matches 1 run replaceitem entity @s hotbar.5 carrot_on_a_stick{CustomModelData:8592013,fly_forw:1b,ui:1b,display:{Name:'{"text":"§f取消高亮敌人"}'},no_spectate:1b,no_select_tower:1b}
replaceitem entity @s hotbar.8 barrier{ui:1b,display:{Name:'{"text":"§b暂停游戏"}',Lore:['{"text":"§7按F暂停"}']},stop:1b}

execute if score monster_notice int matches 1.. run function play:mon/notice