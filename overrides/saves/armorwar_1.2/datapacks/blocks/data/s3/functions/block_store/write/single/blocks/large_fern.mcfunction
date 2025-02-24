data modify storage temp block_store.id set value "minecraft:large_fern"
execute if block ~ ~ ~ minecraft:large_fern[half=upper] run data modify storage temp block_store.state.half set value "upper"
execute if block ~ ~ ~ minecraft:large_fern[half=lower] run data modify storage temp block_store.state.half set value "lower"
