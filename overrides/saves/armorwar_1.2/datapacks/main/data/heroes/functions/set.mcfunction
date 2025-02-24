kill @e[tag=hero_set]

execute store result score hero_0 int run data get block 0 0 0 Items[0].tag.heroes[0]
execute store result score hero_1 int run data get block 0 0 0 Items[0].tag.heroes[1]
execute store result score hero_2 int run data get block 0 0 0 Items[0].tag.heroes[2]
execute store result score hero_3 int run data get block 0 0 0 Items[0].tag.heroes[3]
execute store result score hero_4 int run data get block 0 0 0 Items[0].tag.heroes[4]
execute store result score hero_5 int run data get block 0 0 0 Items[0].tag.heroes[5]
execute store result score hero_6 int run data get block 0 0 0 Items[0].tag.heroes[6]
execute store result score hero_7 int run data get block 0 0 0 Items[0].tag.heroes[7]

tag @e remove result
execute if score hero_0 int matches 1 run summon minecraft:armor_stand 0 11 0 {DisabledSlots:16191,Invulnerable:1b,Tags:["hero_set","hero_as","result"],Rotation: [90.0f, 0.0f], HandItems: [{id: "minecraft:iron_sword", Count: 1b, tag: {Damage: 0,Enchantments:[{id:"minecraft:sharpness",lvl:1s}]}}, {id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3001}}], ArmorItems: [{id: "minecraft:iron_boots", Count: 1b, tag: {Damage: 0}}, {id: "minecraft:iron_leggings", Count: 1b, tag: {Damage: 0}}, {id: "minecraft:iron_chestplate", Count: 1b, tag: {Damage: 0}}, {id: "minecraft:golden_helmet", Count: 1b, tag: {Damage: 0,hr:1}}],NoGravity:1b}
execute if score hero_0 int matches 0 run summon minecraft:armor_stand 0 11 0 {Tags:["hero_set","result"],Small:1b,Invulnerable:1b,CustomName:'{"text":"未解锁","color":"gray"}',CustomNameVisible:1b,NoGravity:1b}
tp @e[tag=result,limit=1] -148 74.5 -13

tag @e remove result
execute if score hero_1 int matches 1 run summon minecraft:armor_stand 0 11 0 {DisabledSlots:16191,Invulnerable:1b,Tags:["hero_set","hero_as","result"],Rotation: [270.0f, 0.0f], HandItems: [{id: "minecraft:bow", Count: 1b, tag: {Damage: 0,Enchantments:[{id:"minecraft:sharpness",lvl:1s}]}}, {id:"minecraft:tipped_arrow",Count:1b,tag:{Potion:"minecraft:strong_poison"}}], ArmorItems: [{id: "minecraft:leather_boots", Count: 1b, tag: {Damage: 0,display:{color:1275422}}}, {id: "minecraft:leather_leggings", Count: 1b, tag: {Damage: 0,display:{color:1275422}}}, {id: "minecraft:leather_chestplate", Count: 1b, tag: {Damage: 0,display:{color:1275422}}}, {id: "minecraft:leather_helmet", Count: 1b, tag: {Damage: 0,hr:2,display:{color:1275422}}}],NoGravity:1b}
execute if score hero_1 int matches 0 run summon minecraft:armor_stand 0 11 0 {Tags:["hero_set","result"],Small:1b,Invulnerable:1b,CustomName:'{"text":"未解锁","color":"gray"}',CustomNameVisible:1b,NoGravity:1b}
tp @e[tag=result,limit=1] -159 74.5 -13

summon item 0.0 11.0 0.0 {Tags:["scheduler.item"],Item:{id:"minecraft:glass",Count:1b,tag:{time:2,uuid:[],command:"execute as @e[tag=hero_as] at @s run tp @s ~ ~0.01 ~"}}}