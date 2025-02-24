data modify storage temp block_store.id set value "minecraft:horn_coral_fan"
execute if block ~ ~ ~ minecraft:horn_coral_fan[waterlogged=true] run data modify storage temp block_store.state.waterlogged set value "true"
execute if block ~ ~ ~ minecraft:horn_coral_fan[waterlogged=false] run data modify storage temp block_store.state.waterlogged set value "false"
