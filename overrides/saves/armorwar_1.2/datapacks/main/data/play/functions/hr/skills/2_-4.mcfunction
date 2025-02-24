scoreboard players set min int -50
scoreboard players set max int 230
function math:random
scoreboard players operation @e[tag=tmp,limit=1] pdamage += random int
scoreboard players set @e[tag=tmp,limit=1] poison_times 5
scoreboard players set @e[tag=tmp,limit=1] poison_damage 150
execute as @e[tag=tmp,limit=1] at @s anchored eyes run particle dust 0.001 0.5 0.0 1.2 ^ ^ ^ 0.05 0.05 0.05 0.1 10 force @a
execute as @e[tag=tmp,limit=1] at @s anchored eyes run playsound minecraft:block.pumpkin.carve player @a ~ ~ ~ 1 0.5