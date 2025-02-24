execute if data block 0 0 0 Items[0].tag.ctmp.silent run data modify entity @s Silent set value 1b
execute if data block 0 0 0 Items[0].tag.ctmp.spawn.name run data modify entity @s CustomNameVisible set value 1b
execute if data block 0 0 0 Items[0].tag.ctmp.spawn.name run data modify entity @s CustomName set from block 0 0 0 Items[0].tag.ctmp.spawn.name
execute store result score @s d run data get block 0 0 0 Items[0].tag.ctmp.size[0] 100000
execute store result score @s h run data get block 0 0 0 Items[0].tag.ctmp.size[1] 100000
execute store result score @s l run data get block 0 0 0 Items[0].tag.ctmp.size[2] 100000

execute if data block 0 0 0 Items[0].tag.ctmp.hand0 run function mobs:hand0
execute if data block 0 0 0 Items[0].tag.ctmp.hand1 run function mobs:hand1
execute if data block 0 0 0 Items[0].tag.ctmp.head run function mobs:head
execute if data block 0 0 0 Items[0].tag.ctmp.chest run function mobs:chest
execute if data block 0 0 0 Items[0].tag.ctmp.leg run function mobs:leg
execute if data block 0 0 0 Items[0].tag.ctmp.foot run function mobs:foot



execute store result score temp int run data get block 0 0 0 Items[0].tag.ctmp.spec
execute if score temp int matches 1.. run function mobs:spec_loop

data modify entity @s PersistenceRequired set value 1b