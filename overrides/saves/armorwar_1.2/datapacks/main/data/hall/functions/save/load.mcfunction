execute if score #out save_id matches 0 run function hall:save/out1

tellraw @s [{"text":"§7<system> 存档<"},{"nbt":"RecordItem.tag.display.Name","block":"~ ~ ~","interpret":true,"color":"gray"},{"text":"§7>已载入"}]

data modify block 0 0 0 Items[0].tag.save_name set from block ~ ~ ~ RecordItem.tag.display.Name
data modify block 0 0 0 Items[0].tag.played set from block ~ ~ ~ RecordItem.tag.played
data modify block 0 0 0 Items[0].tag.tree set from block ~ ~ ~ RecordItem.tag.tree
data modify block 0 0 0 Items[0].tag.tree2 set from block ~ ~ ~ RecordItem.tag.tree2
data modify block 0 0 0 Items[0].tag.tree3 set from block ~ ~ ~ RecordItem.tag.tree3
data modify block 0 0 0 Items[0].tag.heroes set from block ~ ~ ~ RecordItem.tag.heroes
execute store result score stars int run data get block ~ ~ ~ RecordItem.tag.stars

setblock ~ ~ ~ air
setblock ~ ~ ~ jukebox
stopsound @a[tag=inhall]
title @a[tag=inhall] actionbar {"text":" "}

scoreboard players set #out save_id 0