#玩家物品栏
execute as @a[tag=player] run function play:clear

#计时
scoreboard players add play_main1 int 1
execute if score play_main1 int matches 10.. run function play:main1

#怪物波生成
execute if score wave_time int matches 1.. run function play:wave_m/timer
execute if score wave_time int matches 0 unless score game_end1 int matches 1 run function play:wave_m/main

#英雄
execute as @a[tag=hero,tag=!dead] run function play:hr/main
execute as @a[tag=hero,tag=dead] run function play:hr/dead

#箭矢
execute as @e[type=#minecraft:arrows,nbt=!{inGround:1b}] at @s if entity @e[tag=monster,distance=..7.0,tag=!boss] run function play:arrow_test

#怪物/士兵
execute as @e[tag=monster,tag=!boss] run function play:mon/main
execute as @e[tag=soldier,tag=!hero] run function play:sold/main
execute if entity @e[tag=mob_skill] run function play:mob_skills/main

#设施
execute as @e[tag=play_set] run function play:sets/main

#决策者
execute as @a[tag=decision_maker,gamemode=spectator] run function play:dm/sp
execute as @a[tag=decision_maker,gamemode=!spectator,tag=!selecting_tower2] run function play:tower/select2
execute as @a[tag=selecting_tower2] run function play:tower/select3
execute as @a[tag=decision_maker] run function play:field


#技能
execute as @e[tag=a_skill] at @s run function play:tower/skills/a_skill
execute as @e[tag=skill] run function play:skills/main

#防御塔
execute as @e[tag=builder,scores={stimer=5..}] at @s run function play:tower/build/building
execute if entity @e[tag=built1] run function play:tower/skills/main

#游戏结束
execute if score test int matches 0 if score game_end int matches 1 unless entity @e[tag=monster] unless entity @e[tag=wave_spawning] if score g_hp int matches 1.. run function play:end
execute if score test int matches 0 unless entity @a[tag=player] run function play:end1
execute if score test int matches 0 if score g_hp int matches -1000..0 run function play:end2
execute if score test int matches -1 run function play:end1


#显示
execute unless score boss_fighting int matches 1 run bossbar set minecraft:game name ["",{"text":"\ue000","font":"s3:default"},{"score":{"name":"g_hp","objective":"int"}},{"text":"   "},{"text":"\ue001","font":"s3:default"},{"score":{"name":"coin","objective":"int"}},{"text":"   "},{"text":"\ue002","font":"s3:default"},{"score":{"name":"wave","objective":"int"}},{"text":"/"},{"score":{"name":"wavec","objective":"int"}}]


execute unless score boss_fighting int matches 1 store result bossbar minecraft:game value store result score temp int store result score monster_count int if entity @e[tag=monster]
execute unless score boss_fighting int matches 1 store result bossbar minecraft:game max run scoreboard players operation monster_maxc int > temp int

#技能
execute as @e[tag=firerain_area,type=area_effect_cloud] at @s run function play:skills/firerain/area