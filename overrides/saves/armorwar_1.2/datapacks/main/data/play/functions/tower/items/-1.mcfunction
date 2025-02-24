clear @s
execute if score mhigh_light int matches 0 run replaceitem entity @s hotbar.5 carrot_on_a_stick{CustomModelData:8592013,fly_forw:1b,ui:1b,display:{Name:'{"text":"§f高亮敌人"}'},no_spectate:1b,no_select_tower:1b}
execute if score mhigh_light int matches 1 run replaceitem entity @s hotbar.5 carrot_on_a_stick{CustomModelData:8592013,fly_forw:1b,ui:1b,display:{Name:'{"text":"§f取消高亮敌人"}'},no_spectate:1b,no_select_tower:1b}
replaceitem entity @s hotbar.8 barrier{ui:1b,display:{Name:'{"text":"§b暂停游戏"}',Lore:['{"text":"§7按F暂停"}']},stop:1b,no_select_tower:1b}
execute if score reinforce int matches -1 run scoreboard players set reinforce int 0
execute if score firerain int matches -1 run scoreboard players set firerain int 0
scoreboard players set firerain1 int 0
scoreboard players set reinforce1 int 0
execute if score wave int matches 1.. if score enable_skill int matches 1 if score reinforce int matches 0 run function play:skills/reinforce/item
execute if score wave int matches 1.. if score enable_skill int matches 1 if score firerain int matches 0 run function play:skills/firerain/item
execute if score wave int matches 0 run replaceitem entity @s hotbar.0 carrot_on_a_stick{CustomModelData:5004,ui:1b,display:{Name:'{"text":"§c查看己方据点"}'},item:vist_self,no_spectate:1b}
execute if score wave int matches 0 run replaceitem entity @s hotbar.1 carrot_on_a_stick{CustomModelData:5005,ui:1b,display:{Name:'{"text":"§c查看敌方据点"}'},item:vist_enmy,no_spectate:1b}
execute if score monster_notice int matches 1.. run function play:mon/notice
execute if score wave_waiting int matches 1 run replaceitem entity @s hotbar.7 carrot_on_a_stick{CustomModelData:8800001,ui:1b,display:{Name:'{"text":"§c下一波"}'},item:next_wave}