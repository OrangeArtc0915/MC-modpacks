setblock 0 11 0 air
execute store result score temp int run data get block 0 0 0 Items[0].tag.tree3[0].hero
execute if score temp int matches 0 run setblock 0 11 0 oak_sign{Text1:'[{"text":"无英雄"}]'}
execute if score temp int matches 1 run setblock 0 11 0 oak_sign{Text1:'[{"text":"要有英雄"}]'}
data modify entity @e[tag=tmp,limit=1] CustomName set from block 0 11 0 Text1
tag @s add dsp_heroed