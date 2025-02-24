scoreboard players set temp int 0
execute as @e[sort=nearest,tag=map_pathed,nbt={Color:4b}] store result score @s int run scoreboard players add temp int 1
execute as @e[sort=nearest,tag=map_pathed,nbt={Color:4b}] run function main:develop/path/sign
data modify block 0 0 0 Items[0].tag.making[4].tag.pathp set value []
execute as @e[sort=nearest,tag=map_pathed,nbt={Color:4b}] run data modify block 0 0 0 Items[0].tag.making[4].tag.pathp append from entity @s Pos