gamemode spectator @s
execute at @s run spectate @e[limit=1,sort=random,distance=0.1..150,type=!minecraft:area_effect_cloud,tag=!tower_display,tag=!block_changer]
scoreboard players set @s spectate -2
scoreboard players enable @s spectate