clear @s
replaceitem entity @s hotbar.0 iron_sword{Unbreakable:1b,HideFlags:63,display:{Name:'{"text":"§b攻击0"}',Lore:['{"text":"§f按F取消近战"}']},ui:1b,weapon_near:1b}
replaceitem entity @s hotbar.1 bow{Enchantments:[{id:"minecraft:sharpness",lvl:1s}],Unbreakable:1b,HideFlags:63,display:{Name:'{"text":"§b攻击1"}',Lore:['{"text":"§f按F切换箭矢"}']},ui:1b,weapon_far:1b}
replaceitem entity @s armor.head leather_helmet{display:{color:1275422},Unbreakable:1b,HideFlags:63,ui:1b,armor_head:1b}
replaceitem entity @s armor.chest leather_chestplate{display:{color:1275422},Unbreakable:1b,HideFlags:63,ui:1b,armor_chest:1b}
replaceitem entity @s armor.legs leather_leggings{display:{color:1275422},Unbreakable:1b,HideFlags:63,ui:1b,armor_legs:1b}
replaceitem entity @s armor.feet leather_boots{display:{color:1275422},Unbreakable:1b,HideFlags:63,ui:1b,armor_feet:1b}

execute if data entity @s SelectedItem.tag.weapon_far unless data entity @s Inventory[{Slot:-106b}].tag.hr2_arrow run function play:hr/items/2_arrow

execute if score @s xp matches 1.. run function play:hr/skill_items/barrier_0
execute if score @s xp matches 3.. run function play:hr/skill_items/barrier_1
execute if score @s xp matches 5.. run function play:hr/skill_items/barrier_2