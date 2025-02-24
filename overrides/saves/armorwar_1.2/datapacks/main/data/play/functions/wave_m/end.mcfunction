execute unless score wave_waiting int matches 1 run replaceitem entity @a[tag=decision_maker] hotbar.7 carrot_on_a_stick{CustomModelData:8800001,ui:1b,display:{Name:'{"text":"§c下一波"}'},item:next_wave}
scoreboard players set wave_waiting int 1
execute unless entity @a[tag=decision_maker] run function play:wave_m/end1
scoreboard players add wave_wait int 1
execute if score wave_wait int matches 500.. if score wave_waiting int matches 1 run function play:wave_m/end1