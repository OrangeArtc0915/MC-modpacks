scoreboard players set temp int 1
execute as @e[sort=nearest,tag=map_ended,nbt={Color:0b}] store result score @s int run scoreboard players remove temp int 1
execute as @e[sort=nearest,tag=map_ended,nbt={Color:0b}] run function main:develop/end/sign
data modify block 0 0 0 Items[0].tag.making[0].tag.endp set value []
execute as @e[sort=nearest,tag=map_ended,nbt={Color:0b}] run data modify block 0 0 0 Items[0].tag.making[0].tag.endp append from entity @s Pos