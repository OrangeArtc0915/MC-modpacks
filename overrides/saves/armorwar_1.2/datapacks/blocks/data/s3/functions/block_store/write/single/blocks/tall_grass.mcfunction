data modify storage temp block_store.id set value "minecraft:tall_grass"
execute if block ~ ~ ~ minecraft:tall_grass[half=upper] run data modify storage temp block_store.state.half set value "upper"
execute if block ~ ~ ~ minecraft:tall_grass[half=lower] run data modify storage temp block_store.state.half set value "lower"
