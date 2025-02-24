scoreboard players operation coin int += @s coin_add
execute as @a[tag=decision_maker] at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 5 0.1
tellraw @a[tag=decision_maker] [{"text":""},{"text":"\ue001","font":"s3:default"},{"text":"+"},{"score":{"name":"@s","objective":"coin_add"}}]