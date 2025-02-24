execute if score skill_0 int matches 0 if score coin int matches ..349 run tellraw @a[tag=decision_maker] {"text":"§c金币不足！"}
execute if score skill_0 int matches 1 if score coin int matches ..199 run tellraw @a[tag=decision_maker] {"text":"§c金币不足！"}
execute if score skill_0 int matches 2 if score coin int matches ..199 run tellraw @a[tag=decision_maker] {"text":"§c金币不足！"}
execute if score skill_0 int matches 0 if score coin int matches ..349 as @a[tag=decision_maker] at @s run playsound minecraft:entity.villager.no player @s
execute if score skill_0 int matches 1 if score coin int matches ..199 as @a[tag=decision_maker] at @s run playsound minecraft:entity.villager.no player @s
execute if score skill_0 int matches 2 if score coin int matches ..199 as @a[tag=decision_maker] at @s run playsound minecraft:entity.villager.no player @s


execute if score skill_0 int matches 0 if score coin int matches 350.. run function play:tower/skills/15-up0-1
execute if score skill_0 int matches 1 if score coin int matches 200.. run function play:tower/skills/15-up0-2
execute if score skill_0 int matches 2 if score coin int matches 200.. run function play:tower/skills/15-up0-3