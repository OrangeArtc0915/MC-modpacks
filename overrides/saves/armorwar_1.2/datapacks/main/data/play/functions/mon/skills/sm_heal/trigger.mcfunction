playsound minecraft:entity.evoker.prepare_summon player @a ~ ~ ~ 2.0 1.5
particle minecraft:witch ^-0.5 ^2.5 ^0.7 0.2 0.2 0.2 0 25 force @a
execute as @e[tag=monster,distance=..4.5] at @s run function play:mon/skills/sm_heal/heal
scoreboard players set @s timer0 0