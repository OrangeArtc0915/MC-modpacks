execute at @s run playsound minecraft:entity.evoker.cast_spell player @a ~ ~ ~ 4.0 2
scoreboard players operation temp int = @s rigid_id
execute as @e[tag=rigid_link] if score @s rigid_mo = temp int run tag @s add tmp5
execute as @e[tag=tmp5,limit=1] run function rigid:link/actions/torch_out
tag @e remove tmp5