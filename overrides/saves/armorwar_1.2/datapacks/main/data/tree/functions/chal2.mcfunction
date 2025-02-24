execute at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 0.9
execute at @s run function main:firework_shoot
execute at @s run function main:firework_shoot
execute at @s run function main:firework_shoot
execute at @s run function main:firework_shoot
execute at @s run function main:firework_shoot
scoreboard players set grow int 1
data remove block 0 0 0 Items[0].tag.tree3[0]

scoreboard players set if_chal int 0
execute store result score if_chal int run data get block 0 0 0 Items[0].tag.tree3[0].if_chal

clear @a[tag=treeing] carrot_on_a_stick{waiting:chal}