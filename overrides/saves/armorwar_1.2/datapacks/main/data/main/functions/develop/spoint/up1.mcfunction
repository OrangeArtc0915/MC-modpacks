scoreboard players set temp int 0
execute as @e[sort=nearest,tag=map_spointed,nbt={Color:1b}] store result score @s int run scoreboard players add temp int 1
execute as @e[sort=nearest,tag=map_spointed,nbt={Color:1b}] run function main:develop/spoint/sign
data modify block 0 0 0 Items[0].tag.making[1].tag.spointp set value []
execute as @e[sort=nearest,tag=map_spointed,nbt={Color:1b}] run data modify block 0 0 0 Items[0].tag.making[1].tag.spointp append from entity @s Pos