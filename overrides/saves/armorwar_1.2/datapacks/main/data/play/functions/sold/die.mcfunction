kill @s
data modify entity @s Health set value 0.0f
tag @s remove soldier
tag @s remove mob_fighter
playsound minecraft:entity.iron_golem.repair player @a ~ ~ ~ 1 2