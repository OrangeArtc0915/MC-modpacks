scoreboard players operation temp int = @s mpar_id
execute as @e[tag=button_set] if score @s mpar_id = temp int run kill @s
tag @e remove rbutton
tag @s add rbutton
tag @a remove cbutton
tag @p add cbutton
playsound minecraft:block.lever.click player @a ~ ~ ~ 1 1.5
data modify block 0 252 0 Command set value ""
data modify block 0 252 0 Command set from entity @s Item.tag.run_command
setblock 0 253 0 redstone_block
setblock 0 253 0 air
data modify block 0 254 0 Command set value ""
data modify block 0 254 0 Command set value "tag @a remove cbutton"
tag @s add sbutton1
tag @s remove sbutton
scoreboard players set @s mpar_tick 0
tp @e[tag=tmp2,tag=mpar_choice] 0.0 -1000.0 0.0