scoreboard players remove #temp psp_id1 1
data modify storage psp:all temp1 append from storage psp:all temp[0]
data remove storage psp:all temp[0]
execute if score #temp psp_id1 matches 1.. run function psp:loop1