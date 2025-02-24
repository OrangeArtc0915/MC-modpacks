data modify storage temp block_store.id set value "minecraft:tnt"
execute if block ~ ~ ~ minecraft:tnt[unstable=true] run data modify storage temp block_store.state.unstable set value "true"
execute if block ~ ~ ~ minecraft:tnt[unstable=false] run data modify storage temp block_store.state.unstable set value "false"
