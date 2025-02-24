execute if score gaming int matches 1 if score wave int matches 0 run replaceitem entity @s weapon.offhand carrot_on_a_stick{CustomModelData:8800001,ui:1b,display:{Name:'{"text":"§c下一波"}'},item:next_wave}
function psp:self
execute store result score temp7 int run data get storage psp:result self.tutor[0].type
data remove storage psp:result self.tutor[0]
function psp:store_self

function psp:self
execute if data storage psp:result self.tutor[0] run function tutor:load
execute unless data storage psp:result self.tutor[0] run function tutor:end