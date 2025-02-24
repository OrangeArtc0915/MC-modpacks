execute if score g_hp int matches 5.. run scoreboard players add chal_stars int 1
schedule function play:star3 1s
execute if score g_hp int matches 5.. run title @a[tag=player] subtitle [{"text":"\ue003","font":"s3:default"},{"text":"\ue003","font":"s3:default"}]
execute if score g_hp int matches 5.. as @a[tag=player] at @s run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 1.2