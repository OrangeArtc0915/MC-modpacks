execute if data storage temp block_store{state: {"mode": "save"}} run setblock ~ ~ ~ minecraft:structure_block[mode=save]
execute if data storage temp block_store{state: {"mode": "load"}} run setblock ~ ~ ~ minecraft:structure_block[mode=load]
execute if data storage temp block_store{state: {"mode": "corner"}} run setblock ~ ~ ~ minecraft:structure_block[mode=corner]
execute if data storage temp block_store{state: {"mode": "data"}} run setblock ~ ~ ~ minecraft:structure_block[mode=data]
