data modify storage temp block_store.id set value "minecraft:spruce_wall_sign"
execute if block ~ ~ ~ minecraft:spruce_wall_sign[facing=north] run data modify storage temp block_store.state.facing set value "north"
execute if block ~ ~ ~ minecraft:spruce_wall_sign[facing=south] run data modify storage temp block_store.state.facing set value "south"
execute if block ~ ~ ~ minecraft:spruce_wall_sign[facing=west] run data modify storage temp block_store.state.facing set value "west"
execute if block ~ ~ ~ minecraft:spruce_wall_sign[facing=east] run data modify storage temp block_store.state.facing set value "east"
execute if block ~ ~ ~ minecraft:spruce_wall_sign[waterlogged=true] run data modify storage temp block_store.state.waterlogged set value "true"
execute if block ~ ~ ~ minecraft:spruce_wall_sign[waterlogged=false] run data modify storage temp block_store.state.waterlogged set value "false"
