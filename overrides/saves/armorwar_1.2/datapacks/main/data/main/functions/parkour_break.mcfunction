scoreboard players operation parkour_min int < @s parkour_timer
tellraw @a [{"text":"玩家","bold":"true"},{"selector":"@s"},{"text":"创造了新的跑酷历史记录！"}]
setblock 0 10 0 air
tag @s add tmp
setblock 0 10 0 oak_sign{Text1:'{"selector":"@a[tag=tmp]"}'}
data modify block 0 0 0 Items[0].tag.parkour_min set from block 0 10 0 Text1
tag @s remove tmp