execute at @s run scoreboard players add @e[tag=monster,distance=..6.2] pdamage 520
execute at @s run playsound minecraft:entity.player.attack.sweep player @s ~ ~ ~ 1 0.5
execute at @s run summon minecraft:area_effect_cloud ~ ~0.5 ~ {Tags:["mpar_wave","mpar_hred_dust"],Duration:5}