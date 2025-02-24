data modify storage temp block_store.id set value "minecraft:bubble_coral"
execute if block ~ ~ ~ minecraft:bubble_coral[waterlogged=true] run data modify storage temp block_store.state.waterlogged set value "true"
execute if block ~ ~ ~ minecraft:bubble_coral[waterlogged=false] run data modify storage temp block_store.state.waterlogged set value "false"
