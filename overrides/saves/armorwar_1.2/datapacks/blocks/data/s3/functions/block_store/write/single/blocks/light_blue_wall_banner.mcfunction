data modify storage temp block_store.id set value "minecraft:light_blue_wall_banner"
execute if block ~ ~ ~ minecraft:light_blue_wall_banner[facing=north] run data modify storage temp block_store.state.facing set value "north"
execute if block ~ ~ ~ minecraft:light_blue_wall_banner[facing=south] run data modify storage temp block_store.state.facing set value "south"
execute if block ~ ~ ~ minecraft:light_blue_wall_banner[facing=west] run data modify storage temp block_store.state.facing set value "west"
execute if block ~ ~ ~ minecraft:light_blue_wall_banner[facing=east] run data modify storage temp block_store.state.facing set value "east"
