execute if score temp int matches 0 run data modify block 0 0 0 Items[0].tag.ctmp set from block 0 0 0 Items[0].tag.making[0]
execute if score temp int matches 1 run data modify block 0 0 0 Items[0].tag.ctmp set from block 0 0 0 Items[0].tag.making[1]
execute if score temp int matches 2 run data modify block 0 0 0 Items[0].tag.ctmp set from block 0 0 0 Items[0].tag.making[2]
execute if score temp int matches 3 run data modify block 0 0 0 Items[0].tag.ctmp set from block 0 0 0 Items[0].tag.making[3]
execute if score temp int matches 4 run data modify block 0 0 0 Items[0].tag.ctmp set from block 0 0 0 Items[0].tag.making[4]
execute if score temp int matches 5 run data modify block 0 0 0 Items[0].tag.ctmp set from block 0 0 0 Items[0].tag.making[5]
execute if score temp int matches 6 run data modify block 0 0 0 Items[0].tag.ctmp set from block 0 0 0 Items[0].tag.making[6]
data modify block 0 0 0 Items[0].tag.ctmp.tag merge from block 0 0 0 Items[0].tag.ctmp

forceload add -23 75

scoreboard players set slot int 27
execute unless data block -23 60 75 Items[{Slot:26b}] run scoreboard players set slot int 26
execute unless data block -23 60 75 Items[{Slot:25b}] run scoreboard players set slot int 25
execute unless data block -23 60 75 Items[{Slot:24b}] run scoreboard players set slot int 24
execute unless data block -23 60 75 Items[{Slot:23b}] run scoreboard players set slot int 23
execute unless data block -23 60 75 Items[{Slot:22b}] run scoreboard players set slot int 22
execute unless data block -23 60 75 Items[{Slot:21b}] run scoreboard players set slot int 21
execute unless data block -23 60 75 Items[{Slot:20b}] run scoreboard players set slot int 20
execute unless data block -23 60 75 Items[{Slot:19b}] run scoreboard players set slot int 19
execute unless data block -23 60 75 Items[{Slot:18b}] run scoreboard players set slot int 18
execute unless data block -23 60 75 Items[{Slot:17b}] run scoreboard players set slot int 17
execute unless data block -23 60 75 Items[{Slot:16b}] run scoreboard players set slot int 16
execute unless data block -23 60 75 Items[{Slot:15b}] run scoreboard players set slot int 15
execute unless data block -23 60 75 Items[{Slot:14b}] run scoreboard players set slot int 14
execute unless data block -23 60 75 Items[{Slot:13b}] run scoreboard players set slot int 13
execute unless data block -23 60 75 Items[{Slot:12b}] run scoreboard players set slot int 12
execute unless data block -23 60 75 Items[{Slot:11b}] run scoreboard players set slot int 11
execute unless data block -23 60 75 Items[{Slot:10b}] run scoreboard players set slot int 10
execute unless data block -23 60 75 Items[{Slot:9b}] run scoreboard players set slot int 9
execute unless data block -23 60 75 Items[{Slot:8b}] run scoreboard players set slot int 8
execute unless data block -23 60 75 Items[{Slot:7b}] run scoreboard players set slot int 7
execute unless data block -23 60 75 Items[{Slot:6b}] run scoreboard players set slot int 6
execute unless data block -23 60 75 Items[{Slot:5b}] run scoreboard players set slot int 5
execute unless data block -23 60 75 Items[{Slot:4b}] run scoreboard players set slot int 4
execute unless data block -23 60 75 Items[{Slot:3b}] run scoreboard players set slot int 3
execute unless data block -23 60 75 Items[{Slot:2b}] run scoreboard players set slot int 2
execute unless data block -23 60 75 Items[{Slot:1b}] run scoreboard players set slot int 1
execute unless data block -23 60 75 Items[{Slot:0b}] run scoreboard players set slot int 0

execute store result block 0 0 0 Items[0].tag.ctmp.Slot byte 1 run scoreboard players get slot int
execute if score slot int matches 0..26 run data modify block -23 60 75 Items append from block 0 0 0 Items[0].tag.ctmp

execute if score slot int matches 0..26 run function main:develop/delete