execute if score coin int matches 270.. as @e[tag=map_tower,scores={result=1},limit=1] at @s run function play:tower/build/remove2
scoreboard players set build int 15
scoreboard players set temp int 1
execute store result score buildx int run data get entity @e[tag=map_tower,scores={result=1},limit=1] Pos[0] 10
execute store result score buildy int run data get entity @e[tag=map_tower,scores={result=1},limit=1] Pos[1] 10
execute store result score buildz int run data get entity @e[tag=map_tower,scores={result=1},limit=1] Pos[2] 10
tag @e[tag=map_tower,scores={result=1},limit=1] add built0
execute if entity @e[tag=map_tower,tag=built0,scores={result=1}] if score coin int matches 270.. run function play:tower/build
execute if entity @e[tag=map_tower,tag=built0,scores={result=1}] unless score coin int matches 270.. at @s run playsound minecraft:entity.villager.no player @s
execute if entity @e[tag=map_tower,tag=built0,scores={result=1}] unless score coin int matches 270.. run tellraw @s {"text":"§c金币不足"}
execute if score coin int matches 270.. run tag @e[tag=built0] add built
execute if entity @e[tag=map_tower,tag=built0,scores={result=1}] if score coin int matches 270.. run scoreboard players remove coin int 270
tag @e remove built0
scoreboard players reset @e[tag=built] result