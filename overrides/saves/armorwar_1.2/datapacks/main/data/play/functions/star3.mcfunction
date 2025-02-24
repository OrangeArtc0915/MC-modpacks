execute if score g_hp int matches 18.. run scoreboard players add chal_stars int 1
execute if score g_hp int matches 18.. run title @a[tag=player] subtitle [{"text":"\ue003","font":"s3:default"},{"text":"\ue003","font":"s3:default"},{"text":"\ue003","font":"s3:default"}]
execute if score g_hp int matches 18.. as @a[tag=player] at @s run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2.0

execute as @e[tag=chal] run function play:chal/end