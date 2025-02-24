data modify storage temp block_store.id set value "minecraft:conduit"
execute if block ~ ~ ~ minecraft:conduit[waterlogged=true] run data modify storage temp block_store.state.waterlogged set value "true"
execute if block ~ ~ ~ minecraft:conduit[waterlogged=false] run data modify storage temp block_store.state.waterlogged set value "false"
