function psp:self
execute if data storage psp:result self.tutor[0].actionbar run title @s actionbar {"nbt":"self.tutor[0].actionbar","interpret":true,"storage":"psp:result"}
execute if data storage psp:result self.tutor[0].req[0] run function tutor:reqs
execute unless data storage psp:result self.tutor[0].req[0] run function tutor:next
function psp:store_self