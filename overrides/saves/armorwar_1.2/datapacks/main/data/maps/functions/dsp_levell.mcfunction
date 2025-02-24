execute store success score temp7 int run data modify block 0 0 0 Items[0].tag.ttmp[0] set from entity @s Item.tag.name
execute if score temp7 int matches 0 store result score star_temp int run data get block 0 0 0 Items[0].tag.ctmp[0]

data remove block 0 0 0 Items[0].tag.ctmp[0]
data remove block 0 0 0 Items[0].tag.ttmp[0]
scoreboard players remove temp int 1
execute if score temp int matches 1.. run function maps:dsp_levell