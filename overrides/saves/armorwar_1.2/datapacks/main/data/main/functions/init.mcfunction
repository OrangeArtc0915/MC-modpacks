scoreboard players set #save_id save_id -1
data modify block 0 0 0 Items[0].tag.played set value []
function tree:refresh
data modify block 0 0 0 Items[0].tag.heroes set value [0,0,0,0,0,0,0,0]
scoreboard players set stars int 0