scoreboard players set stempn int 0
execute if score stempa int matches 0 run scoreboard players set stempn int 1

summon item ~ 180.0 ~ {Tags:["stmp1"],Item:{id:"minecraft:glass",Count:1b,tag:{bit0:[0,0,0,0,0,1]}}}

scoreboard players operation input int = stempx1 int
scoreboard players operation input int -= stempx2 int
scoreboard players operation stempy2 int -= stempy1 int
scoreboard players operation stempy2 int *= stempn int
scoreboard players operation input int += stempy2 int
execute as @e[tag=stmp1] run function math:operation/bit0/break
execute store result score input int run scoreboard players operation stempn int *= stempb int
scoreboard players operation input int -= stempa int
execute as @e[tag=stmp1] run function math:operation/bit0/devide
execute as @e[tag=stmp1] run function math:operation/bit0/0-2
scoreboard players operation stempk int = result int

kill @e[tag=stmp1]