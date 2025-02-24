tag @e remove scheduler.mark
setblock 0 183 0 stone
setblock 0 183 0 command_block{auto:1b}
data modify block 0 183 0 Command set from entity @s Item.tag.command
execute as @e run function scheduler:store_uuid
execute store result score uuid0 schedulerVar run data get entity @s Item.tag.uuid[0]
execute store result score uuid1 schedulerVar run data get entity @s Item.tag.uuid[1]
execute store result score uuid2 schedulerVar run data get entity @s Item.tag.uuid[2]
execute store result score uuid3 schedulerVar run data get entity @s Item.tag.uuid[3]
execute as @e if score @s schedulerUUID0 = uuid0 schedulerVar if score @s schedulerUUID1 = uuid1 schedulerVar if score @s schedulerUUID2 = uuid2 schedulerVar if score @s schedulerUUID3 = uuid3 schedulerVar run tag @s add scheduler.mark
scoreboard players set occupied schedulerVar 1

tag @s remove scheduler.item
scoreboard players set @s killtime 2