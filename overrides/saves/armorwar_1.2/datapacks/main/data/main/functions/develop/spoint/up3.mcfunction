scoreboard players set temp int 0
execute as @e[sort=nearest,tag=map_spointed,nbt={Color:3b}] store result score @s int run scoreboard players add temp int 1
execute as @e[sort=nearest,tag=map_spointed,nbt={Color:3b}] run function main:develop/spoint/sign
data modify block 0 0 0 Items[0].tag.making[3].tag.spointp set value []
execute as @e[sort=nearest,tag=map_spointed,nbt={Color:3b}] run data modify block 0 0 0 Items[0].tag.making[3].tag.spointp append from entity @s Pos