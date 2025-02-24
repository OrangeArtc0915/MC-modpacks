scoreboard players set @s vist_self 0
scoreboard players set @s vist_enmy 0

tellraw @s {"text":"你已成为决策者","bold":"true"}
tag @s add fly
gamemode creative @s

summon item 0.0 11.0 0.0 {Tags:["scheduler.item","tmp"],Item:{id:"minecraft:glass",Count:1b,tag:{time:5,uuid:[],command:"execute as @a[tag=scheduler.mark] at @s run tp @s ~ ~20 ~"}}}
data modify entity @e[tag=tmp,limit=1] Item.tag.uuid set from entity @s UUID
tag @e remove tmp

team join monster @s
scoreboard players enable @s spectate
scoreboard players set @s spectate 0
scoreboard players set @s tower_gui -1
scoreboard players set @s open_book 0

execute if score @s tutor1 matches 1.. if data block 0 0 0 Items[0].tag.playing.tag{name:"关卡1-1"} run function tutor:load1
scoreboard players set @s tutor0 -1