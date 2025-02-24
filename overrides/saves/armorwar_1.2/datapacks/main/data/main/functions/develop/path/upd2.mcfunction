scoreboard players set temp int 0
execute as @e[sort=nearest,tag=map_pathed,nbt={Color:2b}] store result score @s int run scoreboard players add temp int 1
execute as @e[sort=nearest,tag=map_pathed,nbt={Color:2b}] run function main:develop/path/sign
data modify block 0 0 0 Items[0].tag.making[2].tag.pathp set value []
execute as @e[sort=nearest,tag=map_pathed,nbt={Color:2b}] run data modify block 0 0 0 Items[0].tag.making[2].tag.pathp append from entity @s Pos