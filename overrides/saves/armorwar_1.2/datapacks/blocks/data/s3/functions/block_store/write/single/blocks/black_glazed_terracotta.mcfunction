data modify storage temp block_store.id set value "minecraft:black_glazed_terracotta"
execute if block ~ ~ ~ minecraft:black_glazed_terracotta[facing=north] run data modify storage temp block_store.state.facing set value "north"
execute if block ~ ~ ~ minecraft:black_glazed_terracotta[facing=south] run data modify storage temp block_store.state.facing set value "south"
execute if block ~ ~ ~ minecraft:black_glazed_terracotta[facing=west] run data modify storage temp block_store.state.facing set value "west"
execute if block ~ ~ ~ minecraft:black_glazed_terracotta[facing=east] run data modify storage temp block_store.state.facing set value "east"
