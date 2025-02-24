execute as @e[tag=rigid] run function rigid:main
execute as @e[tag=rigid_body] run function rigid:rigid_body
execute if score rigid_display int matches 1 as @e[tag=rigid] run function rigid:test
execute as @e[tag=soldier,tag=!hero] run function play:test1