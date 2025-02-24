clear @s
replaceitem entity @s container.20 minecraft:iron_helmet{display:{Name:'{"text":"§f进入游戏"}'},HideFlags:63,hall:enter_game}
replaceitem entity @s container.21 minecraft:golden_sword{display:{Name:'{"text":"§6英雄殿堂"}'},HideFlags:63,hall:enter_hero}
replaceitem entity @s container.22 minecraft:jungle_sapling{display:{Name:'{"text":"§f挑战之树"}'},HideFlags:63,hall:enter_tree}
replaceitem entity @s container.33 minecraft:writable_book{display:{Name:'{"text":"§f图鉴"}'},HideFlags:63,hall:enter_illu}

scoreboard players add @s tip_id 0
execute if score @s tip_id matches 0 run replaceitem entity @s container.34 minecraft:paper{display:{Name:'{"text":"§f战术指导"}'},HideFlags:63,hall:enter_tips}
execute if score @s tip_id matches 1 run replaceitem entity @s container.34 minecraft:paper{display:{Name:'{"text":"§f战术指导"}',Lore:['{"text":"§7永远警惕来自四面八方的偷袭！"}']},HideFlags:63,hall:enter_tips}
execute if score @s tip_id matches 2 run replaceitem entity @s container.34 minecraft:paper{display:{Name:'{"text":"§f战术指导"}',Lore:['{"text":"§7兵营阻拦怪物，搭配远程输出。"}']},HideFlags:63,hall:enter_tips}
execute if score @s tip_id matches 3 run replaceitem entity @s container.34 minecraft:paper{display:{Name:'{"text":"§f战术指导"}',Lore:['{"text":"§7高甲兵很难缠？把魔法都集到它身上！"}']},HideFlags:63,hall:enter_tips}
execute if score @s tip_id matches 4 run replaceitem entity @s container.34 minecraft:paper{display:{Name:'{"text":"§f战术指导"}',Lore:['{"text":"§7灵活改变兵营的驻扎地！"}']},HideFlags:63,hall:enter_tips}
execute if score @s tip_id matches 5 run replaceitem entity @s container.34 minecraft:paper{display:{Name:'{"text":"§f战术指导"}',Lore:['{"text":"§7箭塔？没错，防空mvp。"}']},HideFlags:63,hall:enter_tips}
execute if score @s tip_id matches 6 run replaceitem entity @s container.34 minecraft:paper{display:{Name:'{"text":"§f战术指导"}',Lore:['{"text":"§7让炮塔轰炸怪物小队，人都赢麻了！"}']},HideFlags:63,hall:enter_tips}
execute if score @s tip_id matches 7 run replaceitem entity @s container.34 minecraft:paper{display:{Name:'{"text":"§f战术指导"}',Lore:['{"text":"§7点满剧毒的游侠是真正的法师。"}']},HideFlags:63,hall:enter_tips}
execute if score @s tip_id matches 8 run replaceitem entity @s container.34 minecraft:paper{display:{Name:'{"text":"§f战术指导"}',Lore:['{"text":"§7龙息导弹可能是关键时刻救命稻草。"}']},HideFlags:63,hall:enter_tips}
execute if score @s tip_id matches 9 run replaceitem entity @s container.34 minecraft:paper{display:{Name:'{"text":"§f战术指导"}',Lore:['{"text":"§7死亡射线要留给谁？"}']},HideFlags:63,hall:enter_tips}
execute if score @s tip_id matches 10 run replaceitem entity @s container.34 minecraft:paper{display:{Name:'{"text":"§f战术指导"}',Lore:['{"text":"§7神圣打击？是真伤AOE。"}']},HideFlags:63,hall:enter_tips}
execute if score @s tip_id matches 11 run replaceitem entity @s container.34 minecraft:paper{display:{Name:'{"text":"§f战术指导"}',Lore:['{"text":"§7我直接圣骑士抗黑骑士。"}']},HideFlags:63,hall:enter_tips}
execute if score @s tip_id matches 12 run replaceitem entity @s container.34 minecraft:paper{display:{Name:'{"text":"§f战术指导"}',Lore:['{"text":"§7没事！不要！炸苦力怕！"}']},HideFlags:63,hall:enter_tips}

execute if score @s music_box matches 1 run replaceitem entity @s container.35 minecraft:music_disc_wait{display:{Name:'{"text":"§7音乐盒:§b开"}'},HideFlags:63,hall:enter_disc}
execute unless score @s music_box matches 1 run replaceitem entity @s container.35 minecraft:music_disc_blocks{display:{Name:'{"text":"§7音乐盒:§c关"}'},HideFlags:63,hall:enter_disc}