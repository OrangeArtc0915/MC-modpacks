data modify storage temp block_store.id set value "minecraft:dead_brain_coral_wall_fan"
execute if block ~ ~ ~ minecraft:dead_brain_coral_wall_fan[facing=north] run data modify storage temp block_store.state.facing set value "north"
execute if block ~ ~ ~ minecraft:dead_brain_coral_wall_fan[facing=south] run data modify storage temp block_store.state.facing set value "south"
execute if block ~ ~ ~ minecraft:dead_brain_coral_wall_fan[facing=west] run data modify storage temp block_store.state.facing set value "west"
execute if block ~ ~ ~ minecraft:dead_brain_coral_wall_fan[facing=east] run data modify storage temp block_store.state.facing set value "east"
execute if block ~ ~ ~ minecraft:dead_brain_coral_wall_fan[waterlogged=true] run data modify storage temp block_store.state.waterlogged set value "true"
execute if block ~ ~ ~ minecraft:dead_brain_coral_wall_fan[waterlogged=false] run data modify storage temp block_store.state.waterlogged set value "false"
