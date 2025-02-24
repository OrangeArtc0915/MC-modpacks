execute if score @s hr matches 1 if data entity @s SelectedItem.tag{skill:"damage_return"} run function play:hr/skills/damage_return
execute if score @s hr matches 1 if data entity @s SelectedItem.tag{skill:"attack_times"} run function play:hr/skills/attack_times
execute if score @s hr matches 1 if data entity @s SelectedItem.tag{skill:"soldiers_summon3"} at @s rotated ~ 0.0 positioned ^ ^ ^5.0 run function play:hr/skills/soldiers_summon3

execute if score @s hr matches 2 if data entity @s SelectedItem.tag{skill:"small_vein"} run function play:hr/skills/small_vein
execute if score @s hr matches 2 if data entity @s SelectedItem.tag{skill:"poison_fog"} run function play:hr/skills/poison_fog
execute if score @s hr matches 2 if data entity @s SelectedItem.tag{skill:"golem_summon"} at @s rotated ~ 0.0 positioned ^ ^ ^5.0 run function play:hr/skills/golem_summon