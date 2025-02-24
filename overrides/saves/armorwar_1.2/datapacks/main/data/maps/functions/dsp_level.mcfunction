scoreboard players set star_temp int 0

data modify block 0 0 0 Items[0].tag.ctmp set from block 0 0 0 Items[0].tag.stars
data modify block 0 0 0 Items[0].tag.ttmp set from block 0 0 0 Items[0].tag.played
execute store result score temp int run data get block 0 0 0 Items[0].tag.ttmp
execute if score temp int matches 1.. run function maps:dsp_levell

title @a[tag=tmp,limit=1] actionbar [{"text":" "},{"text":"\ue003","font":"s3:default"},{"text":" "},{"score":{"name":"star_temp","objective":"int"}}]