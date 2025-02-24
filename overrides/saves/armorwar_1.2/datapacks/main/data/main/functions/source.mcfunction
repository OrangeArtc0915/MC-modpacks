#main:source

#选中介质
tag @e[distance=..10,tag=diele,tag=!dieled,limit=1] add tmp

#计算传递能量
execute store result score temp int if entity @e[tag=tmp]
scoreboard players set temp1 int 100
scoreboard players operation temp1 int /= temp int
scoreboard players operation @e[tag=tmp] energy = temp1 int

tag @e remove tmp