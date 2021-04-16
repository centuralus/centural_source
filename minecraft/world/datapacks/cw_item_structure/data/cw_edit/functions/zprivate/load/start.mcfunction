scoreboard players set @s commands 0

execute store result score system vect_x run data get storage cw_edit load.size[0]
execute store result score system vect_y run data get storage cw_edit load.size[1]
execute store result score system vect_z run data get storage cw_edit load.size[2]

scoreboard players operation @s vect_x = system vect_x
scoreboard players operation @s vect_y = system vect_y
scoreboard players operation @s vect_z = system vect_z

function cw_edit:zprivate/load/move