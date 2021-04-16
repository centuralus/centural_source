tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
tellraw @s ["",{"text":"} ====== ","color":"yellow"},{"text":"UNINSTALLED","color":"red"},{"text":" ====== {","color":"yellow"}]
tellraw @s ["",{"text":"(Safe to Delete Datapack)","color":"gray"}]

kill @e[tag=start_point]
kill @e[tag=end_point]
scoreboard objectives remove vect_x
scoreboard objectives remove vect_y
scoreboard objectives remove vect_z
scoreboard objectives remove commands
scoreboard objectives remove cw_edit
bossbar remove progress
forceload remove 69420 69420