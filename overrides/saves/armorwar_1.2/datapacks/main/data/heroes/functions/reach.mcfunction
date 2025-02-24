tag @s add hero_reached
summon villager 0 11 0 {Invulnerable:1b,ActiveEffects:[{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: 2147483647, Id: 14b, Amplifier: 1b}],NoAI:1b,Silent:1b,Tags:["tmp","hero_set"]}
execute at @s run tp @e[tag=tmp,limit=1] ^1.0 ^ ^
execute store result score @e[tag=tmp,limit=1] hr run data get entity @s ArmorItems[3].tag.hr
tag @e remove tmp
execute at @s run summon area_effect_cloud ^1.0 ^1.0 ^ {Tags:["hero_set","tmp"],Duration:2147483647,CustomNameVisible:1b,CustomName:'{"text":"点此选择","color":"gold"}'}
execute store result score @e[tag=tmp,limit=1] hr run data get entity @s ArmorItems[3].tag.hr
tag @e remove tmp