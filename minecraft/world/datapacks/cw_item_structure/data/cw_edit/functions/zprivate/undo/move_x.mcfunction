function cw_edit:zprivate/undo/block
scoreboard players remove @s vect_x 1
tp @s ~1 ~ ~
execute if score @s vect_x matches 1.. unless score @s commands >= limit commands run function cw_edit:zprivate/undo/move
execute if score @s vect_x matches ..0 unless score @s commands >= limit commands run function cw_edit:zprivate/undo/new_x
execute if score @s commands >= limit commands run schedule function cw_edit:zprivate/undo/move 1t
execute if score @s commands >= limit commands store result bossbar progress value run scoreboard players add value vect_x 1
execute if score @s commands >= limit commands run scoreboard players set @s commands 0