execute store result score temp int run data get block 0 0 0 Items[0].tag.ctmp.head
execute if score temp int matches 1 run replaceitem entity @s armor.head minecraft:leather_helmet
execute if score temp int matches 2 run replaceitem entity @s armor.head minecraft:chainmail_helmet
execute if score temp int matches 3 run replaceitem entity @s armor.head minecraft:iron_helmet
execute if score temp int matches 4 run replaceitem entity @s armor.head minecraft:golden_helmet
execute if score temp int matches 5 run replaceitem entity @s armor.head minecraft:diamond_helmet
execute if score temp int matches 6 run replaceitem entity @s armor.head minecraft:netherite_helmet
execute if data block 0 0 0 Items[0].tag.ctmp.headitem run data modify entity @s ArmorItems[3] set from block 0 0 0 Items[0].tag.ctmp.headitem
execute if data block 0 0 0 Items[0].tag.ctmp.headitem.tag.skill run function mobs:skill