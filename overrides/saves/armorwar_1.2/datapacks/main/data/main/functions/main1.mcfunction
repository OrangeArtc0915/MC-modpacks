execute if entity @a[nbt={Inventory:[{Slot:-106b,tag:{back:true}}]}] run function main:back

scoreboard players add main2 timer 1
execute if score main2 timer >= 6 int run function main:main2
scoreboard players reset main1 timer

execute if entity @a[tag=inhall] run function main:hall

execute as @a[tag=developing,scores={drop_barrier=1..}] run function main:drop_barrier

execute as @a at @s if block ~ ~-1 ~ minecraft:beacon run tp @s 0 5 0

execute as @a[scores={rc=1..}] run function main:rc

scoreboard players remove @e[scores={killtime=1..}] killtime 1
execute as @e[tag=block_changer,scores={killtime=0}] at @s run function main:setblock
kill @e[scores={killtime=0}]
scoreboard players remove @e[scores={ctimer=1..}] ctimer 1

execute as @e[type=area_effect_cloud,tag=block_reserve] run function block_reserve:timer

execute as @e[tag=entity_block] run data modify entity @s Time set value 100

setblock 996 21 1001 minecraft:air
setblock 996 21 1001 minecraft:redstone_block