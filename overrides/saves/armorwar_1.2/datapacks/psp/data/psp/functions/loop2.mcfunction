scoreboard players remove #temp1 psp_id1 1
data modify storage psp:all temp prepend from storage psp:all temp1[-1]
execute if score #temp1 psp_id1 matches 1.. run function psp:loop2