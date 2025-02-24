scoreboard players set min int -50
scoreboard players set max int 550
function math:random
scoreboard players operation @e[tag=tmp,limit=1] pdamage += random int
execute as @e[tag=tmp,limit=1] at @s anchored eyes run particle minecraft:crit ^ ^ ^ 0.05 0.05 0.05 0.1 10 force @a
execute as @e[tag=tmp,limit=1] at @s anchored eyes run playsound minecraft:block.pumpkin.carve player @a ~ ~ ~ 1 0.5