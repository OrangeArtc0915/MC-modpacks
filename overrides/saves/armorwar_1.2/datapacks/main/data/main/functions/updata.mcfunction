#重置数据
scoreboard players set stars int 0
function tree:refresh
data modify block 0 0 0 Items[0].tag.heroes[0] set value 0
data modify block 0 0 0 Items[0].tag.heroes[1] set value 0
data modify block 0 0 0 Items[0].tag.played set value []
scoreboard players set #save_id save_id 0