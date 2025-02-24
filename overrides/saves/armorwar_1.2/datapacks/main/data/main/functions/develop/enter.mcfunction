execute if entity @a[tag=developing] run tellraw @s {"text":"已有开发者开发中！","color":"red"}
execute unless entity @a[tag=developing] run function main:develop/enter3