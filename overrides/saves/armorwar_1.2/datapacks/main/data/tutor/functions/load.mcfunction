scoreboard players set @s tutor_timer 0
function psp:self
execute if data storage psp:result self.tutor[0].tellraw run tellraw @s {"nbt":"self.tutor[0].tellraw","interpret":true,"storage":"psp:result"}
execute if data storage psp:result self.tutor[0].title run title @s title {"nbt":"self.tutor[0].title","interpret":true,"storage":"psp:result"}
execute if data storage psp:result self.tutor[0].sound run function tutor:sound