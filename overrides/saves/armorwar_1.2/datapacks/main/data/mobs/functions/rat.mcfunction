execute store result score @s if_rat run data get block 0 0 0 Items[0].tag.ctmp.if_rat
execute store result score @s rat_dis run data get block 0 0 0 Items[0].tag.ctmp.rat_dis
execute store result score @s rat_cd run data get block 0 0 0 Items[0].tag.ctmp.rat_cd
execute if entity @s[nbt={HandItems:[{id:"minecraft:bow"}]}] run tag @s add arrow_shooter
execute if entity @s[nbt={HandItems:[{id:"minecraft:crossbow"}]}] run tag @s add arrow_shooter
execute if entity @s[nbt={HandItems:[{id:"minecraft:stone"}]}] run tag @s add stone_shooter