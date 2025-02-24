execute store result score #temp psp_id1 run scoreboard players operation #temp psp_id0 = @s psp_id
scoreboard players operation #temp psp_id0 %= 10 psp_main
execute store result score #temp1 psp_id1 run scoreboard players operation #temp psp_id1 /= 10 psp_main

execute if score #temp psp_id0 matches 0 run data modify storage psp:all temp set from storage psp:all 0
execute if score #temp psp_id0 matches 1 run data modify storage psp:all temp set from storage psp:all 1
execute if score #temp psp_id0 matches 2 run data modify storage psp:all temp set from storage psp:all 2
execute if score #temp psp_id0 matches 3 run data modify storage psp:all temp set from storage psp:all 3
execute if score #temp psp_id0 matches 4 run data modify storage psp:all temp set from storage psp:all 4
execute if score #temp psp_id0 matches 5 run data modify storage psp:all temp set from storage psp:all 5
execute if score #temp psp_id0 matches 6 run data modify storage psp:all temp set from storage psp:all 6
execute if score #temp psp_id0 matches 7 run data modify storage psp:all temp set from storage psp:all 7
execute if score #temp psp_id0 matches 8 run data modify storage psp:all temp set from storage psp:all 8
execute if score #temp psp_id0 matches 9 run data modify storage psp:all temp set from storage psp:all 9
data modify storage psp:all temp1 set value []

execute if score #temp psp_id1 matches 1.. run function psp:loop1
data modify storage psp:all temp[0] set from storage psp:result self
execute if score #temp1 psp_id1 matches 1.. run function psp:loop2

execute if score #temp psp_id0 matches 0 run data modify storage psp:all 0 set from storage psp:all temp
execute if score #temp psp_id0 matches 1 run data modify storage psp:all 1 set from storage psp:all temp
execute if score #temp psp_id0 matches 2 run data modify storage psp:all 2 set from storage psp:all temp
execute if score #temp psp_id0 matches 3 run data modify storage psp:all 3 set from storage psp:all temp
execute if score #temp psp_id0 matches 4 run data modify storage psp:all 4 set from storage psp:all temp
execute if score #temp psp_id0 matches 5 run data modify storage psp:all 5 set from storage psp:all temp
execute if score #temp psp_id0 matches 6 run data modify storage psp:all 6 set from storage psp:all temp
execute if score #temp psp_id0 matches 7 run data modify storage psp:all 7 set from storage psp:all temp
execute if score #temp psp_id0 matches 8 run data modify storage psp:all 8 set from storage psp:all temp
execute if score #temp psp_id0 matches 9 run data modify storage psp:all 9 set from storage psp:all temp