scoreboard players operation temp int = @s rigid_id
execute as @e[tag=rigid_link,tag=arm1] if score @s rigid_mo = temp int run tag @s add tmp4
execute as @e[tag=torch03] if score @s rigid_mo = @e[tag=tmp4,limit=1] rigid_id run tag @s add tmp5

execute unless entity @e[tag=tmp5] run summon armor_stand 0 11 0 {Marker:1b,Tags:["tmp","test5","torch1","torch03"],ArmorItems:[{},{},{},{id:"minecraft:torch",Count:1b}]}
execute as @e[tag=tmp,limit=1] run function rigid:link/set
scoreboard players operation @e[tag=tmp,limit=1] rigid_mo = @e[tag=test5,tag=arm1,limit=1] rigid_id
scoreboard players set @e[tag=tmp,limit=1] u 0
scoreboard players set @e[tag=tmp,limit=1] v 250
scoreboard players set @e[tag=tmp,limit=1] w 120
tag @e remove tmp

execute unless entity @e[tag=tmp5] at @s run playsound minecraft:item.crossbow.loading_end player @a ~ ~ ~ 4.0 1.2

tag @e remove tmp4
tag @e remove tmp5