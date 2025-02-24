setblock 0 11 0 air
setblock 0 11 0 oak_sign{Text1:'{"interpret":"true","nbt":"Items[0].tag.ctmp.name","block":"0 0 0","font":"size:2x"}'}
data modify entity @s CustomNameVisible set value 1b
data modify entity @s CustomName set from block 0 11 0 Text1