execute if score lib_chara_p0 int matches 0 as @e[tag=dsp_chara] run data modify entity @s ArmorItems set value [{id: "minecraft:iron_boots", Count: 1b, tag: {Damage: 0}}, {id: "minecraft:iron_leggings", Count: 1b, tag: {Damage: 0}}, {id: "minecraft:iron_chestplate", Count: 1b, tag: {Damage: 0}}, {id: "minecraft:golden_helmet", Count: 1b, tag: {Damage: 0, hr: 1}}]
execute if score lib_chara_p0 int matches 0 as @e[tag=dsp_chara] run data modify entity @s HandItems set value [{id: "minecraft:iron_sword", Count: 1b, tag: {Damage: 0, Enchantments: [{lvl: 1s, id: "minecraft:sharpness"}]}}, {id: "minecraft:carrot_on_a_stick", Count: 1b, tag: {CustomModelData: 3001, Damage: 0}}]

execute if score lib_chara_p0 int matches 1 as @e[tag=dsp_chara] run data modify entity @s ArmorItems set value [{id: "minecraft:leather_boots", Count: 1b, tag: {Damage: 0, display: {color: 1275422}}}, {id: "minecraft:leather_leggings", Count: 1b, tag: {Damage: 0, display: {color: 1275422}}}, {id: "minecraft:leather_chestplate", Count: 1b, tag: {Damage: 0, display: {color: 1275422}}}, {id: "minecraft:leather_helmet", Count: 1b, tag: {hr: 2, Damage: 0, display: {color: 1275422}}}]
execute if score lib_chara_p0 int matches 1 as @e[tag=dsp_chara] run data modify entity @s HandItems set value [{id: "minecraft:bow", Count: 1b, tag: {Damage: 0, Enchantments: [{lvl: 1s, id: "minecraft:sharpness"}]}}, {id: "minecraft:tipped_arrow", Count: 1b, tag: {Potion: "minecraft:strong_poison"}}]

execute if score lib_chara_p0 int matches 0 run data modify entity @e[tag=lib_chara_name,limit=1] CustomName set value '{"text":"英雄0"}'
execute if score lib_chara_p0 int matches 1 run data modify entity @e[tag=lib_chara_name,limit=1] CustomName set value '{"text":"英雄1"}'

execute if score lib_chara_p0 int matches 0 run data modify block 0 0 0 Items[0].tag.ctmp set from block 0 0 0 Items[0].tag.chara_pages[0]
execute if score lib_chara_p0 int matches 1 run data modify block 0 0 0 Items[0].tag.ctmp set from block 0 0 0 Items[0].tag.chara_pages[1]

execute store result score lib_chara_m1 int run data get block 0 0 0 Items[0].tag.ctmp

setblock 0 11 0 air
setblock 0 11 0 oak_sign{Text1:'[{"text":"操作"},{"score":{"name":"lib_chara_p1","objective":"int"}}]'}
data modify entity @e[tag=lib_chara_skil,limit=1] CustomName set from block 0 11 0 Text1

scoreboard players operation loop int = lib_chara_p1 int
execute if score loop int matches 1.. run function lib:chara/loop

data modify entity @e[tag=lib_chara_text,limit=1] CustomName set from block 0 0 0 Items[0].tag.ctmp[0].text
data modify entity @e[tag=lib_chara_item,limit=1] Item.tag.CustomModelData set from block 0 0 0 Items[0].tag.ctmp[0].cmd