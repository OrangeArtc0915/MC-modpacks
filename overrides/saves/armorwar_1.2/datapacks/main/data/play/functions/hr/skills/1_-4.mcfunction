scoreboard players set min int -20
scoreboard players set max int 500
function math:random
scoreboard players operation @e[tag=tmp,limit=1] pdamage += random int
execute as @e[tag=tmp,limit=1] at @s anchored eyes run particle minecraft:crit ^ ^ ^ 0.05 0.05 0.05 0.1 10 force @a
stopsound @s * minecraft:entity.player.attack.sweep
execute as @e[tag=tmp,limit=1] at @s anchored eyes run playsound minecraft:block.pumpkin.carve player @a ~ ~ ~ 1 0.5
execute at @s anchored eyes run summon minecraft:area_effect_cloud ^ ^ ^0.2 {Tags:["mpar_hred_dust"]}