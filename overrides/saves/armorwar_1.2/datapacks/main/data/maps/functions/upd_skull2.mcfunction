setblock -28 60 77 minecraft:player_head[rotation=1]
function psp:self
data modify block -28 60 77 SkullOwner set value {}
data modify block -28 60 77 {} merge from storage psp:result self.skull.tag
setblock 0 11 0 air
setblock 0 11 0 oak_sign{Text1:'[{"text":"决策者:"},{"nbt":"self.name","storage":"psp:result"}]'}
data modify entity @e[tag=map_skull,limit=1] CustomName set from block 0 11 0 Text1