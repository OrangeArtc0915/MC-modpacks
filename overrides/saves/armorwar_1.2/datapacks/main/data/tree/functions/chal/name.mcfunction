setblock 0 11 0 air
setblock 0 11 0 oak_sign{Text1:'{"nbt":"Items[0].tag.tree3[0].name","block":"0 0 0"}'}
data modify entity @e[tag=tmp,limit=1] CustomName set from block 0 11 0 Text1
tag @s add dsp_nameed