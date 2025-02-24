execute store result score temp int run data get block 0 0 0 Items[0].tag.ctmp.chest
execute if score temp int matches 1 run replaceitem entity @s armor.chest minecraft:leather_chestplate
execute if score temp int matches 2 run replaceitem entity @s armor.chest minecraft:chainmail_chestplate
execute if score temp int matches 3 run replaceitem entity @s armor.chest minecraft:iron_chestplate
execute if score temp int matches 4 run replaceitem entity @s armor.chest minecraft:golden_chestplate
execute if score temp int matches 5 run replaceitem entity @s armor.chest minecraft:diamond_chestplate
execute if score temp int matches 6 run replaceitem entity @s armor.chest minecraft:netherite_chestplate