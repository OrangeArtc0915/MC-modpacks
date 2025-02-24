execute store result score temp int run data get block 0 0 0 Items[0].tag.ctmp.foot
execute if score temp int matches 1 run replaceitem entity @s armor.feet minecraft:leather_boots
execute if score temp int matches 2 run replaceitem entity @s armor.feet minecraft:chainmail_boots
execute if score temp int matches 3 run replaceitem entity @s armor.feet minecraft:iron_boots
execute if score temp int matches 4 run replaceitem entity @s armor.feet minecraft:golden_boots
execute if score temp int matches 5 run replaceitem entity @s armor.feet minecraft:diamond_boots
execute if score temp int matches 6 run replaceitem entity @s armor.feet minecraft:netherite_boots