data modify storage temp block_store.id set value "minecraft:redstone_ore"
execute if block ~ ~ ~ minecraft:redstone_ore[lit=true] run data modify storage temp block_store.state.lit set value "true"
execute if block ~ ~ ~ minecraft:redstone_ore[lit=false] run data modify storage temp block_store.state.lit set value "false"
