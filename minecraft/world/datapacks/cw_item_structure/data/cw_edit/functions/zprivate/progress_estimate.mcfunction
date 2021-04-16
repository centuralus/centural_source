scoreboard players operation total vect_x = system vect_x
scoreboard players operation total vect_x *= system vect_y
scoreboard players operation total vect_x *= system vect_z

scoreboard players operation max vect_x = limit commands
scoreboard players operation max vect_x /= #50 constant

execute store result bossbar progress max run scoreboard players operation total vect_x /= max vect_x

bossbar set progress visible true
bossbar set progress players @a
scoreboard players set value vect_x 0