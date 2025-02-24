#技能
execute if score reinforce int matches 1.. run scoreboard players remove reinforce int 1
execute if score firerain int matches 1.. run scoreboard players remove firerain int 1


#英雄
effect give @a[tag=hero] minecraft:saturation 5 1 true
effect give @a[tag=hero] minecraft:resistance 5 5 true

scoreboard players remove @a[tag=hero,scores={CD0=1..}] CD0 1
scoreboard players remove @a[tag=hero,scores={CD1=1..}] CD1 1
scoreboard players remove @a[tag=hero,scores={CD2=1..}] CD2 1

#重置
scoreboard players set play_main2 int 0