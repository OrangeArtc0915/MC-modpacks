data modify block 0 0 0 Items[0].tag.playing.waves prepend value {mob_types:[{time:150}],time:1}
function psp:self
data modify storage psp:result self.tutor set from block 0 0 0 Items[0].tag.tutor1
function psp:store_self
scoreboard players set @s tutor 1
function tutor:load