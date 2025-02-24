execute store result score @s grow_level run data get block 0 0 0 Items[0].tag.ctmp[0].grow_level
execute store result score @s root_main0 run data get block 0 0 0 Items[0].tag.ctmp[0].root_main0
execute store result score @s root_main1 run data get block 0 0 0 Items[0].tag.ctmp[0].root_main1
data modify entity @s Pos set from block 0 0 0 Items[0].tag.ctmp[0].pos
data modify entity @s Rotation set from block 0 0 0 Items[0].tag.ctmp[0].rotation
data modify entity @s Tags set from block 0 0 0 Items[0].tag.ctmp[0].tags
tag @s add result