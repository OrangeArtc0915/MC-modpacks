data modify storage temp block_store.id set value "minecraft:redstone_torch"
execute if block ~ ~ ~ minecraft:redstone_torch[lit=true] run data modify storage temp block_store.state.lit set value "true"
execute if block ~ ~ ~ minecraft:redstone_torch[lit=false] run data modify storage temp block_store.state.lit set value "false"
