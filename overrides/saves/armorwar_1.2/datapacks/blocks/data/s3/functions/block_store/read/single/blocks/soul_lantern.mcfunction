execute if data storage temp block_store{state: {"hanging": "true", "waterlogged": "true"}} run setblock ~ ~ ~ minecraft:soul_lantern[hanging=true,waterlogged=true]
execute if data storage temp block_store{state: {"hanging": "true", "waterlogged": "false"}} run setblock ~ ~ ~ minecraft:soul_lantern[hanging=true,waterlogged=false]
execute if data storage temp block_store{state: {"hanging": "false", "waterlogged": "true"}} run setblock ~ ~ ~ minecraft:soul_lantern[hanging=false,waterlogged=true]
execute if data storage temp block_store{state: {"hanging": "false", "waterlogged": "false"}} run setblock ~ ~ ~ minecraft:soul_lantern[hanging=false,waterlogged=false]
