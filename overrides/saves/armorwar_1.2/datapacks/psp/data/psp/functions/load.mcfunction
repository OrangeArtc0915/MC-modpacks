execute unless data storage psp:all 0 run data modify storage psp:all 0 set value [{}]
execute unless data storage psp:all 1 run data modify storage psp:all 1 set value []
execute unless data storage psp:all 2 run data modify storage psp:all 2 set value []
execute unless data storage psp:all 3 run data modify storage psp:all 3 set value []
execute unless data storage psp:all 4 run data modify storage psp:all 4 set value []
execute unless data storage psp:all 5 run data modify storage psp:all 5 set value []
execute unless data storage psp:all 6 run data modify storage psp:all 6 set value []
execute unless data storage psp:all 7 run data modify storage psp:all 7 set value []
execute unless data storage psp:all 8 run data modify storage psp:all 8 set value []
execute unless data storage psp:all 9 run data modify storage psp:all 9 set value []
scoreboard objectives add psp_main dummy
scoreboard objectives add psp_id dummy
scoreboard objectives add psp_id0 dummy
scoreboard objectives add psp_id1 dummy
scoreboard players set 10 psp_main 10