scoreboard players add @e[tag=boss_set,tag=saw] rotation_0 350000
scoreboard players set @s rigid_move 1
execute if score @s timer0 matches 50..62 run scoreboard players add @e[tag=tmp,limit=1] pdamage 350
execute if score @s timer0 matches 65.. run scoreboard players set @s timer0 25