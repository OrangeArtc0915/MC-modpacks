# 向scheduler物品传参
data modify entity @s Item.tag.uuid set from storage music:nbt uuid
execute store result entity @s Item.tag.time int 1 run scoreboard players get tempm int
tag @s remove music.scheduler.0