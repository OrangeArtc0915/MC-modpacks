summon item 180.5 50.00 29.5 {Item:{id:"minecraft:music_disc_13",Count:1b},Tags:["save_set3"],PickupDelay:32767s,Motion:[-0.35d,0.0d,0.0d],Age:5990}
execute as @a[tag=tmp] at @s run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 0.5
data modify block 0 0 0 Items[0].tag.ctmp set value {id:"minecraft:music_disc_13",Count:1b,tag:{HideFlags:63,CanPlaceOn:["minecraft:jukebox"],display:{Name:'{"text":""}',Lore:['{"text":"§7塞入唱片机加载"}']}},Slot:0b}
scoreboard players add #save_id save_id 1
tellraw @a[tag=tmp] [{"text":"§7<system> 您的存档<#save_"},{"score":{"name":"#save_id","objective":"save_id"},"color":"gray"},{"text":"§7>已导出,请妥善保管"}]
setblock 0 11 0 air
setblock 0 11 0 oak_sign{Text1:'[{"text":"#save_"},{"score":{"name":"#save_id","objective":"save_id"}}]'}
data modify block 0 0 0 Items[0].tag.ctmp.tag.display.Name set from block 0 11 0 Text1

data modify block 0 0 0 Items[0].tag.ctmp.tag.played set from block 0 0 0 Items[0].tag.played
data modify block 0 0 0 Items[0].tag.ctmp.tag.tree set from block 0 0 0 Items[0].tag.tree
data modify block 0 0 0 Items[0].tag.ctmp.tag.tree2 set from block 0 0 0 Items[0].tag.tree2
data modify block 0 0 0 Items[0].tag.ctmp.tag.tree3 set from block 0 0 0 Items[0].tag.tree3
data modify block 0 0 0 Items[0].tag.ctmp.tag.heroes set from block 0 0 0 Items[0].tag.heroes
execute store result block 0 0 0 Items[0].tag.ctmp.tag.stars int 1 run scoreboard players get stars int

setblock 0 11 0 air
setblock 0 11 0 oak_sign{Text1:'[{"score":{"name":"stars","objective":"int"},"italic":false,"color":"white"},{"text":"\\ue003","font":"s3:default","italic":false,"color":"white"}]'}
data modify block 0 0 0 Items[0].tag.ctmp.tag.display.Lore append from block 0 11 0 Text1
setblock 0 11 0 air
setblock 0 11 0 oak_sign{Text1:'{"nbt":"Items[0].tag.played[-1]","block":"0 0 0","italic":false,"color":"gray"}'}
data modify block 0 0 0 Items[0].tag.ctmp.tag.display.Lore append from block 0 11 0 Text1

execute positioned 179 49 29 run function main:insert_chest

scoreboard players set #out save_id 1