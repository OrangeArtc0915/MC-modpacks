playsound minecraft:block.lever.click player @a[distance=..20] ~ ~ ~ 5 0.5
scoreboard players remove mobs_page int 1
execute store result score temp int run data get block 0 0 0 Items[0].tag.mobs
scoreboard players remove temp int 1
execute if score temp int matches -1 run scoreboard players set temp int 0
execute if score mobs_page int < 0 int run scoreboard players operation mobs_page int = temp int
function main:develop/mobs/kits
function main:develop/mobs/upd