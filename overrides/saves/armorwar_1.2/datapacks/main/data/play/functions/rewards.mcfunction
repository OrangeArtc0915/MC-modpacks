execute if data block 0 0 0 Items[0].tag.playing.rewards[0].msg run tellraw @a {"text":" "}
execute if data block 0 0 0 Items[0].tag.playing.rewards[0].msg run tellraw @a {"nbt":"Items[0].tag.playing.rewards[0].msg","block":"0 0 0","interpret":"true"}

data modify block 0 0 0 Items[0].tag.ctmp set value {type:"1"}
data modify block 0 0 0 Items[0].tag.ctmp.type set from block 0 0 0 Items[0].tag.playing.rewards[0].type
execute if data block 0 0 0 Items[0].tag.ctmp{type:"hero"} run function play:reward_hero

execute if data block 0 0 0 Items[0].tag.ctmp{type:"tower"} run scoreboard players set reward_tower int 1
execute if data block 0 0 0 Items[0].tag.ctmp{type:"hero"} run scoreboard players set reward_hero int 1

scoreboard players remove temp int 1
data remove block 0 0 0 Items[0].tag.playing.rewards[0]
execute if score temp int matches 1.. run function play:rewards