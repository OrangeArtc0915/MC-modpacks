function s3:block_store/write/single
data modify storage temp blocks[-1][-1] append from storage temp block_store
scoreboard players remove dx tmp 1
execute if score dx tmp matches 0.. positioned ~1 ~ ~ run function s3:block_store/write/cube/x_loop
# say x