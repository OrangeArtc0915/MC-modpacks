tp @e[tag=dsp_enemy] 0 -1000 0
scoreboard players set @e[tag=dsp_enemy] killtime 1

execute if score lib_enemy_p0 int matches 0 run data modify block 0 0 0 Items[0].tag.ctmp set from block 0 0 0 Items[0].tag.enemy_pages[0]
execute if score lib_enemy_p0 int matches 1 run data modify block 0 0 0 Items[0].tag.ctmp set from block 0 0 0 Items[0].tag.enemy_pages[1]
execute if score lib_enemy_p0 int matches 2 run data modify block 0 0 0 Items[0].tag.ctmp set from block 0 0 0 Items[0].tag.enemy_pages[2]
execute if score lib_enemy_p0 int matches 3 run data modify block 0 0 0 Items[0].tag.ctmp set from block 0 0 0 Items[0].tag.enemy_pages[3]
execute if score lib_enemy_p0 int matches 4 run data modify block 0 0 0 Items[0].tag.ctmp set from block 0 0 0 Items[0].tag.enemy_pages[4]

execute if score lib_enemy_p0 int matches 0 run data modify entity @e[tag=lib_enemy_type,limit=1] CustomName set value '{"text":"type:army"}'
execute if score lib_enemy_p0 int matches 1 run data modify entity @e[tag=lib_enemy_type,limit=1] CustomName set value '{"text":"type:tank"}'
execute if score lib_enemy_p0 int matches 2 run data modify entity @e[tag=lib_enemy_type,limit=1] CustomName set value '{"text":"type:raider"}'
execute if score lib_enemy_p0 int matches 3 run data modify entity @e[tag=lib_enemy_type,limit=1] CustomName set value '{"text":"type:shooter"}'
execute if score lib_enemy_p0 int matches 4 run data modify entity @e[tag=lib_enemy_type,limit=1] CustomName set value '{"text":"type:sforce"}'

execute if score lib_enemy_p1 int matches 0 store result score loop int run data get block 0 0 0 Items[0].tag.ctmp[0]
execute if score lib_enemy_p1 int matches 1 store result score loop int run data get block 0 0 0 Items[0].tag.ctmp[1]
execute if score lib_enemy_p1 int matches 2 store result score loop int run data get block 0 0 0 Items[0].tag.ctmp[2]
execute if score lib_enemy_p1 int matches 3 store result score loop int run data get block 0 0 0 Items[0].tag.ctmp[3]

data modify block 0 0 0 Items[0].tag.ctmp set from block 0 0 0 Items[0].tag.mobs
scoreboard players remove loop int 1
execute if score loop int matches 1.. run function lib:enemy/loop

data modify entity @e[tag=lib_enemy_name,limit=1] CustomName set from block 0 0 0 Items[0].tag.ctmp[0].id
data modify block 0 0 0 Items[0].tag.ctmp set from block 0 0 0 Items[0].tag.ctmp[0].entity

setblock 0 11 0 air
setblock 0 11 0 oak_sign{Text1:'[{"text":"§7血量:"},{"nbt":"Items[0].tag.ctmp.mhp","block":"0 0 0","color":"red"},{"text":" §7护甲:"},{"nbt":"Items[0].tag.ctmp.dp","block":"0 0 0","color":"yellow"},{"text":" §7魔抗:"},{"nbt":"Items[0].tag.ctmp.mp","block":"0 0 0","color":"aqua"}]'}
data modify entity @e[tag=lib_enemy_line0,limit=1] CustomName set from block 0 11 0 Text1
setblock 0 11 0 air
setblock 0 11 0 oak_sign{Text1:'[{"text":"§7速度:"},{"nbt":"Items[0].tag.ctmp.sp","block":"0 0 0","color":"red"},{"text":" §7攻击:"},{"nbt":"Items[0].tag.ctmp.at","block":"0 0 0","color":"yellow"},{"text":" §7价值:"},{"nbt":"Items[0].tag.ctmp.rew","block":"0 0 0","color":"aqua"}]'}
data modify entity @e[tag=lib_enemy_line1,limit=1] CustomName set from block 0 11 0 Text1

execute positioned -134.0 72.0 -18.5 run function lib:enemy/spawn
data modify entity @e[tag=result,limit=1] Silent set value 1b
data modify entity @e[tag=result,limit=1] Invulnerable set value 1b
data modify entity @e[tag=result,limit=1] Tags set value ["lib_set","lib_enemy","dsp_enemy"]