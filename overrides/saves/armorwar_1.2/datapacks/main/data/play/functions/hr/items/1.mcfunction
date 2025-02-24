clear @s
replaceitem entity @s hotbar.0 iron_sword{Unbreakable:1b,HideFlags:63,Enchantments:[{id:"minecraft:sharpness",lvl:1s}],display:{Name:'{"text":"§b攻击0"}',Lore:['{"text":"§f按F取消近战"}']},ui:1b,weapon_near:1b}
replaceitem entity @s armor.head golden_helmet{Unbreakable:1b,HideFlags:63,ui:1b,armor_head:1b}
replaceitem entity @s armor.chest iron_chestplate{Unbreakable:1b,HideFlags:63,ui:1b,armor_chest:1b}
replaceitem entity @s armor.legs iron_leggings{Unbreakable:1b,HideFlags:63,ui:1b,armor_legs:1b}
replaceitem entity @s armor.feet iron_boots{Unbreakable:1b,HideFlags:63,ui:1b,armor_feet:1b}

execute if score @s xp matches 1.. run function play:hr/skill_items/barrier_0
execute if score @s xp matches 3.. run function play:hr/skill_items/barrier_1
execute if score @s xp matches 5.. run function play:hr/skill_items/barrier_2