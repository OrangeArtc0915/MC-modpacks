#飞行检查
execute as @e[tag=monster,tag=!fly_mob,tag=!boss] at @s unless block ~ ~-0.1 ~ air run scoreboard players set @s fly_check 0
execute as @e[tag=monster,tag=!fly_mob,tag=!boss] at @s if block ~ ~-0.1 ~ air run function play:mon/fly_check

#怪物
execute as @e[tag=monster,tag=!boss] run function play:mon/main1

#英雄
execute as @a[tag=hero,tag=!dead] at @s run function play:hr/main1

#特殊效果
execute as @e[tag=monster,limit=3,sort=random,scores={poison_times=1..}] at @s anchored eyes run function play:mon/poison

#移动检查
execute as @e[tag=monster,scores={speed=0,target=0,unmove=0},tag=!rattacking,tag=!attacking,tag=!boss] at @s run function play:mon/speed
scoreboard players reset play_main1 int
execute as @e[tag=monster,limit=5,tag=!boss] unless data entity @s ArmorItems[3].tag.path run kill @s

execute as @e[tag=built1] at @s run function play:tower/skills/main1

execute as @e[tag=soldier_point] unless score @s int matches 1.. run kill @s

#显示
bossbar set minecraft:game visible false
bossbar set minecraft:game visible true

#计时
scoreboard players add play_main2 int 1
execute if score play_main2 int matches 3.. run function play:main2