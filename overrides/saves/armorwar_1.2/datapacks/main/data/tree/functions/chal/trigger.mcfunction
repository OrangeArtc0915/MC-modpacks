execute store result entity @s Pos[0] double 0.0001 run scoreboard players get @s x
execute store result entity @s Pos[1] double 0.0001 run scoreboard players remove @s y 5000
execute store result entity @s Pos[2] double 0.0001 run scoreboard players get @s z

execute at @s run summon armor_stand ~ ~-10.0 ~ {Tags:["tmp","dsp_chal"],CustomNameVisible:1b,Marker:1b}

scoreboard players set @s int1 0
execute if data block 0 0 0 Items[0].tag.tree3[0].stars unless entity @s[tag=dsp_starsed] run scoreboard players set @s int1 5
execute if data block 0 0 0 Items[0].tag.tree3[0].hero unless entity @s[tag=dsp_heroed] run scoreboard players set @s int1 4
execute if data block 0 0 0 Items[0].tag.tree3[0].tower_type unless entity @s[tag=dsp_towerted] run scoreboard players set @s int1 3
execute if data block 0 0 0 Items[0].tag.tree3[0].towers unless entity @s[tag=dsp_towersed] run scoreboard players set @s int1 2
execute if data block 0 0 0 Items[0].tag.tree3[0].name unless entity @s[tag=dsp_nameed] run scoreboard players set @s int1 1
data modify entity @e[tag=tmp,limit=1] CustomName set value '{"text":""}'
execute if score @s int1 matches 0 run kill @s
execute if score @s int1 matches 1 run function tree:chal/name
execute if score @s int1 matches 2 run function tree:chal/towers
execute if score @s int1 matches 3 run function tree:chal/tower_type
execute if score @s int1 matches 4 run function tree:chal/hero
execute if score @s int1 matches 5 run function tree:chal/stars
execute if score @s int1 matches 1.. at @s run playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 5 1.2
execute if score @s int1 matches 1.. at @s run tp @e[tag=tmp,limit=1] ~ ~-0.2 ~
execute as @e[tag=tmp,limit=1] at @s run tp @s ~ ~ ~ ~ ~

tag @e remove tmp

tp @s ~ ~ ~