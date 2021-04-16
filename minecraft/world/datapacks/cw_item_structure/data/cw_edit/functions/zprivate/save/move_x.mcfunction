function cw_edit:zprivate/save/block
scoreboard players remove @s vect_x 1
tp @s ~1 ~ ~
execute if score @s vect_x matches 1.. unless score @s commands >= limit commands run function cw_edit:zprivate/save/move
execute if score @s vect_x matches ..0 unless score @s commands >= limit commands run function cw_edit:zprivate/save/new_x
execute if score @s commands >= limit commands run schedule function cw_edit:zprivate/save/move 1t
execute if score @s commands >= limit commands store result bossbar progress value run scoreboard players add value vect_x 1
execute if score @s commands >= limit commands run scoreboard players set @s commands 0