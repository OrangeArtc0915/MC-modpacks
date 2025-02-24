function psp:self
data modify storage psp:result self.tutor set from block 0 0 0 Items[0].tag.tutor0
function psp:store_self
scoreboard players set @s tutor 1
scoreboard players set @s tutor0 2
function tutor:load