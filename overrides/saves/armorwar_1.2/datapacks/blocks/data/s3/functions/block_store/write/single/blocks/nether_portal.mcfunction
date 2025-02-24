data modify storage temp block_store.id set value "minecraft:nether_portal"
execute if block ~ ~ ~ minecraft:nether_portal[axis=x] run data modify storage temp block_store.state.axis set value "x"
execute if block ~ ~ ~ minecraft:nether_portal[axis=z] run data modify storage temp block_store.state.axis set value "z"
