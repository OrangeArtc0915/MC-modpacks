scoreboard players set @s rigid_state 2

kill @e[tag=boss_set,tag=leg_bottom0]
kill @e[tag=boss_set,tag=foot0]
kill @e[tag=boss_set,tag=leg_bottom1]
kill @e[tag=boss_set,tag=foot1]
kill @e[tag=boss_set,tag=saw]
kill @e[tag=boss_set,tag=zomb]
tag @e[tag=boss_set] add fly_mob

execute at @s run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 999 2

summon item 0.0 11.0 0.0 {NoGravity:1b,Tags:["scheduler.item","tmp"],Item:{id:"minecraft:glass",Count:1b,tag:{time:8,uuid:[],command:"execute as @e[tag=scheduler.mark] at @s run function mobs:boss1/actions/s_fly1"}}}
data modify entity @e[tag=tmp,limit=1] Item.tag.uuid set from entity @s UUID
tag @e remove tmp

scoreboard players set @s change_reach 12