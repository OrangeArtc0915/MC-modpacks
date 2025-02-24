data modify block 0 0 0 Items[0].tag.ctmp set from block 0 0 0 Items[0].tag.ai_pool[0]
execute if data block 0 0 0 Items[0].tag.ctmp{type:"reinforce"} run function play:ai/actions/reinforce
execute if data block 0 0 0 Items[0].tag.ctmp{type:"firerain"} run function play:ai/actions/firerain
execute if data block 0 0 0 Items[0].tag.ctmp{type:"new_tower"} run function play:ai/actions/new_tower
execute if data block 0 0 0 Items[0].tag.ctmp{type:"up_tower"} run function play:ai/actions/up_tower
execute if data block 0 0 0 Items[0].tag.ctmp{type:"skill_tower"} run function play:ai/actions/skill_tower