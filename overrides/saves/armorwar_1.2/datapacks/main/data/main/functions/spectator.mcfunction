scoreboard players enable @a[gamemode=spectator,tag=!decision_maker] spawn
tag @a[gamemode=spectator,tag=!decision_maker] add cspawn
gamemode adventure @a[gamemode=spectator,scores={spawn=1..},tag=!decision_maker]
tp @a[scores={spawn=1..},tag=!decision_maker] 0 5 0
scoreboard players reset @a[scores={spawn=1..},tag=!decision_maker] hang
tag @a[scores={spawn=1..},tag=!decision_maker] remove cspawn
scoreboard players reset @a[tag=!cspawn,tag=!decision_maker] spawn