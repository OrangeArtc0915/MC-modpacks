execute unless entity @a[tag=treeing] unless score grow int matches 1 run function tree:end

execute as @a[tag=treeing] run function tree:gui

execute as @e[tag=chal_su] run function tree:chal/main

execute if score grow int matches 1 run function tree:grow
execute if entity @e[tag=tree_block] run function tree:setblock/tick