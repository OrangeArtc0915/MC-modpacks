execute as @e[tag=result,limit=1] at @s anchored eyes run summon area_effect_cloud ^ ^ ^0.5 {Duration:2147483647,Tags:["map_set","tmp5","map_name"]}
setblock 0 11 0 air
setblock 0 11 0 oak_sign{Text1:'{"interpret":"true","nbt":"Items[0].tag.ctmp.name","block":"0 0 0","font":"size:2x"}'}
data modify entity @e[tag=tmp5,limit=1] CustomNameVisible set value 1b
data modify entity @e[tag=tmp5,limit=1] CustomName set from block 0 11 0 Text1
tag @e remove tmp5