scoreboard players set wave_waiting int 0
scoreboard players set wave_wait int 0
clear @a[tag=decision_maker] green_wool{item:next_wave}
data modify block 0 0 0 Items[0].tag.ctmp set from block 0 0 0 Items[0].tag.playing.waves[0].music_list
execute if data block 0 0 0 Items[0].tag.playing.waves[0].music_list as @a[tag=player,scores={music_box=1}] run function play:start-m

scoreboard players set monster_maxc int 0
summon item 0 0 0 {Item:{id:"minecraft:glass",Count:1b},Tags:["tmp"]}
data modify entity @e[tag=tmp,limit=1] Item.tag.tmp set from block 0 0 0 Items[0].tag.playing.waves[0].mob_types
execute store result score temp int run data get entity @e[tag=tmp,limit=1] Item.tag.tmp
execute as @e[tag=tmp] if score temp int matches 1.. run function play:wave_m/loop
kill @e[tag=tmp]

execute store result score monster_notice int run data get block 0 0 0 Items[0].tag.playing.waves[0].monster_notice
execute if score monster_notice int matches 1.. as @a[tag=player] run function notices:monster
execute if score monster_notice int matches 1.. as @a[tag=decision_maker] run function play:mon/notice

data remove block 0 0 0 Items[0].tag.playing.waves[0]

execute unless data block 0 0 0 Items[0].tag.playing.waves[0] run scoreboard players set game_end int 1