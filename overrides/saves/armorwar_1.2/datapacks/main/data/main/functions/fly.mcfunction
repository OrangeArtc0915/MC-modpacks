effect give @s minecraft:resistance 1 4 true
execute unless data entity @s Inventory[].tag.fly_forw unless data entity @s SelectedItem.id run replaceitem entity @s hotbar.5 carrot_on_a_stick{CustomModelData:8592013,fly_forw:1b,ui:1b,display:{Name:'{"text":"§f移动杆"}',Lore:['{"text":"§b右击前移5格"}']}}
execute if data entity @s SelectedItem.tag{fly_forw:1b} if score @s crc matches 1.. at @s run function main:fly/forw
execute if data entity @s Inventory[{Slot:-106b}].tag{fly_forw:1b} at @s run function main:fly/forw1