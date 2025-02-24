execute if score skill_1 int matches 0 if score coin int matches ..184 run tellraw @a[tag=decision_maker] {"text":"§c金币不足！"}
execute if score skill_1 int matches 1 if score coin int matches ..184 run tellraw @a[tag=decision_maker] {"text":"§c金币不足！"}
execute if score skill_1 int matches 2 if score coin int matches ..184 run tellraw @a[tag=decision_maker] {"text":"§c金币不足！"}
execute if score skill_1 int matches 0 if score coin int matches ..184 as @a[tag=decision_maker] at @s run playsound minecraft:entity.villager.no player @s
execute if score skill_1 int matches 1 if score coin int matches ..184 as @a[tag=decision_maker] at @s run playsound minecraft:entity.villager.no player @s
execute if score skill_1 int matches 2 if score coin int matches ..184 as @a[tag=decision_maker] at @s run playsound minecraft:entity.villager.no player @s

execute if score skill_1 int matches 0 if score coin int matches 185.. run function play:tower/skills/14-up1-1
execute if score skill_1 int matches 1 if score coin int matches 185.. run function play:tower/skills/14-up1-2
execute if score skill_1 int matches 2 if score coin int matches 185.. run function play:tower/skills/14-up1-3