data remove storage temp block_store
execute if block ~ ~ ~ air run function s3:block_store/write/single/blocks/air
scoreboard players set # tmp 0
execute if block ~ ~ ~ air run scoreboard players set # tmp 1
execute if score # tmp matches 0 run function s3:block_store/write/single/others
data modify storage temp block_store.data set from block ~ ~ ~ {}
