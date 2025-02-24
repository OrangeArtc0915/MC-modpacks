clear @s
give @s barrier{display:{Name:"\"§b我选择放弃\"",Lore:["\"§f按F食用\""]},back:true} 1
give @s carrot_on_a_stick{display:{Name:'{"text":"§f返回记录点"}',Lore:['{"text":"§4按右键使用"}']},CustomModelData:-1}
scoreboard players set @s parkour_timer 0
scoreboard players set @s parkour_fail 0
scoreboard players set @s dropbarrier 0
tag @s add parkour
tag @s remove inhall
scoreboard players set @s pkpoint 1