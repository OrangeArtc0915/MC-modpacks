setblock 0 10 0 air
setblock 0 10 0 oak_sign{Text1:'[{"text":"wave"},{"score":{"name":"waves_page","objective":"int"}}]'}
execute as @e[tag=waves_show] run data modify entity @s CustomName set from block 0 10 0 Text1