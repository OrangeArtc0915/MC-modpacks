setblock 0 11 0 air
execute store result score temp int run data get block 0 0 0 Items[0].tag.tree3[0].towers
setblock 0 11 0 oak_sign{Text1:'[{"text":"塔数不多于"},{"score":{"name":"temp","objective":"int"}}]'}
data modify entity @e[tag=tmp,limit=1] CustomName set from block 0 11 0 Text1
tag @s add dsp_towersed