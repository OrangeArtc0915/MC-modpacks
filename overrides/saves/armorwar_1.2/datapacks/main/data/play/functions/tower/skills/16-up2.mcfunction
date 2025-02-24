execute if score skill_2 int matches 0 if score coin int matches ..249 run tellraw @a[tag=decision_maker] {"text":"§c金币不足！"}
execute if score skill_2 int matches 1 if score coin int matches ..149 run tellraw @a[tag=decision_maker] {"text":"§c金币不足！"}
execute if score skill_2 int matches 2 if score coin int matches ..149 run tellraw @a[tag=decision_maker] {"text":"§c金币不足！"}
execute if score skill_2 int matches 0 if score coin int matches ..249 as @a[tag=decision_maker] at @s run playsound minecraft:entity.villager.no player @s
execute if score skill_2 int matches 1 if score coin int matches ..149 as @a[tag=decision_maker] at @s run playsound minecraft:entity.villager.no player @s
execute if score skill_2 int matches 2 if score coin int matches ..149 as @a[tag=decision_maker] at @s run playsound minecraft:entity.villager.no player @s


execute if score skill_2 int matches 0 if score coin int matches 250.. run function play:tower/skills/16-up2-1
execute if score skill_2 int matches 1 if score coin int matches 150.. run function play:tower/skills/16-up2-2
execute if score skill_2 int matches 2 if score coin int matches 150.. run function play:tower/skills/16-up2-3