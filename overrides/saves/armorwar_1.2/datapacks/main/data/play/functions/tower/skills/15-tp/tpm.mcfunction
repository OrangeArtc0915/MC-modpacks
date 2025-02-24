tag @s add monster_tpm
summon item ~ ~0.2 ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:8598023}},PickupDelay:32767s,Tags:["tmp","15-mc"],NoGravity:1b}
scoreboard players set @e[tag=tmp,limit=1] killtime 5
tag @e remove tmp