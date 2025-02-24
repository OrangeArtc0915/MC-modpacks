scoreboard players enable @s spectate
scoreboard players add @s spectate_timer 1
gamemode spectator @s
execute if score @s spectate_timer > @s spectate at @s run spectate @e[limit=1,sort=random,distance=0.1..150,type=!minecraft:area_effect_cloud,tag=!tower_display,tag=!block_changer]
execute if score @s spectate_timer > @s spectate run scoreboard players set @s spectate_timer 0