tag @e remove result

execute store result score temp4 int run data get block 0 0 0 Items[0].tag.ctmp.type
execute if score turn int matches 0 run function mobs:mobs1/r0
execute if score turn int matches -1 run function mobs:mobs1/r1
execute if score turn int matches 1 run function mobs:mobs1/r2

scoreboard players operation @e[tag=result,limit=1] snos = @s snos
scoreboard players add @e[tag=result,limit=1] snos 1

execute as @e[tag=stmp,limit=1] run function mobs:set3
kill @e[tag=stmp1]
execute as @e[tag=stmp-1,limit=1] run function mobs:set1
tag @e remove stmp
tag @e remove stmp-1
kill @e[tag=stmp1]