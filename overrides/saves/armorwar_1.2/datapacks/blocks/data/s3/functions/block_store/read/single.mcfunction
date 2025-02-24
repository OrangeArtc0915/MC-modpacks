# {id:xx,state:{a:n,b:1}}
execute if data storage temp block_store{id:"minecraft:air"} run function s3:block_store/read/single/blocks/air
scoreboard players set # tmp 0
execute if data storage temp block_store{id:"minecraft:air"} run scoreboard players set # tmp 1
execute if score # tmp matches 0 run function s3:block_store/read/single/others
data modify block ~ ~ ~ {} merge from storage temp block_store.data
