data modify block 0 0 0 Items[0].tag.ctmp set value {pos:[],tags:[],rotation:[]}
data modify block 0 0 0 Items[0].tag.ctmp.rotation set from entity @s Rotation
data modify block 0 0 0 Items[0].tag.ctmp.pos set from entity @s Pos
data modify block 0 0 0 Items[0].tag.ctmp.tags set from entity @s Tags
execute store result block 0 0 0 Items[0].tag.ctmp.grow_level int 1 run scoreboard players get @s grow_level
execute store result block 0 0 0 Items[0].tag.ctmp.root_main0 int 1 run scoreboard players get @s root_main0
execute store result block 0 0 0 Items[0].tag.ctmp.root_main1 int 1 run scoreboard players get @s root_main1
data modify block 0 0 0 Items[0].tag.tree append from block 0 0 0 Items[0].tag.ctmp