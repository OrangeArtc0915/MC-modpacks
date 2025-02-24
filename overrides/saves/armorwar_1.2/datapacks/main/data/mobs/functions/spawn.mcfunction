tag @e remove result

execute store result score temp4 int run data get block 0 0 0 Items[0].tag.ctmp.type

execute if score temp4 int matches 3 run function mobs:mobs/3
execute if score temp4 int matches 4 run function mobs:mobs/4
execute if score temp4 int matches 5 run function mobs:mobs/5
execute if score temp4 int matches 6 run function mobs:mobs/6
execute if score temp4 int matches 7 run function mobs:mobs/7
execute if score temp4 int matches 8 run function mobs:mobs/8
execute if score temp4 int matches 9 run function mobs:mobs/9
execute if score temp4 int matches 10 run function mobs:mobs/10
execute if score temp4 int matches 11 run function mobs:mobs/11
execute if score temp4 int matches 15 run function mobs:mobs/15
execute if score temp4 int matches 16 run function mobs:mobs/16

scoreboard players operation @e[tag=result,limit=1] snos = @s snos
scoreboard players add @e[tag=result,limit=1] snos 1

execute unless data block 0 0 0 Items[0].tag.ctmp.spawn.poses unless data block 0 0 0 Items[0].tag.ctmp.spawn.pos run function mobs:pos

execute as @e[tag=stmp,limit=1] run function mobs:set
kill @e[tag=stmp1]
execute as @e[tag=stmp-1,limit=1] run function mobs:set1
tag @e remove stmp
tag @e remove stmp-1
kill @e[tag=stmp1]