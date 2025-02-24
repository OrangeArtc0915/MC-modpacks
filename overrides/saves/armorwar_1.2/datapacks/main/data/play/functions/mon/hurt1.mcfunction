execute store result score temp0 int run data get entity @s ActiveEffects[{Id:31b,ShowIcon:0b}].Duration
execute store result score temp1 int run data get entity @s ActiveEffects[{Id:31b,ShowIcon:1b}].Duration
scoreboard players operation @s pdamage += temp0 int
scoreboard players operation @s mdamage += temp1 int
effect clear @s minecraft:bad_omen