scoreboard objectives add vect_x dummy
scoreboard objectives add vect_y dummy
scoreboard objectives add vect_z dummy

scoreboard objectives add constant dummy
scoreboard objectives add commands dummy
scoreboard players set limit commands 30000
scoreboard objectives add cw_edit dummy

bossbar add progress {"text":"Progress","color":"green"}

scoreboard players set #50 constant 50
scoreboard players set #-1 constant -1

forceload add 69420 69420
setblock 69420 0 69420 shulker_box
setblock 69420 1 69420 shulker_box
setblock 69420 2 69420 oak_sign

schedule function cw_menu:message 1t
schedule function cw_edit:menu/message 2t