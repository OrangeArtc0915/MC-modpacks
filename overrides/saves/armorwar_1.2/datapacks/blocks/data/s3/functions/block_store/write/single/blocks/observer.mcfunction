data modify storage temp block_store.id set value "minecraft:observer"
execute if block ~ ~ ~ minecraft:observer[facing=north] run data modify storage temp block_store.state.facing set value "north"
execute if block ~ ~ ~ minecraft:observer[facing=east] run data modify storage temp block_store.state.facing set value "east"
execute if block ~ ~ ~ minecraft:observer[facing=south] run data modify storage temp block_store.state.facing set value "south"
execute if block ~ ~ ~ minecraft:observer[facing=west] run data modify storage temp block_store.state.facing set value "west"
execute if block ~ ~ ~ minecraft:observer[facing=up] run data modify storage temp block_store.state.facing set value "up"
execute if block ~ ~ ~ minecraft:observer[facing=down] run data modify storage temp block_store.state.facing set value "down"
execute if block ~ ~ ~ minecraft:observer[powered=true] run data modify storage temp block_store.state.powered set value "true"
execute if block ~ ~ ~ minecraft:observer[powered=false] run data modify storage temp block_store.state.powered set value "false"
