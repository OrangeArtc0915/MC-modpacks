#main:diele

#计算能量衰减
scoreboard players operation temp int = @s energy
scoreboard players operation temp int *= 9 int
scoreboard players operation temp int /= 10 int
scoreboard players set @s energy 0
#如果该介质是中继器，加强能量信号
execute if entity @s[tag=repeat] run scoreboard players set temp int 100

#能量传递
scoreboard players set temp2 int 0
execute as @e[distance=..10,tag=diele,tag=!dieled,limit=1] run function main:diele1
scoreboard players operation temp int /= temp2 int
scoreboard players operation @e[tag=tmp] energy = temp int



tag @e remove tmp