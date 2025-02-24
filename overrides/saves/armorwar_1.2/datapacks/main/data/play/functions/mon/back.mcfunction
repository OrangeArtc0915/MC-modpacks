execute if entity @s[tag=monster_tpm] at @s run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 3.0

scoreboard players set result int 0
data modify entity @e[tag=math_marker,limit=1] Pos set from entity @s ArmorItems[3].tag.pos0
execute at @s if entity @e[tag=math_marker,limit=1,distance=12.0..] run scoreboard players set result int 1

execute if score result int matches 1 run data modify entity @s Pos set from entity @s ArmorItems[3].tag.pos0
execute if score result int matches 0 run data modify entity @s Pos set from entity @s ArmorItems[3].tag.pos1

execute if score result int matches 1 run data modify entity @s ArmorItems[3].tag.path set from entity @s ArmorItems[3].tag.tp_path0
execute if score result int matches 0 run data modify entity @s ArmorItems[3].tag.path set from entity @s ArmorItems[3].tag.tp_path1

execute if data entity @s ArmorItems[3].tag.path[0] at @s run function play:mon/facing1

tag @s remove a_skill
tag @s remove monster_tp