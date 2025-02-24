clear @s
scoreboard players operation skill_0 int = @e[tag=tower_editing,limit=1] skill_0
scoreboard players operation skill_1 int = @e[tag=tower_editing,limit=1] skill_1
scoreboard players operation skill_2 int = @e[tag=tower_editing,limit=1] skill_2

execute if score skill_0 int matches 0 run replaceitem entity @s hotbar.2 carrot_on_a_stick{CustomModelData:8598011,HideFlags:63,display:{Lore:['{"text":"§f冷却长"}','{"text":"§7一枚龙息导弹,爆炸中心§c1350"}'],Name:'[{"text":"§c龙息导弹I-"},{"text":" §6220金币"}]'},tower_skill:gun3_0,ui:1b}
execute if score skill_1 int matches 0 run replaceitem entity @s hotbar.3 carrot_on_a_stick{CustomModelData:8598012,HideFlags:63,display:{Lore:['{"text":"§f冷却长"}','{"text":"§7大范围爆炸，每个爆炸中心§c650"}'],Name:'[{"text":"§c群簇爆炸I-"},{"text":" §6185金币"}]'},tower_skill:gun3_1,ui:1b}
execute if score skill_0 int matches 1 run replaceitem entity @s hotbar.2 carrot_on_a_stick{CustomModelData:8598011,HideFlags:63,display:{Lore:['{"text":"§f冷却中"}','{"text":"§7一枚龙息导弹,爆炸中心§c1350"}'],Name:'[{"text":"§c龙息导弹II-"},{"text":" §6180金币"}]'},tower_skill:gun3_0,ui:1b}
execute if score skill_1 int matches 1 run replaceitem entity @s hotbar.3 carrot_on_a_stick{CustomModelData:8598012,HideFlags:63,display:{Lore:['{"text":"§f冷却中"}','{"text":"§7大范围爆炸，每个爆炸中心§c750"}'],Name:'[{"text":"§c群簇爆炸II-"},{"text":" §6185金币"}]'},tower_skill:gun3_1,ui:1b}
execute if score skill_0 int matches 2 run replaceitem entity @s hotbar.2 carrot_on_a_stick{CustomModelData:8598011,HideFlags:63,display:{Lore:['{"text":"§f冷却中"}','{"text":"§7两枚龙息导弹,爆炸中心§c1350"}'],Name:'[{"text":"§c龙息导弹III-"},{"text":" §6260金币"}]'},tower_skill:gun3_0,ui:1b}
execute if score skill_1 int matches 2 run replaceitem entity @s hotbar.3 carrot_on_a_stick{CustomModelData:8598012,HideFlags:63,display:{Lore:['{"text":"§f冷却中"}','{"text":"§7大范围爆炸，每个爆炸中心§c850"}'],Name:'[{"text":"§c群簇爆炸III-"},{"text":" §6185金币"}]'},tower_skill:gun3_1,ui:1b}
execute if score skill_0 int matches 3 run replaceitem entity @s hotbar.2 carrot_on_a_stick{CustomModelData:8598011,HideFlags:63,display:{Lore:['{"text":"§f冷却中"}','{"text":"§7两枚龙息导弹,爆炸中心§c1350"}'],Name:'[{"text":"§c龙息导弹III"}]'},tower_skill:gun3_0,ui:1b}
execute if score skill_1 int matches 3 run replaceitem entity @s hotbar.3 carrot_on_a_stick{CustomModelData:8598012,HideFlags:63,display:{Lore:['{"text":"§f冷却中"}','{"text":"§7大范围爆炸，每个爆炸中心§c850"}'],Name:'[{"text":"§c群簇爆炸III"}]'},tower_skill:gun3_1,ui:1b}


replaceitem entity @s hotbar.4 carrot_on_a_stick{CustomModelData:8592012,HideFlags:63,display:{Lore:['{"text":"§f右键拆除"}'],Name:'{"text":"§c拆除塔"}'},tdisplay:1b,tower:remove,ui:1b,to_remove:0b}
execute if score mhigh_light int matches 0 run replaceitem entity @s hotbar.5 carrot_on_a_stick{CustomModelData:8592013,fly_forw:1b,ui:1b,display:{Name:'{"text":"§f高亮敌人"}'},no_spectate:1b,no_select_tower:1b}
execute if score mhigh_light int matches 1 run replaceitem entity @s hotbar.5 carrot_on_a_stick{CustomModelData:8592013,fly_forw:1b,ui:1b,display:{Name:'{"text":"§f取消高亮敌人"}'},no_spectate:1b,no_select_tower:1b}
replaceitem entity @s hotbar.8 barrier{ui:1b,display:{Name:'{"text":"§b暂停游戏"}',Lore:['{"text":"§f按F暂停"}']},stop:1b}
execute if score monster_notice int matches 1.. run function play:mon/notice