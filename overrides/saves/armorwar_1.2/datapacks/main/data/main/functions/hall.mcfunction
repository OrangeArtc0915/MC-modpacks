execute as @a[x=178,y=49,z=27,distance=..5,tag=developer] at @s if block ~ ~-1 ~ minecraft:smooth_stone_slab run function main:develop/enter
execute as @a[x=196,y=49,z=26,distance=..3] at @s if block ~ ~-0.5 ~ minecraft:smooth_stone_slab run function maps:enter
execute as @a[x=190,y=49,z=18,distance=..3] at @s if block ~ ~-0.5 ~ minecraft:smooth_stone_slab run function heroes:enter
execute as @a[x=187,y=50,z=30,distance=..3] at @s if block ~ ~-0.5 ~ minecraft:smooth_stone_slab run function tree:enter
execute as @a[x=-9,y=16,z=-91,distance=..5] at @s if block ~ ~ ~ minecraft:heavy_weighted_pressure_plate run function main:parkour_give
effect give @a[tag=inhall] minecraft:saturation 1 1 true
effect give @a[tag=inhall] minecraft:resistance 1 5 true
execute if score hall_set int matches 0 run function main:hall_set

execute as @a[tag=inhall,tag=!achievement_parkour] at @s positioned ~ 74 ~ if entity @s[distance=..0.1] run function main:achievements/parkour

scoreboard players enable @a[tag=achievement_parkour] parkour
tp @a[scores={parkour=1..}] -4 12 -94 0.0 0.0
scoreboard players reset @a[scores={parkour=1..}] parkour