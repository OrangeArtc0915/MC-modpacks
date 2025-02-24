scoreboard players operation temp int = @s int
execute as @e[tag=build_model,tag=!soldier] if score @s int = temp int run kill @s
execute as @e[tag=block_changer] if score @s int = temp int run kill @s

scoreboard players operation temp1 int = @s build

data modify block 0 0 0 Items[0].tag.ttmp set from block 0 0 0 Items[0].tag.towers
scoreboard players remove temp1 int 1
execute if score temp1 int matches 1.. run function play:tower/build/loop
execute store result score @s value run data get block 0 0 0 Items[0].tag.ttmp[0].value
execute store result score @s radius run data get block 0 0 0 Items[0].tag.ttmp[0].radius
execute store result score @s soldier_CD run data get block 0 0 0 Items[0].tag.ttmp[0].soldier_CD
execute store result score @s CD0 run data get block 0 0 0 Items[0].tag.ttmp[0].CD[0]
execute store result score @s CD1 run data get block 0 0 0 Items[0].tag.ttmp[0].CD[1]
execute store result score @s CD2 run data get block 0 0 0 Items[0].tag.ttmp[0].CD[2]
execute if score @s skill_0 matches 0 run scoreboard players set @s CD3 0
execute if score @s skill_1 matches 0 run scoreboard players set @s CD4 0
execute if score @s skill_2 matches 0 run scoreboard players set @s CD5 0

execute if score @s build matches 1 run function play:tower/arrow/set1
execute if score @s build matches 2 run function play:tower/gun/set1
execute if score @s build matches 3 run function play:tower/magic/set1
execute if score @s build matches 4 run function play:tower/barrack/set1
execute if score @s build matches 5 run function play:tower/arrow1/set1
execute if score @s build matches 6 run function play:tower/gun1/set1
execute if score @s build matches 7 run function play:tower/magic1/set1
execute if score @s build matches 8 run function play:tower/barrack1/set1
execute if score @s build matches 9 run function play:tower/arrow2/set1
execute if score @s build matches 10 run function play:tower/gun2/set1
execute if score @s build matches 11 run function play:tower/magic2/set1
execute if score @s build matches 12 run function play:tower/barrack2/set1
execute if score @s build matches 13 run function play:tower/arrow3/set1
execute if score @s build matches 14 run function play:tower/gun3/set1
execute if score @s build matches 15 run function play:tower/magic3/set1
execute if score @s build matches 16 run function play:tower/barrack3/set1