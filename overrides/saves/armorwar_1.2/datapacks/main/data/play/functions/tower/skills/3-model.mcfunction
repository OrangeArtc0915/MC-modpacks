summon armor_stand ~ ~2.8 ~ {Marker:1b,ShowArms:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:prismarine_wall",Count:1b}],Tags:["build_model","3-circle","tower_display","tmp"]}
summon armor_stand ~ ~2.8 ~ {Marker:1b,ShowArms:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:prismarine_wall",Count:1b}],Tags:["build_model","3-circle","tower_display","tmp"]}
summon armor_stand ~ ~2.8 ~ {Marker:1b,ShowArms:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:prismarine_wall",Count:1b}],Tags:["build_model","3-circle","tower_display","tmp"]}
summon armor_stand ~ ~2.8 ~ {Marker:1b,ShowArms:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:prismarine_wall",Count:1b}],Tags:["build_model","3-circle","tower_display","tmp"]}
summon armor_stand ~ ~2.8 ~ {Marker:1b,ShowArms:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:prismarine_wall",Count:1b}],Tags:["build_model","3-circle","tower_display","tmp"]}
summon armor_stand ~ ~2.8 ~ {Marker:1b,ShowArms:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:prismarine_wall",Count:1b}],Tags:["build_model","3-circle","tower_display","tmp"]}
summon armor_stand ~ ~2.8 ~ {Marker:1b,ShowArms:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:prismarine_wall",Count:1b}],Tags:["build_model","3-circle","tower_display","tmp"]}
summon armor_stand ~ ~2.8 ~ {Marker:1b,ShowArms:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:prismarine_wall",Count:1b}],Tags:["build_model","3-circle","tmp"]}
execute as @e[tag=tmp] at @s run tp @s ~ 0.0 ~
tp @e[tag=tmp] ~ ~2.8 ~
execute as @e[tag=tmp] store result score @s x0 run data get entity @s Pos[0] 100
execute as @e[tag=tmp] store result score @s y0 run data get entity @s Pos[1] 100
execute as @e[tag=tmp] store result score @s z0 run data get entity @s Pos[2] 100
scoreboard players set @e[tag=tmp,limit=8] phi 0
scoreboard players set @e[tag=tmp,limit=7] phi 45
scoreboard players set @e[tag=tmp,limit=6] phi 90
scoreboard players set @e[tag=tmp,limit=5] phi 135
scoreboard players set @e[tag=tmp,limit=4] phi -45
scoreboard players set @e[tag=tmp,limit=3] phi -90
scoreboard players set @e[tag=tmp,limit=2] phi -135
scoreboard players set @e[tag=tmp,limit=1] phi 180
scoreboard players operation @e[tag=tmp] int = @s int
scoreboard players set @e[tag=tmp] killtime 10
tag @e remove tmp