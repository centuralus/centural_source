scoreboard players set @s commands 0
data remove storage minecraft:cw_edit save

data merge storage cw_edit {save:{size:[0,0,0]}}
execute store result storage cw_edit save.size[0] int 1 run scoreboard players get system vect_x
execute store result storage cw_edit save.size[1] int 1 run scoreboard players get system vect_y
execute store result storage cw_edit save.size[2] int 1 run scoreboard players get system vect_z

scoreboard players operation @s vect_x = system vect_x
scoreboard players operation @s vect_y = system vect_y
scoreboard players operation @s vect_z = system vect_z

function cw_edit:zprivate/save/move