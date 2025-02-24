scoreboard players add chal_stars int 1
schedule function play:star2 1s
title @a[tag=player] subtitle {"text":"\ue003","font":"s3:default"}
execute as @a[tag=player] at @s run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 0.8