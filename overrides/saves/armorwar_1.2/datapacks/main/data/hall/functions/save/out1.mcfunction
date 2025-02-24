data modify block 0 0 0 Items[0].tag.ctmp set value {id:"minecraft:music_disc_13",Count:1b,tag:{HideFlags:63,CanPlaceOn:["minecraft:jukebox"],display:{Name:'{"text":""}',Lore:['{"text":"§7塞入唱片机加载"}']}},Slot:0b}

data modify block 0 0 0 Items[0].tag.ctmp.tag.display.Name set from block 0 0 0 Items[0].tag.save_name
data modify block 0 0 0 Items[0].tag.ctmp.tag.played set from block 0 0 0 Items[0].tag.played
data modify block 0 0 0 Items[0].tag.ctmp.tag.tree set from block 0 0 0 Items[0].tag.tree
data modify block 0 0 0 Items[0].tag.ctmp.tag.tree2 set from block 0 0 0 Items[0].tag.tree2
data modify block 0 0 0 Items[0].tag.ctmp.tag.tree3 set from block 0 0 0 Items[0].tag.tree3
data modify block 0 0 0 Items[0].tag.ctmp.tag.heroes set from block 0 0 0 Items[0].tag.heroes
execute store result block 0 0 0 Items[0].tag.ctmp.tag.stars int 1 run scoreboard players get stars int

setblock 0 11 0 air
setblock 0 11 0 oak_sign{Text1:'[{"text":"\\ue003","font":"s3:default","italic":false,"color":"white"},{"font":"","score":{"name":"stars","objective":"int"},"italic":false,"color":"white"}]'}
data modify block 0 0 0 Items[0].tag.ctmp.tag.display.Lore append from block 0 11 0 Text1
setblock 0 11 0 air
setblock 0 11 0 oak_sign{Text1:'{"nbt":"Items[0].tag.played[-1]","block":"0 0 0","italic":false,"color":"white"}'}
data modify block 0 0 0 Items[0].tag.ctmp.tag.display.Lore append from block 0 11 0 Text1

execute positioned 179 49 29 run function main:insert_chest