data modify storage temp block_store.id set value "minecraft:dead_brain_coral_fan"
execute if block ~ ~ ~ minecraft:dead_brain_coral_fan[waterlogged=true] run data modify storage temp block_store.state.waterlogged set value "true"
execute if block ~ ~ ~ minecraft:dead_brain_coral_fan[waterlogged=false] run data modify storage temp block_store.state.waterlogged set value "false"
