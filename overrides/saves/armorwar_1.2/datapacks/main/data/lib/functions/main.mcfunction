execute unless entity @e[tag=dsp_tower] run function lib:tower_su
execute unless entity @e[tag=dsp_skill] run function lib:skill_su
execute unless entity @e[tag=dsp_enemy] run function lib:enemy_su
execute unless entity @e[tag=dsp_chara] run function lib:chara_su

execute as @a[tag=libing] run function lib:gui
execute unless entity @a[tag=libing] run function lib:end