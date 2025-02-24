execute store result score temp int run data get storage psp:result self.tutor[0].sound
execute if score temp int matches 0 at @s run playsound minecraft:block.lever.click player @s ~ ~ ~ 1 2
execute if score temp int matches 1 at @s run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2
execute if score temp int matches 2 at @s run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 2
execute if score temp int matches 3 at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 2
execute if score temp int matches 4 at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~