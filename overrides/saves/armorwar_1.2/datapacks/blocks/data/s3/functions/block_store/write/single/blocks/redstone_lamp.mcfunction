data modify storage temp block_store.id set value "minecraft:redstone_lamp"
execute if block ~ ~ ~ minecraft:redstone_lamp[lit=true] run data modify storage temp block_store.state.lit set value "true"
execute if block ~ ~ ~ minecraft:redstone_lamp[lit=false] run data modify storage temp block_store.state.lit set value "false"
