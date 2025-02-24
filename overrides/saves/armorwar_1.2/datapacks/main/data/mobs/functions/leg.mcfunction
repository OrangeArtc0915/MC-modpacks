execute store result score temp int run data get block 0 0 0 Items[0].tag.ctmp.leg
execute if score temp int matches 1 run replaceitem entity @s armor.legs minecraft:leather_leggings
execute if score temp int matches 2 run replaceitem entity @s armor.legs minecraft:chainmail_leggings
execute if score temp int matches 3 run replaceitem entity @s armor.legs minecraft:iron_leggings
execute if score temp int matches 4 run replaceitem entity @s armor.legs minecraft:golden_leggings
execute if score temp int matches 5 run replaceitem entity @s armor.legs minecraft:diamond_leggings
execute if score temp int matches 6 run replaceitem entity @s armor.legs minecraft:netherite_leggings