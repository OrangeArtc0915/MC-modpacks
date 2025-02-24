scoreboard players remove temp int 1

summon item 0 15 0 {Item:{id:"minecraft:glass",Count:64b},NoGravity:1b,Tags:["tmp1","wave_spawning"]}
data modify entity @e[tag=tmp1,limit=1] Item.tag.mob set from entity @s Item.tag.tmp[0]
execute unless data entity @e[tag=tmp1,limit=1] Item.tag.mob.entity.spec run data modify entity @e[tag=tmp1,limit=1] Item.tag.mob.entity.spec set value []
data modify entity @e[tag=tmp1,limit=1] Item.tag.mob.entity.spec append value "phb_visible"
execute if score temp int matches 0 run data modify entity @e[tag=tmp1,limit=1] Item.tag.mob.entity.spec append value "wave_mark"
tag @e remove tmp1


data remove entity @s Item.tag.tmp[0]
execute if score temp int matches 1.. run function play:wave_m/loop