scoreboard players remove @s CD 1

execute if score @s CD matches 0 run function items:v1/shoot

scoreboard players remove @s[tag=rocket_v1,tag=await] roll 50000
execute as @s[tag=rocket_v1,tag=lanuchced] run function items:v1/lanuched
execute as @s[tag=rocket_v1,tag=rotating] run function items:v1/rotating
execute as @s[tag=rocket_v1,tag=targeted] run function items:v1/targeted
execute as @s[tag=rocket_v1,tag=explode] at @s run function items:v1/explode
execute if score @s CD matches ..-100 unless entity @s[tag=targeted] at @s if entity @e[tag=monster] run function items:v1/target