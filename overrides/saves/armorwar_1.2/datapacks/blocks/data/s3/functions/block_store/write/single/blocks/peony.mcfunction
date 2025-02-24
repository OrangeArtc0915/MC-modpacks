data modify storage temp block_store.id set value "minecraft:peony"
execute if block ~ ~ ~ minecraft:peony[half=upper] run data modify storage temp block_store.state.half set value "upper"
execute if block ~ ~ ~ minecraft:peony[half=lower] run data modify storage temp block_store.state.half set value "lower"
