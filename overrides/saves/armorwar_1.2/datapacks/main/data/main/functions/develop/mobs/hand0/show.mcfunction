#召唤临时运算储存器
summon item 0.0 0.0 0.0 {Item:{id:"minecraft:glass",Count:1b},Tags:["tmp"]}

#得到项
scoreboard players operation @e[tag=tmp,limit=1] list_input = mobs_page int
data modify entity @e[tag=tmp,limit=1] Item.tag.input set from block 0 0 0 Items[0].tag.mobs
execute as @e[tag=tmp] run function list_tool:set

#输出
setblock 0 10 0 air
setblock 0 10 0 oak_sign{Text1:'{"nbt":"Item.tag.result.entity.hand0","entity":"@e[tag=tmp,limit=1]"}'}
execute as @e[tag=hand0_show] run data modify entity @s CustomName set from block 0 10 0 Text1
execute store result score temp int run data get entity @e[tag=tmp,limit=1] Item.tag.result.entity.hand0

execute if score temp int matches 0 as @e[tag=hand0_show] run data modify entity @s Item.id set value "minecraft:glass"
execute if score temp int matches 1 as @e[tag=hand0_show] run data modify entity @s Item.id set value "minecraft:wooden_sword"
execute if score temp int matches 2 as @e[tag=hand0_show] run data modify entity @s Item.id set value "minecraft:stone_sword"
execute if score temp int matches 3 as @e[tag=hand0_show] run data modify entity @s Item.id set value "minecraft:iron_sword"
execute if score temp int matches 4 as @e[tag=hand0_show] run data modify entity @s Item.id set value "minecraft:golden_sword"
execute if score temp int matches 5 as @e[tag=hand0_show] run data modify entity @s Item.id set value "minecraft:diamond_sword"
execute if score temp int matches 6 as @e[tag=hand0_show] run data modify entity @s Item.id set value "minecraft:netherite_sword"
execute if score temp int matches 7 as @e[tag=hand0_show] run data modify entity @s Item.id set value "minecraft:bow"
execute if score temp int matches 8 as @e[tag=hand0_show] run data modify entity @s Item.id set value "minecraft:arrow"
execute if score temp int matches 9 as @e[tag=hand0_show] run data modify entity @s Item.id set value "minecraft:spectral_arrow"
execute if score temp int matches 10 as @e[tag=hand0_show] run data modify entity @s Item.id set value "minecraft:tipped_arrow"
execute if score temp int matches 10 as @e[tag=hand0_show] run data modify entity @s Item.tag.Potion set value "minecraft:harming"
execute if score temp int matches 11 as @e[tag=hand0_show] run data modify entity @s Item.id set value "minecraft:crossbow"
execute if score temp int matches 12 as @e[tag=hand0_show] run data modify entity @s Item.id set value "minecraft:trident"
execute if score temp int matches 13 as @e[tag=hand0_show] run data modify entity @s Item.id set value "minecraft:wooden_axe"
execute if score temp int matches 14 as @e[tag=hand0_show] run data modify entity @s Item.id set value "minecraft:stone_axe"
execute if score temp int matches 15 as @e[tag=hand0_show] run data modify entity @s Item.id set value "minecraft:iron_axe"
execute if score temp int matches 16 as @e[tag=hand0_show] run data modify entity @s Item.id set value "minecraft:golden_axe"
execute if score temp int matches 17 as @e[tag=hand0_show] run data modify entity @s Item.id set value "minecraft:diamond_axe"
execute if score temp int matches 18 as @e[tag=hand0_show] run data modify entity @s Item.id set value "minecraft:netherite_axe"
execute if score temp int matches 19 as @e[tag=hand0_show] run data modify entity @s Item.id set value "minecraft:shield"
execute if score temp int matches 20 as @e[tag=hand0_show] run data modify entity @s Item.id set value "minecraft:fishing_rod"
execute if score temp int matches 21 as @e[tag=hand0_show] run data modify entity @s Item.id set value "minecraft:flint_and_steel"
execute if score temp int matches 22 as @e[tag=hand0_show] run data modify entity @s Item.id set value "minecraft:tnt"
execute if score temp int matches 23 as @e[tag=hand0_show] run data modify entity @s Item.id set value "minecraft:fire_charge"
execute if score temp int matches 24 as @e[tag=hand0_show] run data modify entity @s Item.id set value "minecraft:firework_rocket"
execute if score temp int matches 25 as @e[tag=hand0_show] run data modify entity @s Item.id set value "minecraft:stick"
execute if score temp int matches 26 as @e[tag=hand0_show] run data modify entity @s Item.id set value "minecraft:totem_of_undying"
execute if score temp int matches 27 as @e[tag=hand0_show] run data modify entity @s Item.id set value "minecraft:lingering_potion"
execute if score temp int matches 27 as @e[tag=hand0_show] run data modify entity @s Item.tag.Potion set value "minecraft:harming"
execute if score temp int matches 28 as @e[tag=hand0_show] run data modify entity @s Item.id set value "minecraft:end_crystal"
execute if score temp int matches 29 as @e[tag=hand0_show] run data modify entity @s Item.id set value "minecraft:lead"
execute if score temp int matches 30 as @e[tag=hand0_show] run data modify entity @s Item.id set value "minecraft:shears"
execute if score temp int matches 31 as @e[tag=hand0_show] run data modify entity @s Item.id set value "minecraft:poppy"
execute if score temp int matches 32 as @e[tag=hand0_show] run data modify entity @s Item.id set value "minecraft:iron_pickaxe"
execute if score temp int matches 33 as @e[tag=hand0_show] run data modify entity @s Item.id set value "minecraft:redstone_torch"


#清除临时运算储存器
kill @e[tag=tmp]