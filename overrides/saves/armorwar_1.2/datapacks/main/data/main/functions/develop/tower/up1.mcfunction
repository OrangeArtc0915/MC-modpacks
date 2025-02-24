scoreboard players set temp int 0
execute as @e[sort=nearest,tag=map_towered,nbt={Color:1b}] store result score @s int run scoreboard players add temp int 1
execute as @e[sort=nearest,tag=map_towered,nbt={Color:1b}] run function main:develop/tower/sign
data modify block 0 0 0 Items[0].tag.making[1].tag.towerp set value []
execute as @e[sort=nearest,tag=map_towered,nbt={Color:1b}] run data modify block 0 0 0 Items[0].tag.making[1].tag.towerp append from entity @s Pos