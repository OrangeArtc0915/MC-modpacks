data modify storage temp block_store.id set value "minecraft:lilac"
execute if block ~ ~ ~ minecraft:lilac[half=upper] run data modify storage temp block_store.state.half set value "upper"
execute if block ~ ~ ~ minecraft:lilac[half=lower] run data modify storage temp block_store.state.half set value "lower"
