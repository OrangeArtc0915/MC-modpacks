scoreboard players set temp int 0
execute as @e[sort=nearest,tag=map_towered,nbt={Color:5b}] store result score @s int run scoreboard players add temp int 1
execute as @e[sort=nearest,tag=map_towered,nbt={Color:5b}] run function main:develop/tower/sign
data modify block 0 0 0 Items[0].tag.making[5].tag.towerp set value []
execute as @e[sort=nearest,tag=map_towered,nbt={Color:5b}] run data modify block 0 0 0 Items[0].tag.making[5].tag.towerp append from entity @s Pos