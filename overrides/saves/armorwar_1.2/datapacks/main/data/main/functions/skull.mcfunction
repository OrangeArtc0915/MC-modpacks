function psp:mark

#获取头颅和id字符串
function psp:self
setblock 0 11 0 air
setblock 0 11 0 chest
loot insert 0 11 0 loot minecraft:entities/player1
data modify storage psp:result self.name set from block 0 11 0 Items[0].tag.SkullOwner.Name
data modify storage psp:result self.skull set from block 0 11 0 Items[0]
data remove storage psp:result self.skull.Slot
function psp:store_self
scoreboard players set @s skull 1