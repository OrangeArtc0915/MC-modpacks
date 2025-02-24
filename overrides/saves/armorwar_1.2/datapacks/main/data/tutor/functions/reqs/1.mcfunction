scoreboard players add @s tutor_timer 1
execute if score @s shift matches 1.. run data remove storage psp:result self.tutor[0].req[0]
execute if score @s tutor_timer matches 35.. run data remove storage psp:result self.tutor[0].req[0]
execute if score @s tutor_timer matches 35.. run scoreboard players set @s tutor_timer 1