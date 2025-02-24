setblock 0 11 0 air
execute store result score temp int run data get block 0 0 0 Items[0].tag.tree3[0].tower_type
execute if score temp int matches 0 run setblock 0 11 0 oak_sign{Text1:'[{"text":"只建兵营"}]'}
execute if score temp int matches 1 run setblock 0 11 0 oak_sign{Text1:'[{"text":"只建箭塔"}]'}
execute if score temp int matches 2 run setblock 0 11 0 oak_sign{Text1:'[{"text":"只建炮塔"}]'}
execute if score temp int matches 3 run setblock 0 11 0 oak_sign{Text1:'[{"text":"只建魔法塔"}]'}
data modify entity @e[tag=tmp,limit=1] CustomName set from block 0 11 0 Text1
tag @s add dsp_towerted