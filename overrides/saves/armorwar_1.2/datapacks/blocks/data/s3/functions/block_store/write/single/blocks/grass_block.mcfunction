data modify storage temp block_store.id set value "minecraft:grass_block"
execute if block ~ ~ ~ minecraft:grass_block[snowy=true] run data modify storage temp block_store.state.snowy set value "true"
execute if block ~ ~ ~ minecraft:grass_block[snowy=false] run data modify storage temp block_store.state.snowy set value "false"
