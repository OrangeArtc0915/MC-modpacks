data modify storage temp block_store.id set value "minecraft:tube_coral"
execute if block ~ ~ ~ minecraft:tube_coral[waterlogged=true] run data modify storage temp block_store.state.waterlogged set value "true"
execute if block ~ ~ ~ minecraft:tube_coral[waterlogged=false] run data modify storage temp block_store.state.waterlogged set value "false"
